-- =====================================================
-- Krishok Bazar - Supabase Schema Initialization
-- Run this in Supabase SQL Editor (or via migrations)
-- Date: 2026-06-04
-- =====================================================

-- Enable necessary extensions
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- =====================================================
-- PRODUCTS TABLE
-- =====================================================
CREATE TABLE IF NOT EXISTS public.products (
    id BIGINT PRIMARY KEY,
    name TEXT NOT NULL,
    category TEXT NOT NULL CHECK (category IN ('Pesticides', 'Seeds', 'Fertilizer')),
    price NUMERIC(10,2) NOT NULL DEFAULT 0,
    old_price NUMERIC(10,2) DEFAULT 0,
    unit TEXT DEFAULT '',
    rating NUMERIC(2,1) DEFAULT 0 CHECK (rating >= 0 AND rating <= 5),
    stock INTEGER DEFAULT 0,
    image TEXT DEFAULT '',
    description TEXT DEFAULT '',
    updated_at TIMESTAMPTZ DEFAULT NOW()
);

-- Index for faster category filtering
CREATE INDEX IF NOT EXISTS idx_products_category ON public.products(category);
CREATE INDEX IF NOT EXISTS idx_products_stock ON public.products(stock);

-- =====================================================
-- ORDERS TABLE
-- =====================================================
CREATE TABLE IF NOT EXISTS public.orders (
    order_id TEXT PRIMARY KEY,                    -- e.g. 'ORD-123456'
    user_id TEXT NOT NULL,                        -- auth.uid() as text or 'guest'
    customer_name TEXT NOT NULL,
    customer_phone TEXT NOT NULL,
    customer_address TEXT NOT NULL,
    customer_district TEXT NOT NULL,
    customer_note TEXT DEFAULT '',
    items JSONB NOT NULL DEFAULT '[]',            -- array of {id, name, price, quantity, ...}
    subtotal NUMERIC(12,2) NOT NULL DEFAULT 0,
    delivery_charge NUMERIC(10,2) DEFAULT 0,
    total NUMERIC(12,2) NOT NULL DEFAULT 0,
    payment_method TEXT NOT NULL CHECK (payment_method IN ('cod', 'bkash', 'nagad')),
    transaction_id TEXT DEFAULT NULL,
    status TEXT NOT NULL DEFAULT 'Pending' CHECK (status IN ('Pending', 'Processing', 'Shipped', 'Delivered', 'Cancelled', 'Deleted')),
    estimated_delivery TIMESTAMPTZ,
    created_at TIMESTAMPTZ DEFAULT NOW()
);

-- Indexes for queries
CREATE INDEX IF NOT EXISTS idx_orders_user_id ON public.orders(user_id);
CREATE INDEX IF NOT EXISTS idx_orders_status ON public.orders(status);
CREATE INDEX IF NOT EXISTS idx_orders_created_at ON public.orders(created_at DESC);

-- =====================================================
-- USERS / PROFILES TABLE (linked to Supabase Auth)
-- =====================================================
CREATE TABLE IF NOT EXISTS public.users (
    id BIGSERIAL PRIMARY KEY,
    auth_id UUID UNIQUE REFERENCES auth.users(id) ON DELETE CASCADE,
    name TEXT NOT NULL,
    email TEXT NOT NULL UNIQUE,
    registered_at TIMESTAMPTZ DEFAULT NOW(),
    role TEXT DEFAULT 'user' CHECK (role IN ('user', 'admin'))  -- Optional: for future role-based access
);

-- Index
CREATE INDEX IF NOT EXISTS idx_users_auth_id ON public.users(auth_id);
CREATE INDEX IF NOT EXISTS idx_users_email ON public.users(email);

-- =====================================================
-- Optional: Trigger to auto-create profile on signup (recommended)
-- =====================================================
CREATE OR REPLACE FUNCTION public.handle_new_user()
RETURNS TRIGGER AS $$
BEGIN
  INSERT INTO public.users (auth_id, name, email, registered_at)
  VALUES (
    NEW.id,
    COALESCE(NEW.raw_user_meta_data->>'name', split_part(NEW.email, '@', 1)),
    NEW.email,
    NOW()
  )
  ON CONFLICT (auth_id) DO NOTHING;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

-- Drop trigger if exists, then create
DROP TRIGGER IF EXISTS on_auth_user_created ON auth.users;
CREATE TRIGGER on_auth_user_created
  AFTER INSERT ON auth.users
  FOR EACH ROW EXECUTE FUNCTION public.handle_new_user();

-- =====================================================
-- COMMENTS (for documentation)
-- =====================================================
COMMENT ON TABLE public.products IS 'Products catalog - public readable';
COMMENT ON TABLE public.orders IS 'Customer orders - users see own, admins see all';
COMMENT ON TABLE public.users IS 'User profiles linked to Supabase Auth';

-- Done with schema. Next: run 002_rls_policies.sql for security.