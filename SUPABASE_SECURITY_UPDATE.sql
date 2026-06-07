-- ═══════════════════════════════════════════════════════
-- SECURITY UPDATE — Run this in Supabase SQL Editor
-- CSE 17th Batch | PUST
-- ═══════════════════════════════════════════════════════

-- 1. Add site_login_username column to site_settings
ALTER TABLE site_settings
  ADD COLUMN IF NOT EXISTS site_login_username TEXT DEFAULT 'cse17';

-- 2. Update existing row with username
UPDATE site_settings SET site_login_username = 'cse17' WHERE id = 1;

-- 3. Make sure site_login_password exists with default
UPDATE site_settings SET site_login_password = 'prime17' WHERE id = 1 AND site_login_password IS NULL;

-- 4. Verify your tables have RLS enabled (re-run safely)
ALTER TABLE students      ENABLE ROW LEVEL SECURITY;
ALTER TABLE timeline      ENABLE ROW LEVEL SECURITY;
ALTER TABLE announcements ENABLE ROW LEVEL SECURITY;
ALTER TABLE site_settings ENABLE ROW LEVEL SECURITY;

-- 5. Drop old policies if exist, recreate cleanly
DROP POLICY IF EXISTS "Public read students"  ON students;
DROP POLICY IF EXISTS "Auth insert students"  ON students;
DROP POLICY IF EXISTS "Auth update students"  ON students;
DROP POLICY IF EXISTS "Auth delete students"  ON students;
DROP POLICY IF EXISTS "Public read timeline"  ON timeline;
DROP POLICY IF EXISTS "Auth manage timeline"  ON timeline;
DROP POLICY IF EXISTS "Public read announcements" ON announcements;
DROP POLICY IF EXISTS "Auth manage announcements" ON announcements;
DROP POLICY IF EXISTS "Public read settings"  ON site_settings;
DROP POLICY IF EXISTS "Auth manage settings"  ON site_settings;

-- 6. Recreate RLS policies
CREATE POLICY "Public read students"  ON students FOR SELECT USING (true);
CREATE POLICY "Auth insert students"  ON students FOR INSERT WITH CHECK (true);
CREATE POLICY "Auth update students"  ON students FOR UPDATE USING (true);
CREATE POLICY "Auth delete students"  ON students FOR DELETE USING (true);

CREATE POLICY "Public read timeline"  ON timeline FOR SELECT USING (true);
CREATE POLICY "Auth manage timeline"  ON timeline FOR ALL   USING (true);

CREATE POLICY "Public read announcements" ON announcements FOR SELECT USING (true);
CREATE POLICY "Auth manage announcements" ON announcements FOR ALL   USING (true);

CREATE POLICY "Public read settings"  ON site_settings FOR SELECT USING (true);
CREATE POLICY "Auth manage settings"  ON site_settings FOR ALL   USING (true);

-- 7. Confirm current settings
SELECT id, site_login_username, site_login_password, session, contact_phone, contact_email
FROM site_settings WHERE id = 1;
