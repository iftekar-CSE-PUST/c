-- =====================================================
-- Supabase Storage Bucket Creation Guide
-- Note: Storage buckets are best created from the UI.
-- But you can try the following if needed.
-- =====================================================

-- Method 1: Recommended (Use Supabase Dashboard)
-- Go to: Storage → Create a new bucket
-- Bucket name: student-photos
-- Make it Public: ON
-- Allowed MIME types: image/*

-- Method 2: Using SQL (May not work in all projects)
-- Run this in SQL Editor:

-- Create bucket (if your project allows it)
INSERT INTO storage.buckets (id, name, public, file_size_limit, allowed_mime_types)
VALUES 
('student-photos', 'student-photos', true, 5242880, ARRAY['image/jpeg', 'image/png', 'image/webp', 'image/gif'])
ON CONFLICT (id) DO NOTHING;

-- Set public access policy (important)
CREATE POLICY "Public Access to student-photos"
ON storage.objects FOR SELECT
USING (bucket_id = 'student-photos');

CREATE POLICY "Authenticated users can upload to student-photos"
ON storage.objects FOR INSERT
WITH CHECK (bucket_id = 'student-photos');

CREATE POLICY "Authenticated users can update their uploads"
ON storage.objects FOR UPDATE
USING (bucket_id = 'student-photos');

CREATE POLICY "Authenticated users can delete their uploads"
ON storage.objects FOR DELETE
USING (bucket_id = 'student-photos');

-- Success message
SELECT 'Storage bucket "student-photos" setup instructions provided.' AS status;