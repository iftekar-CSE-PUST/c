-- =====================================================
-- Krishok Bazar - Supabase Storage Policies
-- For 'product-images' bucket
-- Run this in Supabase SQL Editor after creating the bucket
-- =====================================================

-- First, make sure the bucket exists (run this if not created via dashboard)
-- INSERT INTO storage.buckets (id, name, public) 
-- VALUES ('product-images', 'product-images', true)
-- ON CONFLICT (id) DO NOTHING;

-- Enable RLS on storage (usually on by default)
-- ALTER TABLE storage.objects ENABLE ROW LEVEL SECURITY;

-- =====================================================
-- STORAGE POLICIES FOR product-images
-- =====================================================

-- 1. Public read access to images (anyone can see product photos)
CREATE POLICY "Public read access to product images"
  ON storage.objects
  FOR SELECT
  USING (bucket_id = 'product-images');

-- 2. Authenticated users can upload images (for admin product form)
CREATE POLICY "Authenticated users can upload product images"
  ON storage.objects
  FOR INSERT
  TO authenticated
  WITH CHECK (
    bucket_id = 'product-images'
    AND (storage.foldername(name))[1] = 'products'  -- optional: force folder
  );

-- 3. Users can update their own uploaded images (if needed)
CREATE POLICY "Users can update own product images"
  ON storage.objects
  FOR UPDATE
  TO authenticated
  USING (
    bucket_id = 'product-images' 
    AND owner = auth.uid()
  );

-- 4. Users can delete their own images
CREATE POLICY "Users can delete own product images"
  ON storage.objects
  FOR DELETE
  TO authenticated
  USING (
    bucket_id = 'product-images' 
    AND owner = auth.uid()
  );

-- 5. (Optional) Admin-only upload (more secure)
-- Uncomment if you set up the is_admin() function from 002_rls_policies.sql
-- CREATE POLICY "Only admins can upload product images"
--   ON storage.objects
--   FOR INSERT
--   TO authenticated
--   WITH CHECK (
--     bucket_id = 'product-images' 
--     AND public.is_admin()
--   );

-- =====================================================
-- Additional Security Tips
-- =====================================================
-- - Set bucket to public for images (needed for <img src>)
-- - Use Supabase Storage in the admin form (already in code)
-- - Limit file types/sizes in bucket settings (Dashboard > Storage > product-images > Settings)
--   Recommended: max 5MB, allowed MIME: image/jpeg, image/png, image/webp

-- After running these, test:
-- - Guest/anon should see images
-- - Authenticated (non-admin) should be able to upload if using the simple policy
-- - In production, switch to admin-only upload policy

SELECT 'Storage policies for product-images applied successfully.' AS status;