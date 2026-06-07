-- ============================================
-- CSE 17th Batch PUST - Complete Supabase Setup
-- Run this entire script in Supabase SQL Editor
-- ============================================

-- 1. Create Tables
DROP TABLE IF EXISTS students CASCADE;
DROP TABLE IF EXISTS timeline CASCADE;
DROP TABLE IF EXISTS site_settings CASCADE;

CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    student_id TEXT NOT NULL,
    current_address TEXT,
    permanent_address TEXT,
    phone TEXT,
    facebook TEXT,
    email TEXT,
    blood_group TEXT,
    photo TEXT
);

CREATE TABLE timeline (
    id SERIAL PRIMARY KEY,
    year TEXT NOT NULL,
    title TEXT NOT NULL,
    description TEXT
);

CREATE TABLE site_settings (
    id SERIAL PRIMARY KEY,
    announcement_image TEXT,
    session_year TEXT,
    hero_total_students INTEGER
);

-- 2. Insert Default Site Settings
INSERT INTO site_settings (id, announcement_image, session_year, hero_total_students) 
VALUES (1, 'https://i.ibb.co.com/p6dpLxSG/IMG-3954.jpg', '2024-2025', 36);

-- 3. Insert Timeline Events (Original)
INSERT INTO timeline (year, title, description) VALUES
('2025, 11th AUGUST', 'Admission & Beginning', 'The journey begins with admission into PUST CSE Department. Fresh minds ready to explore the world of technology.'),
('2025, 26th NOVEMBER', 'First Semester Classes End', 'Exploring fundamental concepts in programming, mathematics, and computer science. Building the base for future specialization.'),
('2026, 6th JANUARY', 'First Semester Final Exams', 'First Semester Final Examination commencement from 6th January, 2026.'),
('2026, 14th FEBRUARY', 'Second Semester Class Starts', 'Second semester class starts with new topics from 14th February, 2026.');

-- 4. Insert All Students (Decoded from original website)
INSERT INTO students (name, student_id, current_address, permanent_address, phone, facebook, email, blood_group, photo) VALUES
('Akhi Aktar Mim', '250101', 'Mujahid Club, Pabna', 'Mujahid Club, Pabna', '01612-036386', 'https://www.facebook.com/share/1CyTKKR7tL/', 'mimakhiaaktar8@gmail.com', 'B+', 'https://i.ibb.co.com/v43BzypnP/IMG-3548.jpg'),
('Md. Nasir Uddin Nafiz', '250103', 'Mohishar Dipo, Pabna', 'Shariakand, Bogura', '01723-541919', 'https://www.facebook.com/share/17iXMSgbvs/', 'nasiruddin.nfz21@gmail.com', 'A+', 'https://i.ibb.co.com/YFgFt3Bd/att-8c4v4vex97gc0-TXUg-KKUc-U7-YTa-k-MN-Kj-B27-Oa-Fk.jpg'),
('Amit Kumar Dhali', '250104', 'July-6 Hall, PUST', 'Paikgacha, Khulna', '01533-878836', 'https://www.facebook.com/amitdhali.dhali.53', 'amitdhali1002@gmail.com', 'B+', 'https://i.ibb.co.com/B5gV5VXV/IMG-6024.jpg'),
('Md. Shafayat Ahmed', '250105', 'Monsurabad, Pabna', 'Niamatpur, Naogaon', '01559-704798', 'https://www.facebook.com/share/1HJih8u9DS/', 'ahmedshafayat959@gmail.com', 'O+', 'https://i.ibb.co.com/JRdDJvDZr/IMG-3583.jpg'),
('Toufiqul Al Imran', '250106', 'Mahtab Tower, Pabna', 'Mohadevpur, Naogaon', '01721-798790', 'https://www.facebook.com/toufiqulalimran548', 'toufiqulalimran01@gmail.com', 'B+', 'https://i.ibb.co.com/9k1WNbfg/IMG-3556.jpg'),
('Apurba Kumar', '250107', 'Radhanagar, Pabna', 'Ranirnagar, Naogaon', '01771-076379', 'https://www.facebook.com/share/1BYvu47bW7/', 'apurbackumar340@gmail.com', 'O+', 'https://i.ibb.co.com/5hTg980G/a975a75e-d467-4b93-bfd1-3ab43bb0dad5.jpg'),
('MD. MUHIBUR RAHMAN BHUIYAN', '250108', 'Mujahid Club, Pabna', 'Dhaka', '01929-354030', 'https://www.facebook.com/md.antik.213468', 'muhibur1109@gmail.com', 'B+', 'https://i.ibb.co.com/934Ljpbc/IMG-3568.jpg'),
('Md. Faruk Hossain', '250109', 'July-6 Hall, PUST', 'Birampur, Dinajpur', '01516-595496', 'https://www.facebook.com/profile.php?id=100057254032930', 'faruk1572005@gmail.com', 'O+', 'https://i.ibb.co.com/LzFVswGwy/att-TQq-VL-nu-Cxb-G9-WAq-ETQ-Ld2uxr2-D9yv-Hp-KQ-Yh-VH8g.jpg'),
('Upama Saha', '250110', 'Monsurabad, Pabna', 'Tangail', '01327-221457', 'https://www.facebook.com/share/16kouSyzwK/', 'uparnasaha0@gmail.com', 'B+', 'https://i.ibb.co.com/jZgKZd76/att-f-ZDh-Nb-4-RDz1-F5-KBv43zl108bm-ABn-k-KRnq-W-tu-YCDc.jpg'),
('Md. Mahfil Akter', '250111', 'Mohishar Dipo, Pabna', 'Naogaon', '01716-175554', 'https://www.facebook.com/share/1HtVvXPhgA/', 'mdmahfilakter@gmail.com', 'B+', 'https://i.ibb.co.com/3mFNptF3/IMG-3540.jpg'),
('Md. Asadullah Atik', '250112', 'Talbagaan, Pabna', 'Dinajpur', '01874-175415', 'https://www.facebook.com/realasadullahatik', 'atikcsepust@gmail.com', 'O+', 'https://i.ibb.co.com/zTd6k6Zj/IMG-3563.jpg'),
('Avijit Biswas', '250113', 'Meril Bypass, Pabna', 'Jashore', '01902-340202', 'https://www.facebook.com/ovi.jit.3950', 'avijit90321jsr@gmail.com', 'B+', 'https://i.ibb.co.com/ycf5FtD3/a92c1e46-c270-47b2-82e7-4c9b4e81b370.jpg'),
('Mst. Sumaiya Islam', '250114', 'Rajapur, Pabna', 'Gazipur Sadar, Gazipur', '01924-446588', 'https://www.facebook.com/sumaiya.islam.272223', 'mst.sumaiyaislam424@gmail.com', 'AB+', 'https://i.ibb.co.com/mrmpp1dF/IMG-3561.jpg'),
('Rima Jahan', '250115', 'Forida Tower, Pabna', 'Thakurgaon', '01909-197188', 'https://www.facebook.com/share/1AvdJzXmuB/', 'rimajahansdp@gmail.com', 'B+', ''),
('MST. URMILA KHATUN', '250116', 'Forida Tower, Pabna', 'Naldanga, Natore', '01626-273480', 'https://www.facebook.com/share/1AgvF7oeDvv/', 'urmilakhatun3456@gmail.com', 'B+', 'https://i.ibb.co.com/7t4GfHvW/155ff202-f119-43bf-96f2-e8d4b47dac7a.jpg'),
('MD. Forhad Zaman', '250117', 'Homoeopathic Medical Mor, Pabna', 'Godagar, Rajshahi', '01630-743003', 'https://www.facebook.com/Forhad.pust.cse17', 'forhad.af0@gmail.com', 'A+', 'https://i.ibb.co.com/pvg7rxVJ/IMG-3578.jpg'),
('MD. SOYAB HOSSAIN', '250119', 'Mahtab Tower, Pabna', 'Sirajganj', '01571-054693', 'https://www.facebook.com/profile.php?id=61578380370457', 'soyab11967@gmail.com', 'B+', 'https://i.ibb.co.com/KjrJ0z7F/IMG-3595.jpg'),
('Asmaul Husna', '250120', 'Rajapur, Pabna', 'Tangail', '01743-253000', 'https://www.facebook.com/share/1C493KXREL/', 'springhadow29@gmail.com', 'B+', 'https://i.ibb.co.com/Kz8MHrWr/att-0hp-PR7z4-WQOTrt293pm-XV7-EWb-T26-Rhbsb-ZOMj-PPg0.jpg'),
('MD. NAHIDUL ISLAM', '250121', 'Mohendropur, Pabna', 'Santhia, Pabna', '01834-145283', 'https://www.facebook.com/nahidul.cse.pust', 'nayee5350@outlook.com', 'B+', 'https://i.ibb.co.com/mCTPBwW6/fbc0d8ae-16d5-4fc9-9353-20664569ad.jpg'),
('Salauddin Ayyube', '250122', 'Mujahid Club, Pabna', 'Shajadpur, Sirajganj', '01318-856637', 'https://www.facebook.com/share/17agXG6z6T/', 'salauddinaiyube@gmail.com', 'B-', 'https://i.ibb.co.com/wZfKNsX6/477d429fd66df236ba92a46270e7b9d4.jpg'),
('Zahin Mahmud Daiyan', '250123', 'Mahtab Tower, Pabna', 'Mohonpur, Natore', '01701-299258', 'https://www.facebook.com/zahin.mahmud.daiyan.CSE.PUST', 'zahinmahmud271@gmail.com', 'O+', 'https://i.ibb.co.com/hRX7T65C/IMG-3538.jpg'),
('Mst. Khandakar Jahida', '250124', 'Monsurabad, Pabna', 'Polastoli, Tangail', '01303-341680', 'https://www.facebook.com/share/1FBAjWHw1W/', 'mstkhandakerjahida@gmail.com', 'O+', 'https://i.ibb.co.com/bR5kS999/IMG-6021.jpg'),
('SHAHID-HASAN-FAHIM', '250125', 'Mujahid Club, Pabna', 'Nilphamari', '01720-988987', 'https://www.facebook.com/share/1HLGbMiFn/', 'shfahimf@gmail.com', 'O+', 'https://i.ibb.co.com/Y7C5pXDJ/IMG-3535.jpg'),
('Fatema', '250127', 'Rajapur, Pabna', 'Mirzapur, Tangail', '01605-991240', 'https://www.facebook.com/share/17nodFe5rp/', 'mdalommiya205@gmail.com', 'AB+', 'https://i.ibb.co.com/fdxrnqkn/IMG-3565.jpg'),
('Mst. Soheli Aktar Akhi', '250128', 'Degree Bot Tola, Pabna', 'Bera, Pabna', '01875-768594', 'https://www.facebook.com/share/1Adm7jw1kh/', 'soheliahi999@gmail.com', 'AB+', 'https://i.ibb.co.com/mrW07ccY/IMG-3554.jpg'),
('Khandaker Saiful Islam Tanvir', '250130', 'Mujahid Club, Pabna', 'Muradnagar, Cumilla', '01602-032209', 'https://www.facebook.com/share/1AXbodyPm/', 'khandakertanvir151@gmail.com', 'B+', 'https://i.ibb.co.com/5hc5PgvV/IMG-3530.jpg'),
('Md. Riyaz Ali', '250132', 'Mujahid Club, Pabna', 'Rajshahi', '01751-812046', 'https://www.facebook.com/share/17wXYyanuL/', 'mdriyazali531@gmail.com', 'O+', 'https://i.ibb.co.com/q3wgWLqB/IMG-5270.jpg'),
('Sahadat Hossain', '250133', 'Mahtab Tower, Pabna', 'Narsingdi', '01994-728770', 'https://www.facebook.com/share/1BDsbwm6Lg/', 'sahadathossain8162@gmail.com', 'O+', 'https://i.ibb.co.com/SXJSRNbp/IMG-3580.jpg'),
('Jagojit Chandra Barmon (Niloy)', '250134', 'Mujahid Club, Pabna', 'Kurigram', '01737-232248', 'https://www.facebook.com/niloy.roy.327548', 'jagojitchandro@gmail.com', 'B+', 'https://i.ibb.co.com/MD9hqp2z/8a8f5f2a-e6b3-43fa-8b83-1bb6ecb1dc6a.jpg'),
('Nuruzzaman Nahid', '250135', 'Mujahid Club, Pabna', 'Jhenidah', '01516-582229', 'https://www.facebook.com/share/1BuGmo5qHY/', 'nahid3739u@gmail.com', 'B+', 'https://i.ibb.co.com/HvtsfhpJ/IMG-3589.jpg'),
('Sameeha Zahan Mridula', '250136', 'Mansurabad-5, Pabna', 'Bera(North), Pabna', '01950-377978', 'https://www.facebook.com/sameeha.mridula', 'sameehamridula@gmail.com', 'B+', 'https://i.ibb.co.com/Sw9Sj2QZ/IMG-3552.jpg'),
('Mohd. Atiquzzaman Atiq', '250137', 'Mahtab Tower, Pabna', 'Chapainawabganj', '01331-945616', 'https://www.facebook.com/profile.php?id=61578032794410', 'ahmedatik5616@gmail.com', 'B+', 'https://i.ibb.co.com/hRZ6YrGC/f3ab99d3-cdbf-4b39-806b-b0e1aa859088.jpg'),
('Samin Yesar Tousib', '250138', 'Mahtab Tower, Pabna', 'Guratipara, Rangpur-5400', '01318-009252', 'https://www.facebook.com/tousib.CSE.PUST', 'tousibsaminyesar@gmail.com', 'AB+', 'https://i.ibb.co.com/WpKf3f8Tf/IMG-3550.jpg'),
('Md. Iftekhar Rahman (Riad)', '250139', 'Mujahid Club, Pabna', 'Rajshahi', '01610-077278', 'https://www.facebook.com/share/1B5j9PeiVu/', 'riadraj009@gmail.com', 'A+', 'https://i.ibb.co.com/xKvjx11D/IMG-2457.jpg'),
('Azizul Hoque Emon', '250140', 'Homoeopathy Moor, Pabna', 'Cox''s Bazar', '01576-668847', 'https://www.facebook.com/profile.php?id=1000074429367552', 'azizulhoquemmon634@gmail.com', 'A+', 'https://i.ibb.co.com/8DMtgcnZ/e85606f6-c293-4b97-9e7d-2da222c7bf0c.jpg'),
('Mst. Johura Khatun', '250141', 'Rajapur, Pabna', 'Rajapur, Pabna', '01752-403352', 'https://www.facebook.com/share/1DSpnpcvsY/', 'fatematujjohura819@gmail.com', 'O+', 'https://i.ibb.co.com/6c5JCZw/IMG-3597.jpg');

-- Enable Row Level Security (Optional but recommended)
ALTER TABLE students ENABLE ROW LEVEL SECURITY;
ALTER TABLE timeline ENABLE ROW LEVEL SECURITY;
ALTER TABLE site_settings ENABLE ROW LEVEL SECURITY;

-- Allow public read access (for website)
CREATE POLICY "Public can read students" ON students FOR SELECT USING (true);
CREATE POLICY "Public can read timeline" ON timeline FOR SELECT USING (true);
CREATE POLICY "Public can read settings" ON site_settings FOR SELECT USING (true);

-- Allow authenticated users to insert/update/delete (for admin dashboard)
CREATE POLICY "Authenticated users can manage students" ON students FOR ALL USING (true) WITH CHECK (true);
CREATE POLICY "Authenticated users can manage timeline" ON timeline FOR ALL USING (true) WITH CHECK (true);
CREATE POLICY "Authenticated users can manage settings" ON site_settings FOR ALL USING (true) WITH CHECK (true);

-- Success message
SELECT '✅ CSE 17th Batch Supabase setup completed successfully!' AS status;