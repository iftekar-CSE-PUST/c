-- ═══════════════════════════════════════════════════════
-- ENABLE REALTIME for all tables
-- Run this in Supabase SQL Editor
-- ═══════════════════════════════════════════════════════

-- Enable realtime on all 5 tables
ALTER PUBLICATION supabase_realtime ADD TABLE students;
ALTER PUBLICATION supabase_realtime ADD TABLE timeline;
ALTER PUBLICATION supabase_realtime ADD TABLE announcements;
ALTER PUBLICATION supabase_realtime ADD TABLE site_settings;
ALTER PUBLICATION supabase_realtime ADD TABLE orders;

-- Add site_login_username if not exists
ALTER TABLE site_settings
  ADD COLUMN IF NOT EXISTS site_login_username TEXT DEFAULT 'cse17';

UPDATE site_settings 
SET site_login_username = 'cse17' 
WHERE id = 1 AND (site_login_username IS NULL OR site_login_username = '');

-- Verify realtime is enabled
SELECT schemaname, tablename 
FROM pg_publication_tables 
WHERE pubname = 'supabase_realtime';
