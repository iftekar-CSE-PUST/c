-- =====================================================
-- Krishok Bazar - RLS Policies (FIXED for type mismatch)
-- ERROR FIXED: "operator does not exist: text = uuid"
-- Root cause: auth_id column in users table is TEXT, but auth.uid() is UUID
-- Solution: Always cast auth.uid()::text
-- =====================================================

-- STEP 0: FULL CLEANUP (Run this first!)
DO $$
DECLARE
    r RECORD;
BEGIN
    FOR r IN 
        SELECT policyname, tablename 
        FROM pg_policies 
        WHERE schemaname = 'public' 
          AND tablename IN ('products', 'orders', 'users')
    LOOP
        EXECUTE format('DROP POLICY IF EXISTS %I ON public.%I', r.policyname, r.tablename);
        RAISE NOTICE 'Dropped policy: % on %', r.policyname, r.tablename;
    END LOOP;

    DROP FUNCTION IF EXISTS public.is_admin();
    RAISE NOTICE 'Full cleanup completed';
END $$;

-- =====================================================
-- STEP 1: Ensure users table has correct column type (TEXT is safer here)
-- =====================================================
-- If the column is currently UUID, this will convert it safely
ALTER TABLE public.users 
ALTER COLUMN auth_id TYPE TEXT USING auth_id::text;

-- Add role column if missing
ALTER TABLE public.users 
ADD COLUMN IF NOT EXISTS role TEXT DEFAULT 'user' 
CHECK (role IN ('user', 'admin'));

-- =====================================================
-- STEP 2: Create is_admin() function (with proper cast)
-- =====================================================
CREATE OR REPLACE FUNCTION public.is_admin()
RETURNS BOOLEAN 
LANGUAGE sql 
SECURITY DEFINER
STABLE
AS $$
  SELECT EXISTS (
    SELECT 1 
    FROM public.users 
    WHERE auth_id = auth.uid()::text   -- FIXED: cast to text
      AND role = 'admin'
  );
$$;

GRANT EXECUTE ON FUNCTION public.is_admin() TO authenticated;

-- =====================================================
-- STEP 3: Enable RLS
-- =====================================================
ALTER TABLE public.products ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.orders ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.users ENABLE ROW LEVEL SECURITY;

-- =====================================================
-- STEP 4: PRODUCTS POLICIES
-- =====================================================

CREATE POLICY "products_public_read"
  ON public.products
  FOR SELECT
  USING (true);

CREATE POLICY "products_authenticated_write"
  ON public.products
  FOR ALL
  TO authenticated
  USING (true)
  WITH CHECK (true);

-- =====================================================
-- STEP 5: ORDERS POLICIES (all use ::text)
-- =====================================================

CREATE POLICY "orders_own_read"
  ON public.orders
  FOR SELECT
  TO authenticated
  USING (user_id = auth.uid()::text);

CREATE POLICY "orders_own_insert"
  ON public.orders
  FOR INSERT
  TO authenticated
  WITH CHECK (user_id = auth.uid()::text);

CREATE POLICY "orders_own_cancel"
  ON public.orders
  FOR UPDATE
  TO authenticated
  USING (
    user_id = auth.uid()::text 
    AND status IN ('Pending', 'Processing')
  )
  WITH CHECK (
    user_id = auth.uid()::text 
    AND status = 'Cancelled'
  );

CREATE POLICY "orders_admin_read_all"
  ON public.orders
  FOR SELECT
  TO authenticated
  USING (public.is_admin());

CREATE POLICY "orders_admin_update"
  ON public.orders
  FOR UPDATE
  TO authenticated
  USING (public.is_admin())
  WITH CHECK (public.is_admin());

-- =====================================================
-- STEP 6: USERS POLICIES (fixed casts)
-- =====================================================

CREATE POLICY "users_own_read"
  ON public.users
  FOR SELECT
  TO authenticated
  USING (auth_id = auth.uid()::text);

CREATE POLICY "users_own_update"
  ON public.users
  FOR UPDATE
  TO authenticated
  USING (auth_id = auth.uid()::text)
  WITH CHECK (auth_id = auth.uid()::text);

CREATE POLICY "users_admin_read_all"
  ON public.users
  FOR SELECT
  TO authenticated
  USING (public.is_admin());

-- =====================================================
-- STEP 7: Make yourself admin
-- =====================================================
-- IMPORTANT: Replace with your real email
UPDATE public.users 
SET role = 'admin' 
WHERE email = 'your-actual-admin-email@gmail.com';

-- =====================================================
-- VERIFICATION (Run these after)
-- =====================================================

-- 1. Check RLS is on
SELECT tablename, rowsecurity 
FROM pg_tables 
WHERE schemaname = 'public' 
  AND tablename IN ('products', 'orders', 'users');

-- 2. List all policies
SELECT tablename, policyname, cmd 
FROM pg_policies 
WHERE schemaname = 'public' 
ORDER BY tablename, policyname;

-- 3. Test if you are admin (run this while logged in with the admin email)
SELECT public.is_admin() AS you_are_admin;

-- 4. Check column type of auth_id
SELECT column_name, data_type 
FROM information_schema.columns 
WHERE table_schema = 'public' 
  AND table_name = 'users' 
  AND column_name = 'auth_id';

-- =====================================================
-- IF STILL FAILS
-- =====================================================
-- 1. Run STEP 0 (cleanup) again
-- 2. Make sure you have run 001_init_schema.sql at least once
-- 3. Paste the NEW exact error message here
-- 4. Common: Make sure the email in STEP 7 matches a real user who has signed up

-- Your database should now be secure!