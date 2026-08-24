-- Airbnb Database System for Apartment and Room Booking
-- Complete deterministic fictional sample data for MySQL 8.0+

USE airbnb_booking_db;

-- ============================================================
-- 01. USERS
-- Insert realistic fictional platform users
-- Target: 30 records
-- ============================================================
INSERT INTO users
    (first_name, last_name, email, password_hash, phone_number, date_of_birth, gender, profile_photo_url, user_status, created_at, updated_at)
VALUES
    ('Aarav', 'Mehta', 'aarav.mehta@fictionalstay.example', '$2y$10$demo_hash_user_001', '+99-700-0001', '1981-02-02', 'Male', 'https://profiles.example.com/members/001.jpg', 'Active', '2023-02-02 09:01:00', '2023-02-02 09:01:00'),
    ('Riya', 'Sen', 'riya.sen@fictionalstay.example', '$2y$10$demo_hash_user_002', '+99-700-0002', '1982-03-03', 'Female', 'https://profiles.example.com/members/002.jpg', 'Active', '2024-03-03 10:02:00', '2024-03-03 10:02:00'),
    ('Kabir', 'Sharma', 'kabir.sharma@fictionalstay.example', '$2y$10$demo_hash_user_003', '+99-700-0003', '1983-04-04', 'Male', 'https://profiles.example.com/members/003.jpg', 'Active', '2025-04-04 11:03:00', '2025-04-04 11:03:00'),
    ('Ananya', 'Roy', 'ananya.roy@fictionalstay.example', '$2y$10$demo_hash_user_004', '+99-700-0004', '1984-05-05', 'Female', 'https://profiles.example.com/members/004.jpg', 'Active', '2022-05-05 12:04:00', '2022-05-05 12:04:00'),
    ('Arjun', 'Das', 'arjun.das@fictionalstay.example', '$2y$10$demo_hash_user_005', '+99-700-0005', '1985-06-06', 'Male', 'https://profiles.example.com/members/005.jpg', 'Active', '2023-06-06 13:05:00', '2023-06-06 13:05:00'),
    ('Neha', 'Kapoor', 'neha.kapoor@fictionalstay.example', '$2y$10$demo_hash_user_006', '+99-700-0006', '1986-07-07', 'Female', 'https://profiles.example.com/members/006.jpg', 'Active', '2024-07-07 14:06:00', '2024-07-07 14:06:00'),
    ('Ishaan', 'Khan', 'ishaan.khan@fictionalstay.example', '$2y$10$demo_hash_user_007', '+99-700-0007', '1987-08-08', 'Male', 'https://profiles.example.com/members/007.jpg', 'Active', '2025-08-08 15:07:00', '2025-08-08 15:07:00'),
    ('Sara', 'Ali', 'sara.ali@fictionalstay.example', '$2y$10$demo_hash_user_008', '+99-700-0008', '1988-09-09', 'Female', 'https://profiles.example.com/members/008.jpg', 'Active', '2022-09-09 16:08:00', '2022-09-09 16:08:00'),
    ('Rahul', 'Verma', 'rahul.verma@fictionalstay.example', '$2y$10$demo_hash_user_009', '+99-700-0009', '1989-10-10', 'Male', 'https://profiles.example.com/members/009.jpg', 'Active', '2023-10-10 08:09:00', '2023-10-10 08:09:00'),
    ('Priya', 'Nair', 'priya.nair@fictionalstay.example', '$2y$10$demo_hash_user_010', '+99-700-0010', '1990-11-11', 'Female', 'https://profiles.example.com/members/010.jpg', 'Active', '2024-11-11 09:10:00', '2024-11-11 09:10:00'),
    ('Vikram', 'Bose', 'vikram.bose@fictionalstay.example', '$2y$10$demo_hash_user_011', '+99-700-0011', '1991-12-12', 'Male', 'https://profiles.example.com/members/011.jpg', 'Active', '2025-12-12 10:11:00', '2025-12-12 10:11:00'),
    ('Maya', 'Menon', 'maya.menon@fictionalstay.example', '$2y$10$demo_hash_user_012', '+99-700-0012', '1992-01-13', 'Female', 'https://profiles.example.com/members/012.jpg', 'Inactive', '2022-01-13 11:12:00', '2022-01-13 11:12:00'),
    ('Dev', 'Patel', 'dev.patel@fictionalstay.example', '$2y$10$demo_hash_user_013', '+99-700-0013', '1993-02-14', 'Male', 'https://profiles.example.com/members/013.jpg', 'Active', '2023-02-14 12:13:00', '2023-02-14 12:13:00'),
    ('Kavya', 'Iyer', 'kavya.iyer@fictionalstay.example', '$2y$10$demo_hash_user_014', '+99-700-0014', '1994-03-15', 'Female', 'https://profiles.example.com/members/014.jpg', 'Active', '2024-03-15 13:14:00', '2024-03-15 13:14:00'),
    ('Nikhil', 'Gupta', 'nikhil.gupta@fictionalstay.example', '$2y$10$demo_hash_user_015', '+99-700-0015', '1995-04-16', 'Male', 'https://profiles.example.com/members/015.jpg', 'Active', '2025-04-16 14:15:00', '2025-04-16 14:15:00'),
    ('Tara', 'Joshi', 'tara.joshi@fictionalstay.example', '$2y$10$demo_hash_user_016', '+99-700-0016', '1996-05-17', 'Female', 'https://profiles.example.com/members/016.jpg', 'Active', '2022-05-17 15:16:00', '2022-05-17 15:16:00'),
    ('Sameer', 'Malik', 'sameer.malik@fictionalstay.example', '$2y$10$demo_hash_user_017', '+99-700-0017', '1997-06-18', 'Male', 'https://profiles.example.com/members/017.jpg', 'Active', '2023-06-18 16:17:00', '2023-06-18 16:17:00'),
    ('Ira', 'Rao', 'ira.rao@fictionalstay.example', '$2y$10$demo_hash_user_018', '+99-700-0018', '1980-07-19', 'Female', 'https://profiles.example.com/members/018.jpg', 'Suspended', '2024-07-19 08:18:00', '2024-07-19 08:18:00'),
    ('Aditya', 'Chopra', 'aditya.chopra@fictionalstay.example', '$2y$10$demo_hash_user_019', '+99-700-0019', '1981-08-20', 'Male', 'https://profiles.example.com/members/019.jpg', 'Active', '2025-08-20 09:19:00', '2025-08-20 09:19:00'),
    ('Pooja', 'Reddy', 'pooja.reddy@fictionalstay.example', '$2y$10$demo_hash_user_020', '+99-700-0020', '1982-09-21', 'Female', 'https://profiles.example.com/members/020.jpg', 'Active', '2022-09-21 10:20:00', '2022-09-21 10:20:00'),
    ('Daniel', 'Mueller', 'daniel.mueller@fictionalstay.example', '$2y$10$demo_hash_user_021', '+99-700-0021', '1983-10-22', 'Male', 'https://profiles.example.com/members/021.jpg', 'Active', '2023-10-22 11:21:00', '2023-10-22 11:21:00'),
    ('Emma', 'Fischer', 'emma.fischer@fictionalstay.example', '$2y$10$demo_hash_user_022', '+99-700-0022', '1984-11-23', 'Female', 'https://profiles.example.com/members/022.jpg', 'Active', '2024-11-23 12:22:00', '2024-11-23 12:22:00'),
    ('Oliver', 'Smith', 'oliver.smith@fictionalstay.example', '$2y$10$demo_hash_user_023', '+99-700-0023', '1985-12-24', 'Male', 'https://profiles.example.com/members/023.jpg', 'Active', '2025-12-24 13:23:00', '2025-12-24 13:23:00'),
    ('Sophia', 'Brown', 'sophia.brown@fictionalstay.example', '$2y$10$demo_hash_user_024', '+99-700-0024', '1986-01-25', 'Female', 'https://profiles.example.com/members/024.jpg', 'Active', '2022-01-25 14:24:00', '2022-01-25 14:24:00'),
    ('Liam', 'Wilson', 'liam.wilson@fictionalstay.example', '$2y$10$demo_hash_user_025', '+99-700-0025', '1987-02-26', 'Male', 'https://profiles.example.com/members/025.jpg', 'Active', '2023-02-26 15:25:00', '2023-02-26 15:25:00'),
    ('Noah', 'Anderson', 'noah.anderson@fictionalstay.example', '$2y$10$demo_hash_user_026', '+99-700-0026', '1988-03-27', 'Female', 'https://profiles.example.com/members/026.jpg', 'Active', '2024-03-27 16:26:00', '2024-03-27 16:26:00'),
    ('Amelia', 'Garcia', 'amelia.garcia@fictionalstay.example', '$2y$10$demo_hash_user_027', '+99-700-0027', '1989-04-01', 'Male', 'https://profiles.example.com/members/027.jpg', 'Inactive', '2025-04-01 08:27:00', '2025-04-01 08:27:00'),
    ('Mila', 'Martin', 'mila.martin@fictionalstay.example', '$2y$10$demo_hash_user_028', '+99-700-0028', '1990-05-02', 'Female', 'https://profiles.example.com/members/028.jpg', 'Active', '2022-05-02 09:28:00', '2022-05-02 09:28:00'),
    ('Elena', 'Rossi', 'elena.rossi@fictionalstay.example', '$2y$10$demo_hash_user_029', '+99-700-0029', '1991-06-03', 'Male', 'https://profiles.example.com/members/029.jpg', 'Active', '2023-06-03 10:29:00', '2023-06-03 10:29:00'),
    ('Omar', 'Rahman', 'omar.rahman@fictionalstay.example', '$2y$10$demo_hash_user_030', '+99-700-0030', '1992-07-04', 'Female', 'https://profiles.example.com/members/030.jpg', 'Active', '2024-07-04 11:30:00', '2024-07-04 11:30:00');

SELECT * FROM users;

SELECT COUNT(*) AS total_users
FROM users;

-- ============================================================
-- 02. USER ROLES
-- Define core and operational platform roles
-- Target: 20 records
-- ============================================================
INSERT INTO user_roles
    (role_name, role_description)
VALUES
    ('Guest', 'Guest responsibilities for the accommodation platform.'),
    ('Host', 'Host responsibilities for the accommodation platform.'),
    ('Admin', 'Admin responsibilities for the accommodation platform.'),
    ('Support Agent', 'Support Agent responsibilities for the accommodation platform.'),
    ('Support Manager', 'Support Manager responsibilities for the accommodation platform.'),
    ('Property Moderator', 'Property Moderator responsibilities for the accommodation platform.'),
    ('Finance Analyst', 'Finance Analyst responsibilities for the accommodation platform.'),
    ('Finance Manager', 'Finance Manager responsibilities for the accommodation platform.'),
    ('Content Moderator', 'Content Moderator responsibilities for the accommodation platform.'),
    ('Risk Analyst', 'Risk Analyst responsibilities for the accommodation platform.'),
    ('Customer Service', 'Customer Service responsibilities for the accommodation platform.'),
    ('Operations Agent', 'Operations Agent responsibilities for the accommodation platform.'),
    ('Operations Manager', 'Operations Manager responsibilities for the accommodation platform.'),
    ('Compliance Reviewer', 'Compliance Reviewer responsibilities for the accommodation platform.'),
    ('Account Reviewer', 'Account Reviewer responsibilities for the accommodation platform.'),
    ('Trust and Safety Agent', 'Trust and Safety Agent responsibilities for the accommodation platform.'),
    ('Technical Support', 'Technical Support responsibilities for the accommodation platform.'),
    ('Marketing Analyst', 'Marketing Analyst responsibilities for the accommodation platform.'),
    ('Booking Specialist', 'Booking Specialist responsibilities for the accommodation platform.'),
    ('Payment Specialist', 'Payment Specialist responsibilities for the accommodation platform.');

SELECT * FROM user_roles;

SELECT COUNT(*) AS total_user_roles
FROM user_roles;

-- ============================================================
-- 03. USER ROLE ASSIGNMENTS
-- Assign core and specialist roles, including ten guest-host users
-- Target: 50 records
-- ============================================================
INSERT INTO user_role_assignments
    (user_id, role_id, assigned_at)
VALUES
    (1, 1, '2025-01-02 09:00:00'),
    (2, 1, '2025-01-03 09:00:00'),
    (3, 1, '2025-01-04 09:00:00'),
    (4, 1, '2025-01-05 09:00:00'),
    (5, 1, '2025-01-06 09:00:00'),
    (6, 1, '2025-01-07 09:00:00'),
    (7, 1, '2025-01-08 09:00:00'),
    (8, 1, '2025-01-09 09:00:00'),
    (9, 1, '2025-01-10 09:00:00'),
    (10, 1, '2025-01-11 09:00:00'),
    (21, 1, '2025-01-22 09:00:00'),
    (22, 1, '2025-01-23 09:00:00'),
    (23, 1, '2025-01-24 09:00:00'),
    (24, 1, '2025-01-25 09:00:00'),
    (25, 1, '2025-01-26 09:00:00'),
    (26, 1, '2025-01-27 09:00:00'),
    (27, 1, '2025-01-01 09:00:00'),
    (28, 1, '2025-01-02 09:00:00'),
    (29, 1, '2025-01-03 09:00:00'),
    (30, 1, '2025-01-04 09:00:00'),
    (11, 2, '2024-02-12 10:00:00'),
    (12, 2, '2024-02-13 10:00:00'),
    (13, 2, '2024-02-14 10:00:00'),
    (14, 2, '2024-02-15 10:00:00'),
    (15, 2, '2024-02-16 10:00:00'),
    (16, 2, '2024-02-17 10:00:00'),
    (17, 2, '2024-02-18 10:00:00'),
    (18, 2, '2024-02-19 10:00:00'),
    (19, 2, '2024-02-20 10:00:00'),
    (20, 2, '2024-02-21 10:00:00'),
    (21, 2, '2024-02-22 10:00:00'),
    (22, 2, '2024-02-23 10:00:00'),
    (23, 2, '2024-02-24 10:00:00'),
    (24, 2, '2024-02-25 10:00:00'),
    (25, 2, '2024-02-26 10:00:00'),
    (26, 2, '2024-02-27 10:00:00'),
    (27, 2, '2024-02-01 10:00:00'),
    (28, 2, '2024-02-02 10:00:00'),
    (29, 2, '2024-02-03 10:00:00'),
    (30, 2, '2024-02-04 10:00:00'),
    (29, 3, '2023-01-10 08:00:00'),
    (30, 3, '2023-01-10 08:05:00'),
    (11, 4, '2025-03-11 11:00:00'),
    (12, 5, '2025-03-12 11:00:00'),
    (13, 6, '2025-03-13 11:00:00'),
    (14, 7, '2025-03-14 11:00:00'),
    (15, 8, '2025-03-15 11:00:00'),
    (16, 9, '2025-03-16 11:00:00'),
    (17, 10, '2025-03-17 11:00:00'),
    (18, 11, '2025-03-18 11:00:00');

SELECT * FROM user_role_assignments;

SELECT COUNT(*) AS total_user_role_assignments
FROM user_role_assignments;

-- ============================================================
-- 04. GUEST PROFILES
-- Create one guest profile for each eligible user
-- Target: 20 records
-- ============================================================
INSERT INTO guest_profiles
    (user_id, government_id_type, government_id_number, emergency_contact_name, emergency_contact_phone, preferred_language, guest_bio)
VALUES
    (1, 'Driving Licence', 'FIC-GOV-00001', 'Ananya Kapoor', '+99-810-0001', 'English', 'Respectful traveller interested in local culture and destination 1.'),
    (2, 'National ID', 'FIC-GOV-00002', 'Arjun Khan', '+99-810-0002', 'Hindi', 'Respectful traveller interested in local culture and destination 2.'),
    (3, 'Passport', 'FIC-GOV-00003', 'Neha Ali', '+99-810-0003', 'Bengali', 'Respectful traveller interested in local culture and destination 3.'),
    (4, 'Driving Licence', 'FIC-GOV-00004', 'Ishaan Verma', '+99-810-0004', 'German', 'Respectful traveller interested in local culture and destination 4.'),
    (5, 'National ID', 'FIC-GOV-00005', 'Sara Nair', '+99-810-0005', 'Spanish', 'Respectful traveller interested in local culture and destination 5.'),
    (6, 'Passport', 'FIC-GOV-00006', 'Rahul Bose', '+99-810-0006', 'French', 'Respectful traveller interested in local culture and destination 6.'),
    (7, 'Driving Licence', 'FIC-GOV-00007', 'Priya Menon', '+99-810-0007', 'English', 'Respectful traveller interested in local culture and destination 7.'),
    (8, 'National ID', 'FIC-GOV-00008', 'Vikram Patel', '+99-810-0008', 'Hindi', 'Respectful traveller interested in local culture and destination 8.'),
    (9, 'Passport', 'FIC-GOV-00009', 'Maya Iyer', '+99-810-0009', 'Bengali', 'Respectful traveller interested in local culture and destination 9.'),
    (10, 'Driving Licence', 'FIC-GOV-00010', 'Dev Gupta', '+99-810-0010', 'German', 'Respectful traveller interested in local culture and destination 10.'),
    (21, 'National ID', 'FIC-GOV-00011', 'Sophia Anderson', '+99-810-0011', 'Spanish', 'Respectful traveller interested in local culture and destination 11.'),
    (22, 'Passport', 'FIC-GOV-00012', 'Liam Garcia', '+99-810-0012', 'French', 'Respectful traveller interested in local culture and destination 12.'),
    (23, 'Driving Licence', 'FIC-GOV-00013', 'Noah Martin', '+99-810-0013', 'English', 'Respectful traveller interested in local culture and destination 13.'),
    (24, 'National ID', 'FIC-GOV-00014', 'Amelia Rossi', '+99-810-0014', 'Hindi', 'Respectful traveller interested in local culture and destination 14.'),
    (25, 'Passport', 'FIC-GOV-00015', 'Mila Rahman', '+99-810-0015', 'Bengali', 'Respectful traveller interested in local culture and destination 15.'),
    (26, 'Driving Licence', 'FIC-GOV-00016', 'Elena Mehta', '+99-810-0016', 'German', 'Respectful traveller interested in local culture and destination 16.'),
    (27, 'National ID', 'FIC-GOV-00017', 'Omar Sen', '+99-810-0017', 'Spanish', 'Respectful traveller interested in local culture and destination 17.'),
    (28, 'Passport', 'FIC-GOV-00018', 'Aarav Sharma', '+99-810-0018', 'French', 'Respectful traveller interested in local culture and destination 18.'),
    (29, 'Driving Licence', 'FIC-GOV-00019', 'Riya Roy', '+99-810-0019', 'English', 'Respectful traveller interested in local culture and destination 19.'),
    (30, 'National ID', 'FIC-GOV-00020', 'Kabir Das', '+99-810-0020', 'Hindi', 'Respectful traveller interested in local culture and destination 20.');

SELECT * FROM guest_profiles;

SELECT COUNT(*) AS total_guest_profiles
FROM guest_profiles;

-- ============================================================
-- 05. HOST PROFILES
-- Create hosts with varied service metrics and statuses
-- Target: 20 records
-- ============================================================
INSERT INTO host_profiles
    (user_id, host_since, host_about, response_rate, response_time, is_superhost, host_status)
VALUES
    (11, '2021-02-01', 'Professionally manages welcoming fictional stays in destination 1.', 83, 'Within a few hours', TRUE, 'Active'),
    (12, '2022-03-01', 'Professionally manages welcoming fictional stays in destination 2.', 84, 'Within a day', TRUE, 'Active'),
    (13, '2023-04-01', 'Professionally manages welcoming fictional stays in destination 3.', 85, 'Within an hour', TRUE, 'Active'),
    (14, '2024-05-01', 'Professionally manages welcoming fictional stays in destination 4.', 86, 'Within a few hours', TRUE, 'Active'),
    (15, '2020-06-01', 'Professionally manages welcoming fictional stays in destination 5.', 87, 'Within a day', TRUE, 'Active'),
    (16, '2021-07-01', 'Professionally manages welcoming fictional stays in destination 6.', 88, 'Within an hour', TRUE, 'Active'),
    (17, '2022-08-01', 'Professionally manages welcoming fictional stays in destination 7.', 89, 'Within a few hours', TRUE, 'Active'),
    (18, '2023-09-01', 'Professionally manages welcoming fictional stays in destination 8.', 90, 'Within a day', FALSE, 'Under Review'),
    (19, '2024-10-01', 'Professionally manages welcoming fictional stays in destination 9.', 91, 'Within an hour', FALSE, 'Active'),
    (20, '2020-11-01', 'Professionally manages welcoming fictional stays in destination 10.', 92, 'Within a few hours', FALSE, 'Active'),
    (21, '2021-12-01', 'Professionally manages welcoming fictional stays in destination 11.', 93, 'Within a day', FALSE, 'Active'),
    (22, '2022-01-01', 'Professionally manages welcoming fictional stays in destination 12.', 94, 'Within an hour', FALSE, 'Active'),
    (23, '2023-02-01', 'Professionally manages welcoming fictional stays in destination 13.', 95, 'Within a few hours', FALSE, 'Active'),
    (24, '2024-03-01', 'Professionally manages welcoming fictional stays in destination 14.', 96, 'Within a day', FALSE, 'Active'),
    (25, '2020-04-01', 'Professionally manages welcoming fictional stays in destination 15.', 97, 'Within an hour', FALSE, 'Active'),
    (26, '2021-05-01', 'Professionally manages welcoming fictional stays in destination 16.', 98, 'Within a few hours', FALSE, 'Active'),
    (27, '2022-06-01', 'Professionally manages welcoming fictional stays in destination 17.', 99, 'Within a day', FALSE, 'Temporarily Unavailable'),
    (28, '2023-07-01', 'Professionally manages welcoming fictional stays in destination 18.', 82, 'Within an hour', FALSE, 'Active'),
    (29, '2024-08-01', 'Professionally manages welcoming fictional stays in destination 19.', 83, 'Within a few hours', FALSE, 'Active'),
    (30, '2020-09-01', 'Professionally manages welcoming fictional stays in destination 20.', 84, 'Within a day', FALSE, 'Active');

SELECT * FROM host_profiles;

SELECT COUNT(*) AS total_host_profiles
FROM host_profiles;

-- ============================================================
-- 06. SOCIAL ACCOUNTS
-- Connect users to fictional social identities
-- Target: 25 records
-- ============================================================
INSERT INTO social_accounts
    (user_id, platform_name, profile_url, connected_at)
VALUES
    (7, 'Google', 'https://social.example.com/google/fictional-01', '2025-02-02 12:00:00'),
    (14, 'Facebook', 'https://social.example.com/facebook/fictional-02', '2025-03-03 12:00:00'),
    (21, 'Apple', 'https://social.example.com/apple/fictional-03', '2025-04-04 12:00:00'),
    (28, 'Instagram', 'https://social.example.com/instagram/fictional-04', '2025-05-05 12:00:00'),
    (5, 'LinkedIn', 'https://social.example.com/linkedin/fictional-05', '2025-06-06 12:00:00'),
    (12, 'Google', 'https://social.example.com/google/fictional-06', '2025-07-07 12:00:00'),
    (19, 'Facebook', 'https://social.example.com/facebook/fictional-07', '2025-08-08 12:00:00'),
    (26, 'Apple', 'https://social.example.com/apple/fictional-08', '2025-09-09 12:00:00'),
    (3, 'Instagram', 'https://social.example.com/instagram/fictional-09', '2025-10-10 12:00:00'),
    (10, 'LinkedIn', 'https://social.example.com/linkedin/fictional-10', '2025-11-11 12:00:00'),
    (17, 'Google', 'https://social.example.com/google/fictional-11', '2025-12-12 12:00:00'),
    (24, 'Facebook', 'https://social.example.com/facebook/fictional-12', '2025-01-13 12:00:00'),
    (1, 'Apple', 'https://social.example.com/apple/fictional-13', '2025-02-14 12:00:00'),
    (8, 'Instagram', 'https://social.example.com/instagram/fictional-14', '2025-03-15 12:00:00'),
    (15, 'LinkedIn', 'https://social.example.com/linkedin/fictional-15', '2025-04-16 12:00:00'),
    (22, 'Google', 'https://social.example.com/google/fictional-16', '2025-05-17 12:00:00'),
    (29, 'Facebook', 'https://social.example.com/facebook/fictional-17', '2025-06-18 12:00:00'),
    (6, 'Apple', 'https://social.example.com/apple/fictional-18', '2025-07-19 12:00:00'),
    (13, 'Instagram', 'https://social.example.com/instagram/fictional-19', '2025-08-20 12:00:00'),
    (20, 'LinkedIn', 'https://social.example.com/linkedin/fictional-20', '2025-09-21 12:00:00'),
    (27, 'Google', 'https://social.example.com/google/fictional-21', '2025-10-22 12:00:00'),
    (4, 'Facebook', 'https://social.example.com/facebook/fictional-22', '2025-11-23 12:00:00'),
    (11, 'Apple', 'https://social.example.com/apple/fictional-23', '2025-12-24 12:00:00'),
    (18, 'Instagram', 'https://social.example.com/instagram/fictional-24', '2025-01-25 12:00:00'),
    (25, 'LinkedIn', 'https://social.example.com/linkedin/fictional-25', '2025-02-26 12:00:00');

SELECT * FROM social_accounts;

SELECT COUNT(*) AS total_social_accounts
FROM social_accounts;

-- ============================================================
-- 07. COUNTRIES
-- Insert normalized country lookup records
-- Target: 20 records
-- ============================================================
INSERT INTO countries
    (country_name, country_code)
VALUES
    ('India', 'IN'),
    ('Germany', 'DE'),
    ('United Kingdom', 'GB'),
    ('United Arab Emirates', 'AE'),
    ('France', 'FR'),
    ('Italy', 'IT'),
    ('Spain', 'ES'),
    ('United States', 'US'),
    ('Canada', 'CA'),
    ('Australia', 'AU'),
    ('Singapore', 'SG'),
    ('Thailand', 'TH'),
    ('Malaysia', 'MY'),
    ('Indonesia', 'ID'),
    ('Japan', 'JP'),
    ('South Korea', 'KR'),
    ('Netherlands', 'NL'),
    ('Switzerland', 'CH'),
    ('Austria', 'AT'),
    ('Portugal', 'PT');

SELECT * FROM countries;

SELECT COUNT(*) AS total_countries
FROM countries;

-- ============================================================
-- 08. CITIES
-- Insert Indian and international destination cities
-- Target: 30 records
-- ============================================================
INSERT INTO cities
    (country_id, city_name, state_region, postal_code)
VALUES
    (1, 'Kolkata', 'West Bengal', '10000'),
    (1, 'Darjeeling', 'West Bengal', '10001'),
    (1, 'Mumbai', 'Maharashtra', '10002'),
    (1, 'New Delhi', 'Delhi', '10003'),
    (1, 'Bengaluru', 'Karnataka', '10004'),
    (1, 'Panaji', 'Goa', '10005'),
    (1, 'Hyderabad', 'Telangana', '10006'),
    (1, 'Chennai', 'Tamil Nadu', '10007'),
    (1, 'Jaipur', 'Rajasthan', '10008'),
    (1, 'Pune', 'Maharashtra', '10009'),
    (2, 'Berlin', 'Berlin', '10010'),
    (2, 'Munich', 'Munich', '10011'),
    (3, 'London', 'London', '10012'),
    (3, 'Manchester', 'Manchester', '10013'),
    (4, 'Dubai', 'Dubai', '10014'),
    (4, 'Abu Dhabi', 'Abu Dhabi', '10015'),
    (5, 'Paris', 'Paris', '10016'),
    (6, 'Rome', 'Rome', '10017'),
    (7, 'Barcelona', 'Barcelona', '10018'),
    (8, 'New York', 'New York', '10019'),
    (9, 'Toronto', 'Toronto', '10020'),
    (10, 'Sydney', 'Sydney', '10021'),
    (11, 'Singapore', 'Singapore', '10022'),
    (12, 'Bangkok', 'Bangkok', '10023'),
    (15, 'Tokyo', 'Tokyo', '10024'),
    (17, 'Amsterdam', 'Amsterdam', '10025'),
    (13, 'Kuala Lumpur', 'Kuala Lumpur', '10026'),
    (14, 'Bali', 'Bali', '10027'),
    (16, 'Seoul', 'Seoul', '10028'),
    (20, 'Lisbon', 'Lisbon', '10029');

SELECT * FROM cities;

SELECT COUNT(*) AS total_cities
FROM cities;

-- ============================================================
-- 09. ADDRESSES
-- Create fictional property addresses in key markets
-- Target: 30 records
-- ============================================================
INSERT INTO addresses
    (city_id, street_address, latitude, longitude, full_address)
VALUES
    (1, '13 Garden View Lane', -27.25, 23.9, '13 Garden View Lane, Kolkata, Fictional District'),
    (1, '14 Garden View Lane', -24.50, 27.8, '14 Garden View Lane, Kolkata, Fictional District'),
    (1, '15 Garden View Lane', -21.75, 31.7, '15 Garden View Lane, Kolkata, Fictional District'),
    (1, '16 Garden View Lane', -19.00, 35.6, '16 Garden View Lane, Kolkata, Fictional District'),
    (1, '17 Garden View Lane', -16.25, 39.5, '17 Garden View Lane, Kolkata, Fictional District'),
    (6, '18 Garden View Lane', -13.50, 43.4, '18 Garden View Lane, Panaji, Fictional District'),
    (6, '19 Garden View Lane', -10.75, 47.3, '19 Garden View Lane, Panaji, Fictional District'),
    (6, '20 Garden View Lane', -8.00, 51.2, '20 Garden View Lane, Panaji, Fictional District'),
    (6, '21 Garden View Lane', -5.25, 55.1, '21 Garden View Lane, Panaji, Fictional District'),
    (3, '22 Garden View Lane', -2.50, 59.0, '22 Garden View Lane, Mumbai, Fictional District'),
    (3, '23 Garden View Lane', 0.25, 62.9, '23 Garden View Lane, Mumbai, Fictional District'),
    (3, '24 Garden View Lane', 3.00, 66.8, '24 Garden View Lane, Mumbai, Fictional District'),
    (3, '25 Garden View Lane', 5.75, 70.7, '25 Garden View Lane, Mumbai, Fictional District'),
    (5, '26 Garden View Lane', 8.50, 74.6, '26 Garden View Lane, Bengaluru, Fictional District'),
    (5, '27 Garden View Lane', 11.25, 78.5, '27 Garden View Lane, Bengaluru, Fictional District'),
    (5, '28 Garden View Lane', 14.00, 82.4, '28 Garden View Lane, Bengaluru, Fictional District'),
    (2, '29 Garden View Lane', 16.75, 86.3, '29 Garden View Lane, Darjeeling, Fictional District'),
    (2, '30 Garden View Lane', 19.50, 90.2, '30 Garden View Lane, Darjeeling, Fictional District'),
    (2, '31 Garden View Lane', 22.25, 94.1, '31 Garden View Lane, Darjeeling, Fictional District'),
    (4, '32 Garden View Lane', 25.00, 98.0, '32 Garden View Lane, New Delhi, Fictional District'),
    (7, '33 Garden View Lane', 27.75, 101.9, '33 Garden View Lane, Hyderabad, Fictional District'),
    (8, '34 Garden View Lane', 30.50, 105.8, '34 Garden View Lane, Chennai, Fictional District'),
    (9, '35 Garden View Lane', 33.25, 109.7, '35 Garden View Lane, Jaipur, Fictional District'),
    (10, '36 Garden View Lane', 36.00, 113.6, '36 Garden View Lane, Pune, Fictional District'),
    (11, '37 Garden View Lane', 38.75, 117.5, '37 Garden View Lane, Berlin, Fictional District'),
    (13, '38 Garden View Lane', 41.50, 121.4, '38 Garden View Lane, London, Fictional District'),
    (15, '39 Garden View Lane', 44.25, 125.3, '39 Garden View Lane, Dubai, Fictional District'),
    (17, '40 Garden View Lane', 47.00, 129.2, '40 Garden View Lane, Paris, Fictional District'),
    (20, '41 Garden View Lane', 49.75, 133.1, '41 Garden View Lane, New York, Fictional District'),
    (23, '42 Garden View Lane', 52.50, 137.0, '42 Garden View Lane, Singapore, Fictional District');

SELECT * FROM addresses;

SELECT COUNT(*) AS total_addresses
FROM addresses;

-- ============================================================
-- 10. PROPERTIES
-- Insert diverse listings among multiple hosts
-- Target: 30 records
-- ============================================================
INSERT INTO properties
    (host_id, address_id, property_title, property_description, property_type, room_type, max_guests, bedrooms, beds, bathrooms, base_price_per_night, cleaning_fee, minimum_nights, maximum_nights, listing_status, created_at, updated_at)
VALUES
    (1, 1, 'Park Street Urban Loft', 'Professionally managed fictional accommodation near Kolkata.', 'Apartment', 'Entire Place', 3, 1, 2, 1.5, 3020, 550, 2, 15, 'Active', '2024-02-02 09:00:00', '2026-08-02 10:00:00'),
    (2, 2, 'Salt Lake Business Apartment', 'Professionally managed fictional accommodation near Kolkata.', 'Villa', 'Entire Place', 4, 2, 2, 2.0, 3240, 700, 3, 16, 'Active', '2024-03-03 09:00:00', '2026-08-03 10:00:00'),
    (3, 3, 'Kolkata Heritage Courtyard', 'Professionally managed fictional accommodation near Kolkata.', 'House', 'Entire Place', 5, 2, 3, 1.0, 3460, 850, 1, 17, 'Active', '2024-04-04 09:00:00', '2026-08-04 10:00:00'),
    (4, 4, 'Ballygunge Garden Studio', 'Professionally managed fictional accommodation near Kolkata.', 'Cottage', 'Entire Place', 6, 3, 3, 1.5, 3680, 1000, 2, 18, 'Active', '2024-05-05 09:00:00', '2026-08-05 10:00:00'),
    (5, 5, 'Riverside Bengal Residence', 'Professionally managed fictional accommodation near Kolkata.', 'Studio', 'Private Room', 2, 1, 2, 2.0, 3900, 400, 3, 19, 'Active', '2024-06-06 09:00:00', '2026-08-06 10:00:00'),
    (6, 6, 'Goa Palm Beach Villa', 'Professionally managed fictional accommodation near Panaji.', 'Condominium', 'Entire Place', 3, 1, 1, 1.0, 4120, 550, 1, 20, 'Active', '2024-07-07 09:00:00', '2026-08-07 10:00:00'),
    (7, 7, 'Fontainhas Artist House', 'Professionally managed fictional accommodation near Panaji.', 'Guest House', 'Entire Place', 4, 2, 3, 1.5, 4340, 700, 2, 21, 'Active', '2024-08-08 09:00:00', '2026-08-08 10:00:00'),
    (8, 8, 'Mandovi River Apartment', 'Professionally managed fictional accommodation near Panaji.', 'Apartment', 'Entire Place', 5, 2, 2, 2.0, 4560, 850, 3, 22, 'Active', '2024-09-09 09:00:00', '2026-08-09 10:00:00'),
    (9, 9, 'Goa Family Garden Cottage', 'Professionally managed fictional accommodation near Panaji.', 'Villa', 'Entire Place', 6, 3, 4, 1.0, 4780, 1000, 1, 23, 'Active', '2024-10-10 09:00:00', '2026-08-10 10:00:00'),
    (10, 10, 'Mumbai Harbour Studio', 'Professionally managed fictional accommodation near Mumbai.', 'House', 'Private Room', 2, 1, 1, 1.5, 5000, 400, 2, 24, 'Active', '2024-11-11 09:00:00', '2026-08-01 10:00:00'),
    (11, 11, 'Marine Drive Art Deco Flat', 'Professionally managed fictional accommodation near Mumbai.', 'Cottage', 'Entire Place', 3, 1, 2, 2.0, 5220, 550, 3, 25, 'Active', '2024-12-12 09:00:00', '2026-08-02 10:00:00'),
    (12, 12, 'Bandra Creative Apartment', 'Professionally managed fictional accommodation near Mumbai.', 'Studio', 'Entire Place', 4, 2, 2, 1.0, 5440, 700, 1, 26, 'Active', '2024-01-13 09:00:00', '2026-08-03 10:00:00'),
    (13, 13, 'Colaba City View Suite', 'Professionally managed fictional accommodation near Mumbai.', 'Condominium', 'Entire Place', 5, 2, 3, 1.5, 5660, 850, 2, 27, 'Active', '2024-02-14 09:00:00', '2026-08-04 10:00:00'),
    (14, 14, 'Bengaluru Tech Park Residence', 'Professionally managed fictional accommodation near Bengaluru.', 'Guest House', 'Entire Place', 6, 3, 3, 2.0, 5880, 1000, 3, 28, 'Active', '2024-03-15 09:00:00', '2026-08-05 10:00:00'),
    (15, 15, 'Indiranagar Business Studio', 'Professionally managed fictional accommodation near Bengaluru.', 'Apartment', 'Private Room', 2, 1, 2, 1.0, 6100, 400, 1, 14, 'Active', '2024-04-16 09:00:00', '2026-08-06 10:00:00'),
    (16, 16, 'Koramangala Garden Flat', 'Professionally managed fictional accommodation near Bengaluru.', 'Villa', 'Entire Place', 3, 1, 1, 1.5, 6320, 550, 2, 15, 'Active', '2024-05-17 09:00:00', '2026-08-07 10:00:00'),
    (17, 17, 'Darjeeling Mountain Retreat', 'Professionally managed fictional accommodation near Darjeeling.', 'House', 'Entire Place', 4, 2, 3, 2.0, 6540, 700, 3, 16, 'Active', '2024-06-18 09:00:00', '2026-08-08 10:00:00'),
    (18, 18, 'Tea Garden View Cottage', 'Professionally managed fictional accommodation near Darjeeling.', 'Cottage', 'Entire Place', 5, 2, 2, 1.0, 6760, 850, 1, 17, 'Inactive', '2024-07-19 09:00:00', '2026-08-09 10:00:00'),
    (19, 19, 'Himalayan Sunrise Guest House', 'Professionally managed fictional accommodation near Darjeeling.', 'Studio', 'Entire Place', 6, 3, 4, 1.5, 6980, 1000, 2, 18, 'Active', '2024-08-20 09:00:00', '2026-08-10 10:00:00'),
    (20, 20, 'Delhi Heritage Apartment', 'Professionally managed fictional accommodation near New Delhi.', 'Condominium', 'Private Room', 2, 1, 1, 2.0, 7200, 400, 3, 19, 'Active', '2024-09-21 09:00:00', '2026-08-01 10:00:00'),
    (1, 21, 'Hyderabad Lake Residence', 'Professionally managed fictional accommodation near Hyderabad.', 'Guest House', 'Entire Place', 3, 1, 2, 1.0, 7420, 550, 1, 20, 'Active', '2024-10-22 09:00:00', '2026-08-02 10:00:00'),
    (2, 22, 'Chennai Marina Home', 'Professionally managed fictional accommodation near Chennai.', 'Apartment', 'Entire Place', 4, 2, 2, 1.5, 7640, 700, 2, 21, 'Active', '2024-11-23 09:00:00', '2026-08-03 10:00:00'),
    (3, 23, 'Jaipur Courtyard Haveli', 'Professionally managed fictional accommodation near Jaipur.', 'Villa', 'Entire Place', 5, 2, 3, 2.0, 7860, 850, 3, 22, 'Active', '2024-12-24 09:00:00', '2026-08-04 10:00:00'),
    (4, 24, 'Pune University Studio', 'Professionally managed fictional accommodation near Pune.', 'House', 'Entire Place', 6, 3, 3, 1.0, 8080, 1000, 1, 23, 'Paused', '2024-01-25 09:00:00', '2026-08-05 10:00:00'),
    (5, 25, 'Berlin Central Loft', 'Professionally managed fictional accommodation near Berlin.', 'Cottage', 'Private Room', 2, 1, 2, 1.5, 8300, 400, 2, 24, 'Active', '2024-02-26 09:00:00', '2026-08-06 10:00:00'),
    (6, 26, 'London Riverside Studio', 'Professionally managed fictional accommodation near London.', 'Studio', 'Entire Place', 3, 1, 1, 2.0, 8520, 550, 3, 25, 'Active', '2024-03-27 09:00:00', '2026-08-07 10:00:00'),
    (7, 27, 'Dubai Marina City View', 'Professionally managed fictional accommodation near Dubai.', 'Condominium', 'Entire Place', 4, 2, 3, 1.0, 8740, 700, 1, 26, 'Active', '2024-04-01 09:00:00', '2026-08-08 10:00:00'),
    (8, 28, 'Paris Left Bank Apartment', 'Professionally managed fictional accommodation near Paris.', 'Guest House', 'Entire Place', 5, 2, 2, 1.5, 8960, 850, 2, 27, 'Active', '2024-05-02 09:00:00', '2026-08-09 10:00:00'),
    (9, 29, 'New York Midtown Residence', 'Professionally managed fictional accommodation near New York.', 'Apartment', 'Entire Place', 6, 3, 4, 2.0, 9180, 1000, 3, 28, 'Inactive', '2024-06-03 09:00:00', '2026-08-10 10:00:00'),
    (10, 30, 'Singapore Garden Condominium', 'Professionally managed fictional accommodation near Singapore.', 'Villa', 'Private Room', 2, 1, 1, 1.0, 9400, 400, 1, 14, 'Paused', '2024-07-04 09:00:00', '2026-08-01 10:00:00');

SELECT * FROM properties;

SELECT COUNT(*) AS total_properties
FROM properties;

-- ============================================================
-- 11. PROPERTY PHOTOS
-- Provide two images for every listing
-- Target: 60 records
-- ============================================================
INSERT INTO property_photos
    (property_id, photo_url, caption, is_cover_photo, uploaded_at)
VALUES
    (1, 'https://images.example.com/property/1/living-room.jpg', 'Living Room', TRUE, '2025-01-10 10:00:00'),
    (1, 'https://images.example.com/property/1/bedroom.jpg', 'Master Bedroom', FALSE, '2025-01-10 10:05:00'),
    (2, 'https://images.example.com/property/2/living-room.jpg', 'Living Room', TRUE, '2025-01-10 10:00:00'),
    (2, 'https://images.example.com/property/2/bedroom.jpg', 'Master Bedroom', FALSE, '2025-01-10 10:05:00'),
    (3, 'https://images.example.com/property/3/living-room.jpg', 'Living Room', TRUE, '2025-01-10 10:00:00'),
    (3, 'https://images.example.com/property/3/bedroom.jpg', 'Master Bedroom', FALSE, '2025-01-10 10:05:00'),
    (4, 'https://images.example.com/property/4/living-room.jpg', 'Living Room', TRUE, '2025-01-10 10:00:00'),
    (4, 'https://images.example.com/property/4/bedroom.jpg', 'Master Bedroom', FALSE, '2025-01-10 10:05:00'),
    (5, 'https://images.example.com/property/5/living-room.jpg', 'Living Room', TRUE, '2025-01-10 10:00:00'),
    (5, 'https://images.example.com/property/5/bedroom.jpg', 'Master Bedroom', FALSE, '2025-01-10 10:05:00'),
    (6, 'https://images.example.com/property/6/living-room.jpg', 'Living Room', TRUE, '2025-01-10 10:00:00'),
    (6, 'https://images.example.com/property/6/bedroom.jpg', 'Master Bedroom', FALSE, '2025-01-10 10:05:00'),
    (7, 'https://images.example.com/property/7/living-room.jpg', 'Living Room', TRUE, '2025-01-10 10:00:00'),
    (7, 'https://images.example.com/property/7/bedroom.jpg', 'Master Bedroom', FALSE, '2025-01-10 10:05:00'),
    (8, 'https://images.example.com/property/8/living-room.jpg', 'Living Room', TRUE, '2025-01-10 10:00:00'),
    (8, 'https://images.example.com/property/8/bedroom.jpg', 'Master Bedroom', FALSE, '2025-01-10 10:05:00'),
    (9, 'https://images.example.com/property/9/living-room.jpg', 'Living Room', TRUE, '2025-01-10 10:00:00'),
    (9, 'https://images.example.com/property/9/bedroom.jpg', 'Master Bedroom', FALSE, '2025-01-10 10:05:00'),
    (10, 'https://images.example.com/property/10/living-room.jpg', 'Living Room', TRUE, '2025-01-10 10:00:00'),
    (10, 'https://images.example.com/property/10/bedroom.jpg', 'Master Bedroom', FALSE, '2025-01-10 10:05:00'),
    (11, 'https://images.example.com/property/11/living-room.jpg', 'Living Room', TRUE, '2025-01-10 10:00:00'),
    (11, 'https://images.example.com/property/11/bedroom.jpg', 'Master Bedroom', FALSE, '2025-01-10 10:05:00'),
    (12, 'https://images.example.com/property/12/living-room.jpg', 'Living Room', TRUE, '2025-01-10 10:00:00'),
    (12, 'https://images.example.com/property/12/bedroom.jpg', 'Master Bedroom', FALSE, '2025-01-10 10:05:00'),
    (13, 'https://images.example.com/property/13/living-room.jpg', 'Living Room', TRUE, '2025-01-10 10:00:00'),
    (13, 'https://images.example.com/property/13/bedroom.jpg', 'Master Bedroom', FALSE, '2025-01-10 10:05:00'),
    (14, 'https://images.example.com/property/14/living-room.jpg', 'Living Room', TRUE, '2025-01-10 10:00:00'),
    (14, 'https://images.example.com/property/14/bedroom.jpg', 'Master Bedroom', FALSE, '2025-01-10 10:05:00'),
    (15, 'https://images.example.com/property/15/living-room.jpg', 'Living Room', TRUE, '2025-01-10 10:00:00'),
    (15, 'https://images.example.com/property/15/bedroom.jpg', 'Master Bedroom', FALSE, '2025-01-10 10:05:00'),
    (16, 'https://images.example.com/property/16/living-room.jpg', 'Living Room', TRUE, '2025-01-10 10:00:00'),
    (16, 'https://images.example.com/property/16/bedroom.jpg', 'Master Bedroom', FALSE, '2025-01-10 10:05:00'),
    (17, 'https://images.example.com/property/17/living-room.jpg', 'Living Room', TRUE, '2025-01-10 10:00:00'),
    (17, 'https://images.example.com/property/17/bedroom.jpg', 'Master Bedroom', FALSE, '2025-01-10 10:05:00'),
    (18, 'https://images.example.com/property/18/living-room.jpg', 'Living Room', TRUE, '2025-01-10 10:00:00'),
    (18, 'https://images.example.com/property/18/bedroom.jpg', 'Master Bedroom', FALSE, '2025-01-10 10:05:00'),
    (19, 'https://images.example.com/property/19/living-room.jpg', 'Living Room', TRUE, '2025-01-10 10:00:00'),
    (19, 'https://images.example.com/property/19/bedroom.jpg', 'Master Bedroom', FALSE, '2025-01-10 10:05:00'),
    (20, 'https://images.example.com/property/20/living-room.jpg', 'Living Room', TRUE, '2025-01-10 10:00:00'),
    (20, 'https://images.example.com/property/20/bedroom.jpg', 'Master Bedroom', FALSE, '2025-01-10 10:05:00'),
    (21, 'https://images.example.com/property/21/living-room.jpg', 'Living Room', TRUE, '2025-01-10 10:00:00'),
    (21, 'https://images.example.com/property/21/bedroom.jpg', 'Master Bedroom', FALSE, '2025-01-10 10:05:00'),
    (22, 'https://images.example.com/property/22/living-room.jpg', 'Living Room', TRUE, '2025-01-10 10:00:00'),
    (22, 'https://images.example.com/property/22/bedroom.jpg', 'Master Bedroom', FALSE, '2025-01-10 10:05:00'),
    (23, 'https://images.example.com/property/23/living-room.jpg', 'Living Room', TRUE, '2025-01-10 10:00:00'),
    (23, 'https://images.example.com/property/23/bedroom.jpg', 'Master Bedroom', FALSE, '2025-01-10 10:05:00'),
    (24, 'https://images.example.com/property/24/living-room.jpg', 'Living Room', TRUE, '2025-01-10 10:00:00'),
    (24, 'https://images.example.com/property/24/bedroom.jpg', 'Master Bedroom', FALSE, '2025-01-10 10:05:00'),
    (25, 'https://images.example.com/property/25/living-room.jpg', 'Living Room', TRUE, '2025-01-10 10:00:00'),
    (25, 'https://images.example.com/property/25/bedroom.jpg', 'Master Bedroom', FALSE, '2025-01-10 10:05:00'),
    (26, 'https://images.example.com/property/26/living-room.jpg', 'Living Room', TRUE, '2025-01-10 10:00:00'),
    (26, 'https://images.example.com/property/26/bedroom.jpg', 'Master Bedroom', FALSE, '2025-01-10 10:05:00'),
    (27, 'https://images.example.com/property/27/living-room.jpg', 'Living Room', TRUE, '2025-01-10 10:00:00'),
    (27, 'https://images.example.com/property/27/bedroom.jpg', 'Master Bedroom', FALSE, '2025-01-10 10:05:00'),
    (28, 'https://images.example.com/property/28/living-room.jpg', 'Living Room', TRUE, '2025-01-10 10:00:00'),
    (28, 'https://images.example.com/property/28/bedroom.jpg', 'Master Bedroom', FALSE, '2025-01-10 10:05:00'),
    (29, 'https://images.example.com/property/29/living-room.jpg', 'Living Room', TRUE, '2025-01-10 10:00:00'),
    (29, 'https://images.example.com/property/29/bedroom.jpg', 'Master Bedroom', FALSE, '2025-01-10 10:05:00'),
    (30, 'https://images.example.com/property/30/living-room.jpg', 'Living Room', TRUE, '2025-01-10 10:00:00'),
    (30, 'https://images.example.com/property/30/bedroom.jpg', 'Master Bedroom', FALSE, '2025-01-10 10:05:00');

SELECT * FROM property_photos;

SELECT COUNT(*) AS total_property_photos
FROM property_photos;

-- ============================================================
-- 12. AMENITIES
-- Define reusable property features
-- Target: 20 records
-- ============================================================
INSERT INTO amenities
    (amenity_name, amenity_category)
VALUES
    ('Wi-Fi', 'Internet'),
    ('Air Conditioning', 'Comfort'),
    ('Kitchen', 'Kitchen'),
    ('Free Parking', 'Parking'),
    ('Swimming Pool', 'Entertainment'),
    ('Gym', 'Entertainment'),
    ('Washing Machine', 'Comfort'),
    ('Dryer', 'Comfort'),
    ('Heating', 'Comfort'),
    ('Television', 'Entertainment'),
    ('Workspace', 'Business'),
    ('Balcony', 'Outdoor'),
    ('Elevator', 'Accessibility'),
    ('Garden', 'Outdoor'),
    ('BBQ Grill', 'Outdoor'),
    ('Hair Dryer', 'Comfort'),
    ('Iron', 'Comfort'),
    ('Hot Water', 'Comfort'),
    ('Security Camera', 'Safety'),
    ('Smoke Alarm', 'Safety');

SELECT * FROM amenities;

SELECT COUNT(*) AS total_amenities
FROM amenities;

-- ============================================================
-- 13. PROPERTY AMENITIES
-- Connect properties to diverse amenities
-- Target: 90 records
-- ============================================================
INSERT INTO property_amenities
    (property_id, amenity_id)
VALUES
    (1, 1),
    (1, 2),
    (1, 8),
    (2, 1),
    (2, 3),
    (2, 15),
    (3, 1),
    (3, 4),
    (3, 3),
    (4, 1),
    (4, 5),
    (4, 10),
    (5, 1),
    (5, 6),
    (5, 17),
    (6, 1),
    (6, 7),
    (6, 5),
    (7, 1),
    (7, 8),
    (7, 12),
    (8, 1),
    (8, 9),
    (8, 19),
    (9, 1),
    (9, 10),
    (9, 7),
    (10, 1),
    (10, 11),
    (10, 14),
    (11, 1),
    (11, 12),
    (11, 2),
    (12, 1),
    (12, 13),
    (12, 9),
    (13, 1),
    (13, 14),
    (13, 16),
    (14, 1),
    (14, 15),
    (14, 4),
    (15, 1),
    (15, 16),
    (15, 11),
    (16, 1),
    (16, 17),
    (16, 18),
    (17, 1),
    (17, 18),
    (17, 6),
    (18, 1),
    (18, 19),
    (18, 13),
    (19, 1),
    (19, 5),
    (19, 10),
    (20, 1),
    (20, 2),
    (20, 8),
    (21, 1),
    (21, 3),
    (21, 15),
    (22, 1),
    (22, 4),
    (22, 3),
    (23, 1),
    (23, 5),
    (23, 10),
    (24, 1),
    (24, 6),
    (24, 17),
    (25, 1),
    (25, 7),
    (25, 5),
    (26, 1),
    (26, 8),
    (26, 12),
    (27, 1),
    (27, 9),
    (27, 19),
    (28, 1),
    (28, 10),
    (28, 7),
    (29, 1),
    (29, 11),
    (29, 14),
    (30, 1),
    (30, 12),
    (30, 2);

SELECT * FROM property_amenities;

SELECT COUNT(*) AS total_property_amenities
FROM property_amenities;

-- ============================================================
-- 14. HOUSE RULES
-- Define reusable conduct and safety rules
-- Target: 20 records
-- ============================================================
INSERT INTO house_rules
    (rule_name, rule_description)
VALUES
    ('No Smoking', 'No Smoking must be observed to protect guests, hosts, and neighbours.'),
    ('No Parties', 'No Parties must be observed to protect guests, hosts, and neighbours.'),
    ('No Pets', 'No Pets must be observed to protect guests, hosts, and neighbours.'),
    ('Pets Allowed', 'Pets Allowed must be observed to protect guests, hosts, and neighbours.'),
    ('Quiet Hours', 'Quiet Hours must be observed to protect guests, hosts, and neighbours.'),
    ('No Unregistered Guests', 'No Unregistered Guests must be observed to protect guests, hosts, and neighbours.'),
    ('Check-in After 2 PM', 'Check-in After 2 PM must be observed to protect guests, hosts, and neighbours.'),
    ('Check-out Before 11 AM', 'Check-out Before 11 AM must be observed to protect guests, hosts, and neighbours.'),
    ('No Shoes Indoors', 'No Shoes Indoors must be observed to protect guests, hosts, and neighbours.'),
    ('No Commercial Photography', 'No Commercial Photography must be observed to protect guests, hosts, and neighbours.'),
    ('Keep Common Areas Clean', 'Keep Common Areas Clean must be observed to protect guests, hosts, and neighbours.'),
    ('Dispose Waste Properly', 'Dispose Waste Properly must be observed to protect guests, hosts, and neighbours.'),
    ('No Loud Music', 'No Loud Music must be observed to protect guests, hosts, and neighbours.'),
    ('Children Allowed', 'Children Allowed must be observed to protect guests, hosts, and neighbours.'),
    ('No Open Flames', 'No Open Flames must be observed to protect guests, hosts, and neighbours.'),
    ('Use Pool at Own Risk', 'Use Pool at Own Risk must be observed to protect guests, hosts, and neighbours.'),
    ('Assigned Parking Only', 'Assigned Parking Only must be observed to protect guests, hosts, and neighbours.'),
    ('Lock Doors When Leaving', 'Lock Doors When Leaving must be observed to protect guests, hosts, and neighbours.'),
    ('Respect Neighbours', 'Respect Neighbours must be observed to protect guests, hosts, and neighbours.'),
    ('Report Damages Immediately', 'Report Damages Immediately must be observed to protect guests, hosts, and neighbours.');

SELECT * FROM house_rules;

SELECT COUNT(*) AS total_house_rules
FROM house_rules;

-- ============================================================
-- 15. PROPERTY HOUSE RULES
-- Apply two rules to every listing
-- Target: 60 records
-- ============================================================
INSERT INTO property_house_rules
    (property_id, rule_id)
VALUES
    (1, 1),
    (1, 5),
    (2, 1),
    (2, 6),
    (3, 1),
    (3, 5),
    (4, 1),
    (4, 6),
    (5, 1),
    (5, 5),
    (6, 1),
    (6, 6),
    (7, 1),
    (7, 5),
    (8, 1),
    (8, 6),
    (9, 1),
    (9, 5),
    (10, 1),
    (10, 6),
    (11, 1),
    (11, 5),
    (12, 1),
    (12, 6),
    (13, 1),
    (13, 5),
    (14, 1),
    (14, 6),
    (15, 1),
    (15, 5),
    (16, 1),
    (16, 6),
    (17, 1),
    (17, 5),
    (18, 1),
    (18, 6),
    (19, 1),
    (19, 5),
    (20, 1),
    (20, 6),
    (21, 1),
    (21, 5),
    (22, 1),
    (22, 6),
    (23, 1),
    (23, 5),
    (24, 1),
    (24, 6),
    (25, 1),
    (25, 5),
    (26, 1),
    (26, 6),
    (27, 1),
    (27, 5),
    (28, 1),
    (28, 6),
    (29, 1),
    (29, 5),
    (30, 1),
    (30, 6);

SELECT * FROM property_house_rules;

SELECT COUNT(*) AS total_property_house_rules
FROM property_house_rules;

-- ============================================================
-- 16. PAYMENT METHODS
-- Create safe fictional payment methods
-- Target: 30 records
-- ============================================================
INSERT INTO payment_methods
    (user_id, method_type, provider_name, masked_card_number, expiry_month, expiry_year, is_default)
VALUES
    (1, 'Credit Card', 'Visa', 'XXXX-XXXX-XXXX-4701', 2, 2029, TRUE),
    (2, 'Debit Card', 'Mastercard', 'XXXX-XXXX-XXXX-4702', 3, 2030, TRUE),
    (3, 'UPI', 'RuPay', NULL, NULL, NULL, TRUE),
    (4, 'Digital Wallet', 'PayPal', NULL, NULL, NULL, TRUE),
    (5, 'Credit Card', 'Google Pay', 'XXXX-XXXX-XXXX-4705', 6, 2029, TRUE),
    (6, 'Debit Card', 'PhonePe', 'XXXX-XXXX-XXXX-4706', 7, 2030, TRUE),
    (7, 'UPI', 'Visa', NULL, NULL, NULL, TRUE),
    (8, 'Digital Wallet', 'Mastercard', NULL, NULL, NULL, TRUE),
    (9, 'Credit Card', 'RuPay', 'XXXX-XXXX-XXXX-4709', 10, 2029, TRUE),
    (10, 'Debit Card', 'PayPal', 'XXXX-XXXX-XXXX-4710', 11, 2030, TRUE),
    (11, 'UPI', 'Google Pay', NULL, NULL, NULL, TRUE),
    (12, 'Digital Wallet', 'PhonePe', NULL, NULL, NULL, TRUE),
    (13, 'Credit Card', 'Visa', 'XXXX-XXXX-XXXX-4713', 2, 2029, TRUE),
    (14, 'Debit Card', 'Mastercard', 'XXXX-XXXX-XXXX-4714', 3, 2030, TRUE),
    (15, 'UPI', 'RuPay', NULL, NULL, NULL, TRUE),
    (16, 'Digital Wallet', 'PayPal', NULL, NULL, NULL, TRUE),
    (17, 'Credit Card', 'Google Pay', 'XXXX-XXXX-XXXX-4717', 6, 2029, TRUE),
    (18, 'Debit Card', 'PhonePe', 'XXXX-XXXX-XXXX-4718', 7, 2030, TRUE),
    (19, 'UPI', 'Visa', NULL, NULL, NULL, TRUE),
    (20, 'Digital Wallet', 'Mastercard', NULL, NULL, NULL, TRUE),
    (21, 'Credit Card', 'RuPay', 'XXXX-XXXX-XXXX-4721', 10, 2029, TRUE),
    (22, 'Debit Card', 'PayPal', 'XXXX-XXXX-XXXX-4722', 11, 2030, TRUE),
    (23, 'UPI', 'Google Pay', NULL, NULL, NULL, TRUE),
    (24, 'Digital Wallet', 'PhonePe', NULL, NULL, NULL, TRUE),
    (25, 'Credit Card', 'Visa', 'XXXX-XXXX-XXXX-4725', 2, 2029, TRUE),
    (26, 'Debit Card', 'Mastercard', 'XXXX-XXXX-XXXX-4726', 3, 2030, TRUE),
    (27, 'UPI', 'RuPay', NULL, NULL, NULL, TRUE),
    (28, 'Digital Wallet', 'PayPal', NULL, NULL, NULL, TRUE),
    (29, 'Credit Card', 'Google Pay', 'XXXX-XXXX-XXXX-4729', 6, 2029, TRUE),
    (30, 'Debit Card', 'PhonePe', 'XXXX-XXXX-XXXX-4730', 7, 2030, TRUE);

SELECT * FROM payment_methods;

SELECT COUNT(*) AS total_payment_methods
FROM payment_methods;

-- ============================================================
-- 17. BOOKINGS
-- Create completed, confirmed, and cancelled flows
-- Target: 60 records
-- ============================================================
INSERT INTO bookings
    (guest_id, property_id, check_in_date, check_out_date, number_of_guests, booking_status, total_nights, subtotal_amount, service_fee, cleaning_fee, total_amount, created_at, updated_at)
VALUES
    (7, 1, '2026-01-05', '2026-01-08', 2, 'Completed', 3, 9060, 1087.20, 550, 10697.20, '2025-12-01 09:00:00', '2025-12-01 11:00:00'),
    (14, 2, '2026-01-13', '2026-01-17', 3, 'Completed', 4, 12960, 1555.20, 700, 15215.20, '2025-12-09 09:00:00', '2025-12-09 11:00:00'),
    (1, 3, '2026-01-21', '2026-01-23', 4, 'Completed', 2, 6920, 830.40, 850, 8600.40, '2025-12-17 09:00:00', '2025-12-17 11:00:00'),
    (8, 4, '2026-01-29', '2026-02-01', 5, 'Completed', 3, 11040, 1324.80, 1000, 13364.80, '2025-12-25 09:00:00', '2025-12-25 11:00:00'),
    (15, 5, '2026-02-06', '2026-02-10', 2, 'Completed', 4, 15600, 1872.00, 400, 17872.00, '2026-01-02 09:00:00', '2026-01-02 11:00:00'),
    (2, 6, '2026-02-14', '2026-02-16', 1, 'Completed', 2, 8240, 988.80, 550, 9778.80, '2026-01-10 09:00:00', '2026-01-10 11:00:00'),
    (9, 7, '2026-02-22', '2026-02-25', 4, 'Completed', 3, 13020, 1562.40, 700, 15282.40, '2026-01-18 09:00:00', '2026-01-18 11:00:00'),
    (16, 8, '2026-03-02', '2026-03-06', 4, 'Completed', 4, 18240, 2188.80, 850, 21278.80, '2026-01-26 09:00:00', '2026-01-26 11:00:00'),
    (3, 9, '2026-03-10', '2026-03-12', 4, 'Completed', 2, 9560, 1147.20, 1000, 11707.20, '2026-02-03 09:00:00', '2026-02-03 11:00:00'),
    (10, 10, '2026-03-18', '2026-03-21', 1, 'Completed', 3, 15000, 1800.00, 400, 17200.00, '2026-02-11 09:00:00', '2026-02-11 11:00:00'),
    (17, 11, '2026-03-26', '2026-03-30', 3, 'Completed', 4, 20880, 2505.60, 550, 23935.60, '2026-02-19 09:00:00', '2026-02-19 11:00:00'),
    (4, 12, '2026-04-03', '2026-04-05', 1, 'Completed', 2, 10880, 1305.60, 700, 12885.60, '2026-02-27 09:00:00', '2026-02-27 11:00:00'),
    (11, 13, '2026-04-11', '2026-04-14', 4, 'Completed', 3, 16980, 2037.60, 850, 19867.60, '2026-03-07 09:00:00', '2026-03-07 11:00:00'),
    (18, 14, '2026-04-19', '2026-04-23', 3, 'Completed', 4, 23520, 2822.40, 1000, 27342.40, '2026-03-15 09:00:00', '2026-03-15 11:00:00'),
    (5, 15, '2026-04-27', '2026-04-29', 2, 'Completed', 2, 12200, 1464.00, 400, 14064.00, '2026-03-23 09:00:00', '2026-03-23 11:00:00'),
    (12, 16, '2026-05-05', '2026-05-08', 2, 'Completed', 3, 18960, 2275.20, 550, 21785.20, '2026-03-31 09:00:00', '2026-03-31 11:00:00'),
    (19, 17, '2026-05-13', '2026-05-17', 2, 'Completed', 4, 26160, 3139.20, 700, 29999.20, '2026-04-08 09:00:00', '2026-04-08 11:00:00'),
    (6, 18, '2026-05-21', '2026-05-23', 4, 'Completed', 2, 13520, 1622.40, 850, 15992.40, '2026-04-16 09:00:00', '2026-04-16 11:00:00'),
    (13, 19, '2026-05-29', '2026-06-01', 2, 'Completed', 3, 20940, 2512.80, 1000, 24452.80, '2026-04-24 09:00:00', '2026-04-24 11:00:00'),
    (1, 20, '2026-06-06', '2026-06-10', 1, 'Completed', 4, 28800, 3456.00, 400, 32656.00, '2026-05-02 09:00:00', '2026-05-02 11:00:00'),
    (7, 21, '2026-10-01', '2026-10-03', 1, 'Confirmed', 2, 14840, 1780.80, 550, 17170.80, '2026-08-27 09:00:00', '2026-08-27 11:00:00'),
    (14, 22, '2026-10-06', '2026-10-09', 3, 'Confirmed', 3, 22920, 2750.40, 700, 26370.40, '2026-09-01 09:00:00', '2026-09-01 11:00:00'),
    (1, 23, '2026-10-11', '2026-10-15', 4, 'Confirmed', 4, 31440, 3772.80, 850, 36062.80, '2026-09-06 09:00:00', '2026-09-06 11:00:00'),
    (8, 24, '2026-10-16', '2026-10-18', 1, 'Confirmed', 2, 16160, 1939.20, 1000, 19099.20, '2026-09-11 09:00:00', '2026-09-11 11:00:00'),
    (15, 25, '2026-10-21', '2026-10-24', 2, 'Confirmed', 3, 24900, 2988.00, 400, 28288.00, '2026-09-16 09:00:00', '2026-09-16 11:00:00'),
    (2, 26, '2026-10-26', '2026-10-30', 3, 'Confirmed', 4, 34080, 4089.60, 550, 38719.60, '2026-09-21 09:00:00', '2026-09-21 11:00:00'),
    (9, 27, '2026-10-31', '2026-11-02', 4, 'Confirmed', 2, 17480, 2097.60, 700, 20277.60, '2026-09-26 09:00:00', '2026-09-26 11:00:00'),
    (16, 28, '2026-11-05', '2026-11-08', 4, 'Confirmed', 3, 26880, 3225.60, 850, 30955.60, '2026-10-01 09:00:00', '2026-10-01 11:00:00'),
    (3, 29, '2026-11-10', '2026-11-14', 6, 'Confirmed', 4, 36720, 4406.40, 1000, 42126.40, '2026-10-06 09:00:00', '2026-10-06 11:00:00'),
    (10, 30, '2026-11-15', '2026-11-17', 1, 'Confirmed', 2, 18800, 2256.00, 400, 21456.00, '2026-10-11 09:00:00', '2026-10-11 11:00:00'),
    (17, 1, '2026-11-20', '2026-11-23', 2, 'Confirmed', 3, 9060, 1087.20, 550, 10697.20, '2026-10-16 09:00:00', '2026-10-16 11:00:00'),
    (4, 2, '2026-11-25', '2026-11-29', 1, 'Confirmed', 4, 12960, 1555.20, 700, 15215.20, '2026-10-21 09:00:00', '2026-10-21 11:00:00'),
    (11, 3, '2026-11-30', '2026-12-02', 4, 'Confirmed', 2, 6920, 830.40, 850, 8600.40, '2026-10-26 09:00:00', '2026-10-26 11:00:00'),
    (18, 4, '2026-12-05', '2026-12-08', 5, 'Confirmed', 3, 11040, 1324.80, 1000, 13364.80, '2026-10-31 09:00:00', '2026-10-31 11:00:00'),
    (5, 5, '2026-12-10', '2026-12-14', 2, 'Confirmed', 4, 15600, 1872.00, 400, 17872.00, '2026-11-05 09:00:00', '2026-11-05 11:00:00'),
    (12, 6, '2026-12-15', '2026-12-17', 1, 'Confirmed', 2, 8240, 988.80, 550, 9778.80, '2026-11-10 09:00:00', '2026-11-10 11:00:00'),
    (19, 7, '2026-12-20', '2026-12-23', 2, 'Confirmed', 3, 13020, 1562.40, 700, 15282.40, '2026-11-15 09:00:00', '2026-11-15 11:00:00'),
    (6, 8, '2026-12-25', '2026-12-29', 4, 'Confirmed', 4, 18240, 2188.80, 850, 21278.80, '2026-11-20 09:00:00', '2026-11-20 11:00:00'),
    (13, 9, '2026-12-30', '2027-01-01', 4, 'Confirmed', 2, 9560, 1147.20, 1000, 11707.20, '2026-11-25 09:00:00', '2026-11-25 11:00:00'),
    (20, 10, '2027-01-04', '2027-01-07', 1, 'Confirmed', 3, 15000, 1800.00, 400, 17200.00, '2026-11-30 09:00:00', '2026-11-30 11:00:00'),
    (7, 11, '2026-09-01', '2026-09-05', 3, 'Cancelled', 4, 20880, 2505.60, 550, 23935.60, '2026-07-28 09:00:00', '2026-07-28 11:00:00'),
    (14, 12, '2026-09-05', '2026-09-07', 3, 'Cancelled', 2, 10880, 1305.60, 700, 12885.60, '2026-08-01 09:00:00', '2026-08-01 11:00:00'),
    (1, 13, '2026-09-09', '2026-09-12', 4, 'Cancelled', 3, 16980, 2037.60, 850, 19867.60, '2026-08-05 09:00:00', '2026-08-05 11:00:00'),
    (8, 14, '2026-09-13', '2026-09-17', 3, 'Cancelled', 4, 23520, 2822.40, 1000, 27342.40, '2026-08-09 09:00:00', '2026-08-09 11:00:00'),
    (16, 15, '2026-09-17', '2026-09-19', 2, 'Cancelled', 2, 12200, 1464.00, 400, 14064.00, '2026-08-13 09:00:00', '2026-08-13 11:00:00'),
    (2, 16, '2026-09-21', '2026-09-24', 2, 'Cancelled', 3, 18960, 2275.20, 550, 21785.20, '2026-08-17 09:00:00', '2026-08-17 11:00:00'),
    (9, 17, '2026-09-25', '2026-09-29', 4, 'Cancelled', 4, 26160, 3139.20, 700, 29999.20, '2026-08-21 09:00:00', '2026-08-21 11:00:00'),
    (16, 18, '2026-09-29', '2026-10-01', 4, 'Cancelled', 2, 13520, 1622.40, 850, 15992.40, '2026-08-25 09:00:00', '2026-08-25 11:00:00'),
    (3, 19, '2026-10-03', '2026-10-06', 2, 'Cancelled', 3, 20940, 2512.80, 1000, 24452.80, '2026-08-29 09:00:00', '2026-08-29 11:00:00'),
    (10, 20, '2026-10-07', '2026-10-11', 1, 'Cancelled', 4, 28800, 3456.00, 400, 32656.00, '2026-09-02 09:00:00', '2026-09-02 11:00:00'),
    (17, 21, '2026-10-11', '2026-10-13', 1, 'Cancelled', 2, 14840, 1780.80, 550, 17170.80, '2026-09-06 09:00:00', '2026-09-06 11:00:00'),
    (4, 22, '2026-10-15', '2026-10-18', 1, 'Cancelled', 3, 22920, 2750.40, 700, 26370.40, '2026-09-10 09:00:00', '2026-09-10 11:00:00'),
    (11, 23, '2026-10-19', '2026-10-23', 4, 'Cancelled', 4, 31440, 3772.80, 850, 36062.80, '2026-09-14 09:00:00', '2026-09-14 11:00:00'),
    (18, 24, '2026-10-23', '2026-10-25', 1, 'Cancelled', 2, 16160, 1939.20, 1000, 19099.20, '2026-09-18 09:00:00', '2026-09-18 11:00:00'),
    (5, 25, '2026-10-27', '2026-10-30', 2, 'Cancelled', 3, 24900, 2988.00, 400, 28288.00, '2026-09-22 09:00:00', '2026-09-22 11:00:00'),
    (12, 26, '2026-10-31', '2026-11-04', 3, 'Cancelled', 4, 34080, 4089.60, 550, 38719.60, '2026-09-26 09:00:00', '2026-09-26 11:00:00'),
    (19, 27, '2026-11-04', '2026-11-06', 2, 'Cancelled', 2, 17480, 2097.60, 700, 20277.60, '2026-09-30 09:00:00', '2026-09-30 11:00:00'),
    (6, 28, '2026-11-08', '2026-11-11', 4, 'Cancelled', 3, 26880, 3225.60, 850, 30955.60, '2026-10-04 09:00:00', '2026-10-04 11:00:00'),
    (13, 29, '2026-11-12', '2026-11-16', 6, 'Cancelled', 4, 36720, 4406.40, 1000, 42126.40, '2026-10-08 09:00:00', '2026-10-08 11:00:00'),
    (20, 30, '2026-11-16', '2026-11-18', 1, 'Cancelled', 2, 18800, 2256.00, 400, 21456.00, '2026-10-12 09:00:00', '2026-10-12 11:00:00');

SELECT * FROM bookings;

SELECT COUNT(*) AS total_bookings
FROM bookings;

-- ============================================================
-- 18. PAYMENTS
-- Record forty unique booking payments
-- Target: 40 records
-- ============================================================
INSERT INTO payments
    (booking_id, payment_method_id, payment_amount, payment_status, transaction_reference, paid_at)
VALUES
    (1, 7, 10697.20, 'Paid', 'TXN-AIR-2026-0001', '2025-12-01 09:10:00'),
    (2, 24, 15215.20, 'Paid', 'TXN-AIR-2026-0002', '2025-12-09 09:10:00'),
    (3, 1, 8600.40, 'Paid', 'TXN-AIR-2026-0003', '2025-12-17 09:10:00'),
    (4, 8, 13364.80, 'Paid', 'TXN-AIR-2026-0004', '2025-12-25 09:10:00'),
    (5, 25, 17872.00, 'Paid', 'TXN-AIR-2026-0005', '2026-01-02 09:10:00'),
    (6, 2, 9778.80, 'Paid', 'TXN-AIR-2026-0006', '2026-01-10 09:10:00'),
    (7, 9, 15282.40, 'Paid', 'TXN-AIR-2026-0007', '2026-01-18 09:10:00'),
    (8, 26, 21278.80, 'Paid', 'TXN-AIR-2026-0008', '2026-01-26 09:10:00'),
    (9, 3, 11707.20, 'Paid', 'TXN-AIR-2026-0009', '2026-02-03 09:10:00'),
    (10, 10, 17200.00, 'Paid', 'TXN-AIR-2026-0010', '2026-02-11 09:10:00'),
    (11, 27, 23935.60, 'Paid', 'TXN-AIR-2026-0011', '2026-02-19 09:10:00'),
    (12, 4, 12885.60, 'Paid', 'TXN-AIR-2026-0012', '2026-02-27 09:10:00'),
    (13, 21, 19867.60, 'Paid', 'TXN-AIR-2026-0013', '2026-03-07 09:10:00'),
    (14, 28, 27342.40, 'Paid', 'TXN-AIR-2026-0014', '2026-03-15 09:10:00'),
    (15, 5, 14064.00, 'Paid', 'TXN-AIR-2026-0015', '2026-03-23 09:10:00'),
    (16, 22, 21785.20, 'Paid', 'TXN-AIR-2026-0016', '2026-03-31 09:10:00'),
    (17, 29, 29999.20, 'Paid', 'TXN-AIR-2026-0017', '2026-04-08 09:10:00'),
    (18, 6, 15992.40, 'Paid', 'TXN-AIR-2026-0018', '2026-04-16 09:10:00'),
    (19, 23, 24452.80, 'Paid', 'TXN-AIR-2026-0019', '2026-04-24 09:10:00'),
    (20, 1, 32656.00, 'Paid', 'TXN-AIR-2026-0020', '2026-05-02 09:10:00'),
    (21, 7, 17170.80, 'Paid', 'TXN-AIR-2026-0021', '2026-08-27 09:10:00'),
    (22, 24, 26370.40, 'Paid', 'TXN-AIR-2026-0022', '2026-09-01 09:10:00'),
    (23, 1, 36062.80, 'Paid', 'TXN-AIR-2026-0023', '2026-09-06 09:10:00'),
    (24, 8, 19099.20, 'Paid', 'TXN-AIR-2026-0024', '2026-09-11 09:10:00'),
    (25, 25, 28288.00, 'Paid', 'TXN-AIR-2026-0025', '2026-09-16 09:10:00'),
    (26, 2, 38719.60, 'Paid', 'TXN-AIR-2026-0026', '2026-09-21 09:10:00'),
    (27, 9, 20277.60, 'Paid', 'TXN-AIR-2026-0027', '2026-09-26 09:10:00'),
    (28, 26, 30955.60, 'Paid', 'TXN-AIR-2026-0028', '2026-10-01 09:10:00'),
    (29, 3, 42126.40, 'Paid', 'TXN-AIR-2026-0029', '2026-10-06 09:10:00'),
    (30, 10, 21456.00, 'Paid', 'TXN-AIR-2026-0030', '2026-10-11 09:10:00'),
    (41, 7, 23935.60, 'Refunded', 'TXN-AIR-2026-0041', '2026-07-28 09:10:00'),
    (42, 24, 12885.60, 'Refunded', 'TXN-AIR-2026-0042', '2026-08-01 09:10:00'),
    (43, 1, 19867.60, 'Refunded', 'TXN-AIR-2026-0043', '2026-08-05 09:10:00'),
    (44, 8, 27342.40, 'Refunded', 'TXN-AIR-2026-0044', '2026-08-09 09:10:00'),
    (45, 26, 14064.00, 'Refunded', 'TXN-AIR-2026-0045', '2026-08-13 09:10:00'),
    (46, 2, 21785.20, 'Refunded', 'TXN-AIR-2026-0046', '2026-08-17 09:10:00'),
    (47, 9, 29999.20, 'Refunded', 'TXN-AIR-2026-0047', '2026-08-21 09:10:00'),
    (48, 26, 15992.40, 'Refunded', 'TXN-AIR-2026-0048', '2026-08-25 09:10:00'),
    (49, 3, 24452.80, 'Refunded', 'TXN-AIR-2026-0049', '2026-08-29 09:10:00'),
    (50, 10, 32656.00, 'Refunded', 'TXN-AIR-2026-0050', '2026-09-02 09:10:00');

SELECT * FROM payments;

SELECT COUNT(*) AS total_payments
FROM payments;

-- ============================================================
-- 19. HOST PAYOUTS
-- Settle completed bookings with owning hosts
-- Target: 20 records
-- ============================================================
INSERT INTO host_payouts
    (booking_id, host_id, payout_amount, platform_commission, payout_status, scheduled_release_at, released_at)
VALUES
    (1, 1, 9092.62, 1604.58, 'Released', '2026-01-09 10:00:00', '2026-01-09 10:20:00'),
    (2, 2, 12932.92, 2282.28, 'Released', '2026-01-18 10:00:00', '2026-01-18 10:20:00'),
    (3, 3, 7310.34, 1290.06, 'Released', '2026-01-24 10:00:00', '2026-01-24 10:20:00'),
    (4, 4, 11360.08, 2004.72, 'Released', '2026-02-02 10:00:00', '2026-02-02 10:20:00'),
    (5, 5, 15191.20, 2680.80, 'Released', '2026-02-11 10:00:00', '2026-02-11 10:20:00'),
    (6, 6, 8311.98, 1466.82, 'Released', '2026-02-17 10:00:00', '2026-02-17 10:20:00'),
    (7, 7, 12990.04, 2292.36, 'Released', '2026-02-26 10:00:00', '2026-02-26 10:20:00'),
    (8, 8, 18086.98, 3191.82, 'Released', '2026-03-07 10:00:00', '2026-03-07 10:20:00'),
    (9, 9, 9951.12, 1756.08, 'Released', '2026-03-13 10:00:00', '2026-03-13 10:20:00'),
    (10, 10, 14620.00, 2580.00, 'Released', '2026-03-22 10:00:00', '2026-03-22 10:20:00'),
    (11, 11, 20345.26, 3590.34, 'Released', '2026-03-31 10:00:00', '2026-03-31 10:20:00'),
    (12, 12, 10952.76, 1932.84, 'Released', '2026-04-06 10:00:00', '2026-04-06 10:20:00'),
    (13, 13, 16887.46, 2980.14, 'Released', '2026-04-15 10:00:00', '2026-04-15 10:20:00'),
    (14, 14, 23241.04, 4101.36, 'Released', '2026-04-24 10:00:00', '2026-04-24 10:20:00'),
    (15, 15, 11954.40, 2109.60, 'Released', '2026-04-30 10:00:00', '2026-04-30 10:20:00'),
    (16, 16, 18517.42, 3267.78, 'Released', '2026-05-09 10:00:00', '2026-05-09 10:20:00'),
    (17, 17, 25499.32, 4499.88, 'Released', '2026-05-18 10:00:00', '2026-05-18 10:20:00'),
    (18, 18, 13593.54, 2398.86, 'Released', '2026-05-24 10:00:00', '2026-05-24 10:20:00'),
    (19, 19, 20784.88, 3667.92, 'Released', '2026-06-02 10:00:00', '2026-06-02 10:20:00'),
    (20, 20, 27757.60, 4898.40, 'Released', '2026-06-11 10:00:00', '2026-06-11 10:20:00');

SELECT * FROM host_payouts;

SELECT COUNT(*) AS total_host_payouts
FROM host_payouts;

-- ============================================================
-- 20. CANCELLATIONS
-- Document cancelled bookings and refunds
-- Target: 20 records
-- ============================================================
INSERT INTO cancellations
    (booking_id, cancelled_by_user_id, cancellation_reason, refund_amount, cancelled_at)
VALUES
    (41, 7, 'Travel plans changed', 0, '2026-07-30 09:00:00'),
    (42, 24, 'Medical emergency', 12885.60, '2026-08-03 09:00:00'),
    (43, 1, 'Incorrect booking dates', 9933.80, '2026-08-07 09:00:00'),
    (44, 8, 'Guest requested cancellation', 0, '2026-08-11 09:00:00'),
    (45, 26, 'Host unavailable', 14064.00, '2026-08-15 09:00:00'),
    (46, 2, 'Duplicate booking', 10892.60, '2026-08-19 09:00:00'),
    (47, 9, 'Weather disruption', 0, '2026-08-23 09:00:00'),
    (48, 26, 'Personal emergency', 15992.40, '2026-08-27 09:00:00'),
    (49, 3, 'Travel plans changed', 12226.40, '2026-08-31 09:00:00'),
    (50, 10, 'Medical emergency', 0, '2026-09-04 09:00:00'),
    (51, 27, 'Incorrect booking dates', 17170.80, '2026-09-08 09:00:00'),
    (52, 4, 'Guest requested cancellation', 13185.20, '2026-09-12 09:00:00'),
    (53, 21, 'Host unavailable', 0, '2026-09-16 09:00:00'),
    (54, 28, 'Duplicate booking', 19099.20, '2026-09-20 09:00:00'),
    (55, 5, 'Weather disruption', 14144.00, '2026-09-24 09:00:00'),
    (56, 22, 'Personal emergency', 0, '2026-09-28 09:00:00'),
    (57, 29, 'Travel plans changed', 20277.60, '2026-10-02 09:00:00'),
    (58, 6, 'Medical emergency', 15477.80, '2026-10-06 09:00:00'),
    (59, 23, 'Incorrect booking dates', 0, '2026-10-10 09:00:00'),
    (60, 30, 'Guest requested cancellation', 21456.00, '2026-10-14 09:00:00');

SELECT * FROM cancellations;

SELECT COUNT(*) AS total_cancellations
FROM cancellations;

-- ============================================================
-- 21. REVIEWS
-- Capture guest, host, and property feedback
-- Target: 50 records
-- ============================================================
INSERT INTO reviews
    (booking_id, reviewer_user_id, reviewed_user_id, property_id, rating, review_comment, review_type, created_at)
VALUES
    (1, 7, 11, 1, 4, 'Comfortable stay with clear host communication.', 'Guest-to-Host', '2026-01-08 15:00:00'),
    (1, 11, 7, 1, 5, 'Guest respected the property and house rules.', 'Host-to-Guest', '2026-01-08 17:00:00'),
    (2, 24, 12, 2, 5, 'Comfortable stay with clear host communication.', 'Guest-to-Host', '2026-01-17 15:00:00'),
    (2, 12, 24, 2, 4, 'Guest respected the property and house rules.', 'Host-to-Guest', '2026-01-17 17:00:00'),
    (3, 1, 13, 3, 3, 'Comfortable stay with clear host communication.', 'Guest-to-Host', '2026-01-23 15:00:00'),
    (3, 13, 1, 3, 5, 'Guest respected the property and house rules.', 'Host-to-Guest', '2026-01-23 17:00:00'),
    (4, 8, 14, 4, 4, 'Comfortable stay with clear host communication.', 'Guest-to-Host', '2026-02-01 15:00:00'),
    (4, 14, 8, 4, 4, 'Guest respected the property and house rules.', 'Host-to-Guest', '2026-02-01 17:00:00'),
    (5, 25, 15, 5, 5, 'Comfortable stay with clear host communication.', 'Guest-to-Host', '2026-02-10 15:00:00'),
    (5, 15, 25, 5, 5, 'Guest respected the property and house rules.', 'Host-to-Guest', '2026-02-10 17:00:00'),
    (6, 2, 16, 6, 3, 'Comfortable stay with clear host communication.', 'Guest-to-Host', '2026-02-16 15:00:00'),
    (6, 16, 2, 6, 4, 'Guest respected the property and house rules.', 'Host-to-Guest', '2026-02-16 17:00:00'),
    (7, 9, 17, 7, 4, 'Comfortable stay with clear host communication.', 'Guest-to-Host', '2026-02-25 15:00:00'),
    (7, 17, 9, 7, 5, 'Guest respected the property and house rules.', 'Host-to-Guest', '2026-02-25 17:00:00'),
    (8, 26, 18, 8, 5, 'Comfortable stay with clear host communication.', 'Guest-to-Host', '2026-03-06 15:00:00'),
    (8, 18, 26, 8, 4, 'Guest respected the property and house rules.', 'Host-to-Guest', '2026-03-06 17:00:00'),
    (9, 3, 19, 9, 3, 'Comfortable stay with clear host communication.', 'Guest-to-Host', '2026-03-12 15:00:00'),
    (9, 19, 3, 9, 5, 'Guest respected the property and house rules.', 'Host-to-Guest', '2026-03-12 17:00:00'),
    (10, 10, 20, 10, 4, 'Comfortable stay with clear host communication.', 'Guest-to-Host', '2026-03-21 15:00:00'),
    (10, 20, 10, 10, 4, 'Guest respected the property and house rules.', 'Host-to-Guest', '2026-03-21 17:00:00'),
    (11, 27, 21, 11, 5, 'Comfortable stay with clear host communication.', 'Guest-to-Host', '2026-03-30 15:00:00'),
    (11, 21, 27, 11, 5, 'Guest respected the property and house rules.', 'Host-to-Guest', '2026-03-30 17:00:00'),
    (12, 4, 22, 12, 3, 'Comfortable stay with clear host communication.', 'Guest-to-Host', '2026-04-05 15:00:00'),
    (12, 22, 4, 12, 4, 'Guest respected the property and house rules.', 'Host-to-Guest', '2026-04-05 17:00:00'),
    (13, 21, 23, 13, 4, 'Comfortable stay with clear host communication.', 'Guest-to-Host', '2026-04-14 15:00:00'),
    (13, 23, 21, 13, 5, 'Guest respected the property and house rules.', 'Host-to-Guest', '2026-04-14 17:00:00'),
    (14, 28, 24, 14, 5, 'Comfortable stay with clear host communication.', 'Guest-to-Host', '2026-04-23 15:00:00'),
    (14, 24, 28, 14, 4, 'Guest respected the property and house rules.', 'Host-to-Guest', '2026-04-23 17:00:00'),
    (15, 5, 25, 15, 3, 'Comfortable stay with clear host communication.', 'Guest-to-Host', '2026-04-29 15:00:00'),
    (15, 25, 5, 15, 5, 'Guest respected the property and house rules.', 'Host-to-Guest', '2026-04-29 17:00:00'),
    (16, 22, 26, 16, 4, 'Comfortable stay with clear host communication.', 'Guest-to-Host', '2026-05-08 15:00:00'),
    (16, 26, 22, 16, 4, 'Guest respected the property and house rules.', 'Host-to-Guest', '2026-05-08 17:00:00'),
    (17, 29, 27, 17, 5, 'Comfortable stay with clear host communication.', 'Guest-to-Host', '2026-05-17 15:00:00'),
    (17, 27, 29, 17, 5, 'Guest respected the property and house rules.', 'Host-to-Guest', '2026-05-17 17:00:00'),
    (18, 6, 28, 18, 3, 'Comfortable stay with clear host communication.', 'Guest-to-Host', '2026-05-23 15:00:00'),
    (18, 28, 6, 18, 4, 'Guest respected the property and house rules.', 'Host-to-Guest', '2026-05-23 17:00:00'),
    (19, 23, 29, 19, 4, 'Comfortable stay with clear host communication.', 'Guest-to-Host', '2026-06-01 15:00:00'),
    (19, 29, 23, 19, 5, 'Guest respected the property and house rules.', 'Host-to-Guest', '2026-06-01 17:00:00'),
    (20, 1, 30, 20, 5, 'Comfortable stay with clear host communication.', 'Guest-to-Host', '2026-06-10 15:00:00'),
    (20, 30, 1, 20, 4, 'Guest respected the property and house rules.', 'Host-to-Guest', '2026-06-10 17:00:00'),
    (1, 7, 11, 1, 4, 'The listing accurately represented the completed stay.', 'Property', '2026-01-09 10:00:00'),
    (2, 24, 12, 2, 5, 'The listing accurately represented the completed stay.', 'Property', '2026-01-18 10:00:00'),
    (3, 1, 13, 3, 3, 'The listing accurately represented the completed stay.', 'Property', '2026-01-24 10:00:00'),
    (4, 8, 14, 4, 4, 'The listing accurately represented the completed stay.', 'Property', '2026-02-02 10:00:00'),
    (5, 25, 15, 5, 5, 'The listing accurately represented the completed stay.', 'Property', '2026-02-11 10:00:00'),
    (6, 2, 16, 6, 3, 'The listing accurately represented the completed stay.', 'Property', '2026-02-17 10:00:00'),
    (7, 9, 17, 7, 4, 'The listing accurately represented the completed stay.', 'Property', '2026-02-26 10:00:00'),
    (8, 26, 18, 8, 5, 'The listing accurately represented the completed stay.', 'Property', '2026-03-07 10:00:00'),
    (9, 3, 19, 9, 3, 'The listing accurately represented the completed stay.', 'Property', '2026-03-13 10:00:00'),
    (10, 10, 20, 10, 4, 'The listing accurately represented the completed stay.', 'Property', '2026-03-22 10:00:00');

SELECT * FROM reviews;

SELECT COUNT(*) AS total_reviews
FROM reviews;

-- ============================================================
-- 22. MESSAGES
-- Create logical guest-host booking conversations
-- Target: 70 records
-- ============================================================
INSERT INTO messages
    (booking_id, sender_user_id, receiver_user_id, message_body, sent_at, read_at)
VALUES
    (1, 7, 11, 'Could you confirm the arrival instructions?', '2025-12-31 10:00:00', '2025-12-31 10:25:00'),
    (2, 24, 12, 'Is parking available?', '2026-01-08 10:00:00', '2026-01-08 10:25:00'),
    (3, 1, 13, 'Is early check-in available?', '2026-01-16 10:00:00', '2026-01-16 10:25:00'),
    (4, 8, 14, 'Could you confirm the arrival instructions?', '2026-01-24 10:00:00', '2026-01-24 10:25:00'),
    (5, 25, 15, 'Is parking available?', '2026-02-01 10:00:00', '2026-02-01 10:25:00'),
    (6, 2, 16, 'Is early check-in available?', '2026-02-09 10:00:00', '2026-02-09 10:25:00'),
    (7, 9, 17, 'Could you confirm the arrival instructions?', '2026-02-17 10:00:00', NULL),
    (8, 26, 18, 'Is parking available?', '2026-02-25 10:00:00', '2026-02-25 10:25:00'),
    (9, 3, 19, 'Is early check-in available?', '2026-03-05 10:00:00', '2026-03-05 10:25:00'),
    (10, 10, 20, 'Could you confirm the arrival instructions?', '2026-03-13 10:00:00', '2026-03-13 10:25:00'),
    (11, 27, 21, 'Is parking available?', '2026-03-21 10:00:00', '2026-03-21 10:25:00'),
    (12, 4, 22, 'Is early check-in available?', '2026-03-29 10:00:00', '2026-03-29 10:25:00'),
    (13, 21, 23, 'Could you confirm the arrival instructions?', '2026-04-06 10:00:00', '2026-04-06 10:25:00'),
    (14, 28, 24, 'Is parking available?', '2026-04-14 10:00:00', NULL),
    (15, 5, 25, 'Is early check-in available?', '2026-04-22 10:00:00', '2026-04-22 10:25:00'),
    (16, 22, 26, 'Could you confirm the arrival instructions?', '2026-04-30 10:00:00', '2026-04-30 10:25:00'),
    (17, 29, 27, 'Is parking available?', '2026-05-08 10:00:00', '2026-05-08 10:25:00'),
    (18, 6, 28, 'Is early check-in available?', '2026-05-16 10:00:00', '2026-05-16 10:25:00'),
    (19, 23, 29, 'Could you confirm the arrival instructions?', '2026-05-24 10:00:00', '2026-05-24 10:25:00'),
    (20, 1, 30, 'Is parking available?', '2026-06-01 10:00:00', '2026-06-01 10:25:00'),
    (21, 7, 11, 'Is early check-in available?', '2026-09-26 10:00:00', NULL),
    (22, 24, 12, 'Could you confirm the arrival instructions?', '2026-10-01 10:00:00', '2026-10-01 10:25:00'),
    (23, 1, 13, 'Is parking available?', '2026-10-06 10:00:00', '2026-10-06 10:25:00'),
    (24, 8, 14, 'Is early check-in available?', '2026-10-11 10:00:00', '2026-10-11 10:25:00'),
    (25, 25, 15, 'Could you confirm the arrival instructions?', '2026-10-16 10:00:00', '2026-10-16 10:25:00'),
    (26, 2, 16, 'Is parking available?', '2026-10-21 10:00:00', '2026-10-21 10:25:00'),
    (27, 9, 17, 'Is early check-in available?', '2026-10-26 10:00:00', '2026-10-26 10:25:00'),
    (28, 26, 18, 'Could you confirm the arrival instructions?', '2026-10-31 10:00:00', NULL),
    (29, 3, 19, 'Is parking available?', '2026-11-05 10:00:00', '2026-11-05 10:25:00'),
    (30, 10, 20, 'Is early check-in available?', '2026-11-10 10:00:00', '2026-11-10 10:25:00'),
    (31, 27, 11, 'Could you confirm the arrival instructions?', '2026-11-15 10:00:00', '2026-11-15 10:25:00'),
    (32, 4, 12, 'Is parking available?', '2026-11-20 10:00:00', '2026-11-20 10:25:00'),
    (33, 21, 13, 'Is early check-in available?', '2026-11-25 10:00:00', '2026-11-25 10:25:00'),
    (34, 28, 14, 'Could you confirm the arrival instructions?', '2026-11-30 10:00:00', '2026-11-30 10:25:00'),
    (35, 5, 15, 'Is parking available?', '2026-12-05 10:00:00', NULL),
    (36, 22, 16, 'Is early check-in available?', '2026-12-10 10:00:00', '2026-12-10 10:25:00'),
    (37, 29, 17, 'Could you confirm the arrival instructions?', '2026-12-15 10:00:00', '2026-12-15 10:25:00'),
    (38, 6, 18, 'Is parking available?', '2026-12-20 10:00:00', '2026-12-20 10:25:00'),
    (39, 23, 19, 'Is early check-in available?', '2026-12-25 10:00:00', '2026-12-25 10:25:00'),
    (40, 30, 20, 'Could you confirm the arrival instructions?', '2026-12-30 10:00:00', '2026-12-30 10:25:00'),
    (41, 7, 21, 'Is parking available?', '2026-08-27 10:00:00', '2026-08-27 10:25:00'),
    (42, 24, 22, 'Is early check-in available?', '2026-08-31 10:00:00', NULL),
    (43, 1, 23, 'Could you confirm the arrival instructions?', '2026-09-04 10:00:00', '2026-09-04 10:25:00'),
    (44, 8, 24, 'Is parking available?', '2026-09-08 10:00:00', '2026-09-08 10:25:00'),
    (45, 26, 25, 'Is early check-in available?', '2026-09-12 10:00:00', '2026-09-12 10:25:00'),
    (46, 2, 26, 'Could you confirm the arrival instructions?', '2026-09-16 10:00:00', '2026-09-16 10:25:00'),
    (47, 9, 27, 'Is parking available?', '2026-09-20 10:00:00', '2026-09-20 10:25:00'),
    (48, 26, 28, 'Is early check-in available?', '2026-09-24 10:00:00', '2026-09-24 10:25:00'),
    (49, 3, 29, 'Could you confirm the arrival instructions?', '2026-09-28 10:00:00', NULL),
    (50, 10, 30, 'Is parking available?', '2026-10-02 10:00:00', '2026-10-02 10:25:00'),
    (51, 27, 11, 'Is early check-in available?', '2026-10-06 10:00:00', '2026-10-06 10:25:00'),
    (52, 4, 12, 'Could you confirm the arrival instructions?', '2026-10-10 10:00:00', '2026-10-10 10:25:00'),
    (53, 21, 13, 'Is parking available?', '2026-10-14 10:00:00', '2026-10-14 10:25:00'),
    (54, 28, 14, 'Is early check-in available?', '2026-10-18 10:00:00', '2026-10-18 10:25:00'),
    (55, 5, 15, 'Could you confirm the arrival instructions?', '2026-10-22 10:00:00', '2026-10-22 10:25:00'),
    (56, 22, 16, 'Is parking available?', '2026-10-26 10:00:00', NULL),
    (57, 29, 17, 'Is early check-in available?', '2026-10-30 10:00:00', '2026-10-30 10:25:00'),
    (58, 6, 18, 'Could you confirm the arrival instructions?', '2026-11-03 10:00:00', '2026-11-03 10:25:00'),
    (59, 23, 19, 'Is parking available?', '2026-11-07 10:00:00', '2026-11-07 10:25:00'),
    (60, 30, 20, 'Is early check-in available?', '2026-11-11 10:00:00', '2026-11-11 10:25:00'),
    (1, 11, 7, 'Yes, I have sent the requested arrival information.', '2025-12-31 11:00:00', '2025-12-31 11:15:00'),
    (2, 12, 24, 'Yes, I have sent the requested arrival information.', '2026-01-08 11:00:00', '2026-01-08 11:15:00'),
    (3, 13, 1, 'Yes, I have sent the requested arrival information.', '2026-01-16 11:00:00', '2026-01-16 11:15:00'),
    (4, 14, 8, 'Yes, I have sent the requested arrival information.', '2026-01-24 11:00:00', '2026-01-24 11:15:00'),
    (5, 15, 25, 'Yes, I have sent the requested arrival information.', '2026-02-01 11:00:00', '2026-02-01 11:15:00'),
    (6, 16, 2, 'Yes, I have sent the requested arrival information.', '2026-02-09 11:00:00', '2026-02-09 11:15:00'),
    (7, 17, 9, 'Yes, I have sent the requested arrival information.', '2026-02-17 11:00:00', '2026-02-17 11:15:00'),
    (8, 18, 26, 'Yes, I have sent the requested arrival information.', '2026-02-25 11:00:00', '2026-02-25 11:15:00'),
    (9, 19, 3, 'Yes, I have sent the requested arrival information.', '2026-03-05 11:00:00', '2026-03-05 11:15:00'),
    (10, 20, 10, 'Yes, I have sent the requested arrival information.', '2026-03-13 11:00:00', '2026-03-13 11:15:00');

SELECT * FROM messages;

SELECT COUNT(*) AS total_messages
FROM messages;

-- ============================================================
-- 23. WISHLISTS
-- Create named guest travel collections
-- Target: 30 records
-- ============================================================
INSERT INTO wishlists
    (guest_id, wishlist_name, created_at)
VALUES
    (1, 'Weekend Trips 1', '2026-02-02 09:00:00'),
    (2, 'Beach Holidays 1', '2026-03-03 09:00:00'),
    (3, 'Mountain Stays 1', '2026-04-04 09:00:00'),
    (4, 'Kolkata Favorites 1', '2026-05-05 09:00:00'),
    (5, 'Business Travel 1', '2026-06-06 09:00:00'),
    (6, 'Family Vacation 1', '2026-07-07 09:00:00'),
    (7, 'Luxury Stays 1', '2026-08-08 09:00:00'),
    (8, 'Budget Trips 1', '2026-01-09 09:00:00'),
    (9, 'Europe 2027 1', '2026-02-10 09:00:00'),
    (10, 'Summer Holiday 1', '2026-03-11 09:00:00'),
    (11, 'Weekend Trips 2', '2026-04-12 09:00:00'),
    (12, 'Beach Holidays 2', '2026-05-13 09:00:00'),
    (13, 'Mountain Stays 2', '2026-06-14 09:00:00'),
    (14, 'Kolkata Favorites 2', '2026-07-15 09:00:00'),
    (15, 'Business Travel 2', '2026-08-16 09:00:00'),
    (16, 'Family Vacation 2', '2026-01-17 09:00:00'),
    (17, 'Luxury Stays 2', '2026-02-18 09:00:00'),
    (18, 'Budget Trips 2', '2026-03-19 09:00:00'),
    (19, 'Europe 2027 2', '2026-04-20 09:00:00'),
    (20, 'Summer Holiday 2', '2026-05-21 09:00:00'),
    (1, 'Weekend Trips 3', '2026-06-22 09:00:00'),
    (2, 'Beach Holidays 3', '2026-07-23 09:00:00'),
    (3, 'Mountain Stays 3', '2026-08-24 09:00:00'),
    (4, 'Kolkata Favorites 3', '2026-01-25 09:00:00'),
    (5, 'Business Travel 3', '2026-02-26 09:00:00'),
    (6, 'Family Vacation 3', '2026-03-27 09:00:00'),
    (7, 'Luxury Stays 3', '2026-04-01 09:00:00'),
    (8, 'Budget Trips 3', '2026-05-02 09:00:00'),
    (9, 'Europe 2027 3', '2026-06-03 09:00:00'),
    (10, 'Summer Holiday 3', '2026-07-04 09:00:00');

SELECT * FROM wishlists;

SELECT COUNT(*) AS total_wishlists
FROM wishlists;

-- ============================================================
-- 24. WISHLIST ITEMS
-- Save two properties in each wishlist
-- Target: 60 records
-- ============================================================
INSERT INTO wishlist_items
    (wishlist_id, property_id, added_at)
VALUES
    (1, 5, '2026-06-02 10:00:00'),
    (1, 16, '2026-06-02 10:05:00'),
    (2, 10, '2026-06-03 10:00:00'),
    (2, 21, '2026-06-03 10:05:00'),
    (3, 15, '2026-06-04 10:00:00'),
    (3, 26, '2026-06-04 10:05:00'),
    (4, 20, '2026-06-05 10:00:00'),
    (4, 1, '2026-06-05 10:05:00'),
    (5, 25, '2026-06-06 10:00:00'),
    (5, 6, '2026-06-06 10:05:00'),
    (6, 30, '2026-06-07 10:00:00'),
    (6, 11, '2026-06-07 10:05:00'),
    (7, 5, '2026-06-08 10:00:00'),
    (7, 16, '2026-06-08 10:05:00'),
    (8, 10, '2026-06-09 10:00:00'),
    (8, 21, '2026-06-09 10:05:00'),
    (9, 15, '2026-06-10 10:00:00'),
    (9, 26, '2026-06-10 10:05:00'),
    (10, 20, '2026-06-11 10:00:00'),
    (10, 1, '2026-06-11 10:05:00'),
    (11, 25, '2026-06-12 10:00:00'),
    (11, 6, '2026-06-12 10:05:00'),
    (12, 30, '2026-06-13 10:00:00'),
    (12, 11, '2026-06-13 10:05:00'),
    (13, 5, '2026-06-14 10:00:00'),
    (13, 16, '2026-06-14 10:05:00'),
    (14, 10, '2026-06-15 10:00:00'),
    (14, 21, '2026-06-15 10:05:00'),
    (15, 15, '2026-06-16 10:00:00'),
    (15, 26, '2026-06-16 10:05:00'),
    (16, 20, '2026-06-17 10:00:00'),
    (16, 1, '2026-06-17 10:05:00'),
    (17, 25, '2026-06-18 10:00:00'),
    (17, 6, '2026-06-18 10:05:00'),
    (18, 30, '2026-06-19 10:00:00'),
    (18, 11, '2026-06-19 10:05:00'),
    (19, 5, '2026-06-20 10:00:00'),
    (19, 16, '2026-06-20 10:05:00'),
    (20, 10, '2026-06-21 10:00:00'),
    (20, 21, '2026-06-21 10:05:00'),
    (21, 15, '2026-06-22 10:00:00'),
    (21, 26, '2026-06-22 10:05:00'),
    (22, 20, '2026-06-23 10:00:00'),
    (22, 1, '2026-06-23 10:05:00'),
    (23, 25, '2026-06-24 10:00:00'),
    (23, 6, '2026-06-24 10:05:00'),
    (24, 30, '2026-06-25 10:00:00'),
    (24, 11, '2026-06-25 10:05:00'),
    (25, 5, '2026-06-26 10:00:00'),
    (25, 16, '2026-06-26 10:05:00'),
    (26, 10, '2026-06-27 10:00:00'),
    (26, 21, '2026-06-27 10:05:00'),
    (27, 15, '2026-06-01 10:00:00'),
    (27, 26, '2026-06-01 10:05:00'),
    (28, 20, '2026-06-02 10:00:00'),
    (28, 1, '2026-06-02 10:05:00'),
    (29, 25, '2026-06-03 10:00:00'),
    (29, 6, '2026-06-03 10:05:00'),
    (30, 30, '2026-06-04 10:00:00'),
    (30, 11, '2026-06-04 10:05:00');

SELECT * FROM wishlist_items;

SELECT COUNT(*) AS total_wishlist_items
FROM wishlist_items;

-- ============================================================
-- 25. PROPERTY AVAILABILITY
-- Provide four comparable dates per listing
-- Target: 120 records
-- ============================================================
INSERT INTO property_availability
    (property_id, available_date, is_available, custom_price)
VALUES
    (1, '2026-12-20', TRUE, 3095),
    (1, '2026-12-21', TRUE, NULL),
    (1, '2026-12-22', TRUE, NULL),
    (1, '2026-12-23', TRUE, 3320),
    (2, '2026-12-20', TRUE, NULL),
    (2, '2026-12-21', TRUE, NULL),
    (2, '2026-12-22', TRUE, 3465),
    (2, '2026-12-23', TRUE, NULL),
    (3, '2026-12-20', TRUE, NULL),
    (3, '2026-12-21', TRUE, 3610),
    (3, '2026-12-22', TRUE, NULL),
    (3, '2026-12-23', TRUE, NULL),
    (4, '2026-12-20', TRUE, 3755),
    (4, '2026-12-21', TRUE, NULL),
    (4, '2026-12-22', TRUE, NULL),
    (4, '2026-12-23', TRUE, 3980),
    (5, '2026-12-20', TRUE, NULL),
    (5, '2026-12-21', TRUE, NULL),
    (5, '2026-12-22', TRUE, 4125),
    (5, '2026-12-23', TRUE, NULL),
    (6, '2026-12-20', TRUE, NULL),
    (6, '2026-12-21', FALSE, 4270),
    (6, '2026-12-22', TRUE, NULL),
    (6, '2026-12-23', TRUE, NULL),
    (7, '2026-12-20', TRUE, 4415),
    (7, '2026-12-21', TRUE, NULL),
    (7, '2026-12-22', TRUE, NULL),
    (7, '2026-12-23', TRUE, 4640),
    (8, '2026-12-20', TRUE, NULL),
    (8, '2026-12-21', TRUE, NULL),
    (8, '2026-12-22', TRUE, 4785),
    (8, '2026-12-23', TRUE, NULL),
    (9, '2026-12-20', TRUE, NULL),
    (9, '2026-12-21', TRUE, 4930),
    (9, '2026-12-22', TRUE, NULL),
    (9, '2026-12-23', TRUE, NULL),
    (10, '2026-12-20', TRUE, 5075),
    (10, '2026-12-21', TRUE, NULL),
    (10, '2026-12-22', TRUE, NULL),
    (10, '2026-12-23', TRUE, 5300),
    (11, '2026-12-20', TRUE, NULL),
    (11, '2026-12-21', TRUE, NULL),
    (11, '2026-12-22', TRUE, 5445),
    (11, '2026-12-23', TRUE, NULL),
    (12, '2026-12-20', TRUE, NULL),
    (12, '2026-12-21', FALSE, 5590),
    (12, '2026-12-22', TRUE, NULL),
    (12, '2026-12-23', TRUE, NULL),
    (13, '2026-12-20', TRUE, 5735),
    (13, '2026-12-21', TRUE, NULL),
    (13, '2026-12-22', TRUE, NULL),
    (13, '2026-12-23', TRUE, 5960),
    (14, '2026-12-20', TRUE, NULL),
    (14, '2026-12-21', TRUE, NULL),
    (14, '2026-12-22', TRUE, 6105),
    (14, '2026-12-23', TRUE, NULL),
    (15, '2026-12-20', TRUE, NULL),
    (15, '2026-12-21', TRUE, 6250),
    (15, '2026-12-22', TRUE, NULL),
    (15, '2026-12-23', TRUE, NULL),
    (16, '2026-12-20', TRUE, 6395),
    (16, '2026-12-21', TRUE, NULL),
    (16, '2026-12-22', TRUE, NULL),
    (16, '2026-12-23', TRUE, 6620),
    (17, '2026-12-20', TRUE, NULL),
    (17, '2026-12-21', TRUE, NULL),
    (17, '2026-12-22', TRUE, 6765),
    (17, '2026-12-23', TRUE, NULL),
    (18, '2026-12-20', TRUE, NULL),
    (18, '2026-12-21', FALSE, 6910),
    (18, '2026-12-22', TRUE, NULL),
    (18, '2026-12-23', TRUE, NULL),
    (19, '2026-12-20', TRUE, 7055),
    (19, '2026-12-21', TRUE, NULL),
    (19, '2026-12-22', TRUE, NULL),
    (19, '2026-12-23', TRUE, 7280),
    (20, '2026-12-20', TRUE, NULL),
    (20, '2026-12-21', TRUE, NULL),
    (20, '2026-12-22', TRUE, 7425),
    (20, '2026-12-23', TRUE, NULL),
    (21, '2026-12-20', TRUE, NULL),
    (21, '2026-12-21', TRUE, 7570),
    (21, '2026-12-22', TRUE, NULL),
    (21, '2026-12-23', TRUE, NULL),
    (22, '2026-12-20', TRUE, 7715),
    (22, '2026-12-21', TRUE, NULL),
    (22, '2026-12-22', TRUE, NULL),
    (22, '2026-12-23', TRUE, 7940),
    (23, '2026-12-20', TRUE, NULL),
    (23, '2026-12-21', TRUE, NULL),
    (23, '2026-12-22', TRUE, 8085),
    (23, '2026-12-23', TRUE, NULL),
    (24, '2026-12-20', TRUE, NULL),
    (24, '2026-12-21', FALSE, 8230),
    (24, '2026-12-22', TRUE, NULL),
    (24, '2026-12-23', TRUE, NULL),
    (25, '2026-12-20', TRUE, 8375),
    (25, '2026-12-21', TRUE, NULL),
    (25, '2026-12-22', TRUE, NULL),
    (25, '2026-12-23', TRUE, 8600),
    (26, '2026-12-20', TRUE, NULL),
    (26, '2026-12-21', TRUE, NULL),
    (26, '2026-12-22', TRUE, 8745),
    (26, '2026-12-23', TRUE, NULL),
    (27, '2026-12-20', TRUE, NULL),
    (27, '2026-12-21', TRUE, 8890),
    (27, '2026-12-22', TRUE, NULL),
    (27, '2026-12-23', TRUE, NULL),
    (28, '2026-12-20', TRUE, 9035),
    (28, '2026-12-21', TRUE, NULL),
    (28, '2026-12-22', TRUE, NULL),
    (28, '2026-12-23', TRUE, 9260),
    (29, '2026-12-20', TRUE, NULL),
    (29, '2026-12-21', TRUE, NULL),
    (29, '2026-12-22', TRUE, 9405),
    (29, '2026-12-23', TRUE, NULL),
    (30, '2026-12-20', TRUE, NULL),
    (30, '2026-12-21', FALSE, 9550),
    (30, '2026-12-22', TRUE, NULL),
    (30, '2026-12-23', TRUE, NULL);

SELECT * FROM property_availability;

SELECT COUNT(*) AS total_property_availability
FROM property_availability;

-- ============================================================
-- 26. SEASONAL PRICES
-- Create realistic date-range price adjustments
-- Target: 40 records
-- ============================================================
INSERT INTO seasonal_prices
    (property_id, season_name, start_date, end_date, price_per_night)
VALUES
    (1, 'Christmas Season', '2026-01-01', '2026-01-16', 3470),
    (2, 'New Year Season', '2026-01-09', '2026-01-25', 3840),
    (3, 'Summer Peak', '2026-01-17', '2026-02-03', 4210),
    (4, 'Winter Holiday', '2026-01-25', '2026-02-12', 4580),
    (5, 'Durga Puja', '2026-02-02', '2026-02-21', 4950),
    (6, 'Diwali Period', '2026-02-10', '2026-03-02', 4420),
    (7, 'Weekend Premium', '2026-02-18', '2026-03-11', 4790),
    (8, 'Monsoon Discount', '2026-02-26', '2026-03-20', 5160),
    (9, 'Beach Season', '2026-03-06', '2026-03-29', 5530),
    (10, 'Mountain Peak Season', '2026-03-14', '2026-04-07', 5900),
    (11, 'Christmas Season', '2026-03-22', '2026-04-16', 6270),
    (12, 'New Year Season', '2026-03-30', '2026-04-13', 5740),
    (13, 'Summer Peak', '2026-04-07', '2026-04-22', 6110),
    (14, 'Winter Holiday', '2026-04-15', '2026-05-01', 6480),
    (15, 'Durga Puja', '2026-04-23', '2026-05-10', 6850),
    (16, 'Diwali Period', '2026-05-01', '2026-05-19', 7220),
    (17, 'Weekend Premium', '2026-05-09', '2026-05-28', 7590),
    (18, 'Monsoon Discount', '2026-05-17', '2026-06-06', 7060),
    (19, 'Beach Season', '2026-05-25', '2026-06-15', 7430),
    (20, 'Mountain Peak Season', '2026-06-02', '2026-06-24', 7800),
    (21, 'Christmas Season', '2026-06-10', '2026-07-03', 8170),
    (22, 'New Year Season', '2026-06-18', '2026-07-12', 8540),
    (23, 'Summer Peak', '2026-06-26', '2026-07-21', 8910),
    (24, 'Winter Holiday', '2026-07-04', '2026-07-18', 8380),
    (25, 'Durga Puja', '2026-07-12', '2026-07-27', 8750),
    (26, 'Diwali Period', '2026-07-20', '2026-08-05', 9120),
    (27, 'Weekend Premium', '2026-07-28', '2026-08-14', 9490),
    (28, 'Monsoon Discount', '2026-08-05', '2026-08-23', 9860),
    (29, 'Beach Season', '2026-08-13', '2026-09-01', 10230),
    (30, 'Mountain Peak Season', '2026-08-21', '2026-09-10', 9700),
    (1, 'Christmas Season', '2026-08-29', '2026-09-19', 3470),
    (2, 'New Year Season', '2026-09-06', '2026-09-28', 3840),
    (3, 'Summer Peak', '2026-09-14', '2026-10-07', 4210),
    (4, 'Winter Holiday', '2026-09-22', '2026-10-16', 4580),
    (5, 'Durga Puja', '2026-09-30', '2026-10-25', 4950),
    (6, 'Diwali Period', '2026-10-08', '2026-10-22', 4420),
    (7, 'Weekend Premium', '2026-10-16', '2026-10-31', 4790),
    (8, 'Monsoon Discount', '2026-10-24', '2026-11-09', 5160),
    (9, 'Beach Season', '2026-11-01', '2026-11-18', 5530),
    (10, 'Mountain Peak Season', '2026-11-09', '2026-11-27', 5900);

SELECT * FROM seasonal_prices;

SELECT COUNT(*) AS total_seasonal_prices
FROM seasonal_prices;

-- ============================================================
-- 27. SEARCH LOGS
-- Record destination and price searches
-- Target: 50 records
-- ============================================================
INSERT INTO search_logs
    (guest_id, city_id, check_in_date, check_out_date, number_of_guests, min_price, max_price, searched_at)
VALUES
    (3, 1, '2026-09-04', '2026-09-07', 2, 2300, 6800, '2026-08-05 09:00:00'),
    (6, 6, '2026-09-07', '2026-09-11', 3, 2800, 8300, '2026-08-08 09:00:00'),
    (9, 2, '2026-09-10', '2026-09-15', 4, 3300, 9800, '2026-08-11 09:00:00'),
    (12, 3, '2026-09-13', '2026-09-19', 1, 3800, 7300, '2026-08-14 09:00:00'),
    (15, 15, '2026-09-16', '2026-09-18', 2, 4300, 8800, '2026-08-17 09:00:00'),
    (18, 5, '2026-09-19', '2026-09-22', 3, 1800, 7300, '2026-08-20 09:00:00'),
    (1, 11, '2026-09-22', '2026-09-26', 4, 2300, 8800, '2026-08-23 09:00:00'),
    (4, 13, '2026-09-25', '2026-09-30', 1, 2800, 6300, '2026-08-26 09:00:00'),
    (7, 17, '2026-09-28', '2026-10-04', 2, 3300, 7800, '2026-08-29 09:00:00'),
    (10, 20, '2026-10-01', '2026-10-03', 3, 3800, 9300, '2026-09-01 09:00:00'),
    (13, 1, '2026-10-04', '2026-10-07', 4, 4300, 10800, '2026-09-04 09:00:00'),
    (16, 6, '2026-10-07', '2026-10-11', 1, 1800, 5300, '2026-09-07 09:00:00'),
    (19, 2, '2026-10-10', '2026-10-15', 2, 2300, 6800, '2026-09-10 09:00:00'),
    (2, 3, '2026-10-13', '2026-10-19', 3, 2800, 8300, '2026-09-13 09:00:00'),
    (5, 15, '2026-10-16', '2026-10-18', 4, 3300, 9800, '2026-09-16 09:00:00'),
    (8, 5, '2026-10-19', '2026-10-22', 1, 3800, 7300, '2026-09-19 09:00:00'),
    (11, 11, '2026-10-22', '2026-10-26', 2, 4300, 8800, '2026-09-22 09:00:00'),
    (14, 13, '2026-10-25', '2026-10-30', 3, 1800, 7300, '2026-09-25 09:00:00'),
    (17, 17, '2026-10-28', '2026-11-03', 4, 2300, 8800, '2026-09-28 09:00:00'),
    (20, 20, '2026-10-31', '2026-11-02', 1, 2800, 6300, '2026-10-01 09:00:00'),
    (3, 1, '2026-11-03', '2026-11-06', 2, 3300, 7800, '2026-10-04 09:00:00'),
    (6, 6, '2026-11-06', '2026-11-10', 3, 3800, 9300, '2026-10-07 09:00:00'),
    (9, 2, '2026-11-09', '2026-11-14', 4, 4300, 10800, '2026-10-10 09:00:00'),
    (12, 3, '2026-11-12', '2026-11-18', 1, 1800, 5300, '2026-10-13 09:00:00'),
    (15, 15, '2026-11-15', '2026-11-17', 2, 2300, 6800, '2026-10-16 09:00:00'),
    (18, 5, '2026-11-18', '2026-11-21', 3, 2800, 8300, '2026-10-19 09:00:00'),
    (1, 11, '2026-11-21', '2026-11-25', 4, 3300, 9800, '2026-10-22 09:00:00'),
    (4, 13, '2026-11-24', '2026-11-29', 1, 3800, 7300, '2026-10-25 09:00:00'),
    (7, 17, '2026-11-27', '2026-12-03', 2, 4300, 8800, '2026-10-28 09:00:00'),
    (10, 20, '2026-11-30', '2026-12-02', 3, 1800, 7300, '2026-10-31 09:00:00'),
    (13, 1, '2026-12-03', '2026-12-06', 4, 2300, 8800, '2026-11-03 09:00:00'),
    (16, 6, '2026-12-06', '2026-12-10', 1, 2800, 6300, '2026-11-06 09:00:00'),
    (19, 2, '2026-12-09', '2026-12-14', 2, 3300, 7800, '2026-11-09 09:00:00'),
    (2, 3, '2026-12-12', '2026-12-18', 3, 3800, 9300, '2026-11-12 09:00:00'),
    (5, 15, '2026-12-15', '2026-12-17', 4, 4300, 10800, '2026-11-15 09:00:00'),
    (8, 5, '2026-12-18', '2026-12-21', 1, 1800, 5300, '2026-11-18 09:00:00'),
    (11, 11, '2026-12-21', '2026-12-25', 2, 2300, 6800, '2026-11-21 09:00:00'),
    (14, 13, '2026-12-24', '2026-12-29', 3, 2800, 8300, '2026-11-24 09:00:00'),
    (17, 17, '2026-12-27', '2027-01-02', 4, 3300, 9800, '2026-11-27 09:00:00'),
    (20, 20, '2026-12-30', '2027-01-01', 1, 3800, 7300, '2026-11-30 09:00:00'),
    (3, 1, '2027-01-02', '2027-01-05', 2, 4300, 8800, '2026-12-03 09:00:00'),
    (6, 6, '2027-01-05', '2027-01-09', 3, 1800, 7300, '2026-12-06 09:00:00'),
    (9, 2, '2027-01-08', '2027-01-13', 4, 2300, 8800, '2026-12-09 09:00:00'),
    (12, 3, '2027-01-11', '2027-01-17', 1, 2800, 6300, '2026-12-12 09:00:00'),
    (15, 15, '2027-01-14', '2027-01-16', 2, 3300, 7800, '2026-12-15 09:00:00'),
    (18, 5, '2027-01-17', '2027-01-20', 3, 3800, 9300, '2026-12-18 09:00:00'),
    (1, 11, '2027-01-20', '2027-01-24', 4, 4300, 10800, '2026-12-21 09:00:00'),
    (4, 13, '2027-01-23', '2027-01-28', 1, 1800, 5300, '2026-12-24 09:00:00'),
    (7, 17, '2027-01-26', '2027-02-01', 2, 2300, 6800, '2026-12-27 09:00:00'),
    (10, 20, '2027-01-29', '2027-01-31', 3, 2800, 8300, '2026-12-30 09:00:00');

SELECT * FROM search_logs;

SELECT COUNT(*) AS total_search_logs
FROM search_logs;

-- ============================================================
-- 28. SUPPORT TICKETS
-- Create booking and account service cases
-- Target: 25 records
-- ============================================================
INSERT INTO support_tickets
    (user_id, booking_id, ticket_subject, ticket_description, ticket_status, created_at, resolved_at)
VALUES
    (5, 7, 'Payment Failed', 'Support requested a documented review of payment failed.', 'In Progress', '2026-06-02 09:00:00', NULL),
    (10, 14, 'Refund Pending', 'Support requested a documented review of refund pending.', 'Resolved', '2026-06-03 09:00:00', '2026-06-05 12:00:00'),
    (25, 21, 'Host Did Not Respond', 'Support requested a documented review of host did not respond.', 'Closed', '2026-06-04 09:00:00', '2026-06-06 12:00:00'),
    (30, 28, 'Property Information Incorrect', 'Support requested a documented review of property information incorrect.', 'Open', '2026-06-05 09:00:00', NULL),
    (5, NULL, 'Unable to Modify Booking', 'Support requested a documented review of unable to modify booking.', 'In Progress', '2026-06-06 09:00:00', NULL),
    (10, 42, 'Check-in Issue', 'Support requested a documented review of check-in issue.', 'Resolved', '2026-06-07 09:00:00', '2026-06-09 12:00:00'),
    (25, 49, 'Account Verification', 'Support requested a documented review of account verification.', 'Closed', '2026-06-08 09:00:00', '2026-06-10 12:00:00'),
    (30, 56, 'Payment Charged Twice', 'Support requested a documented review of payment charged twice.', 'Open', '2026-06-09 09:00:00', NULL),
    (5, 3, 'Booking Cancellation', 'Support requested a documented review of booking cancellation.', 'In Progress', '2026-06-10 09:00:00', NULL),
    (10, NULL, 'Review Problem', 'Support requested a documented review of review problem.', 'Resolved', '2026-06-11 09:00:00', '2026-06-13 12:00:00'),
    (25, 17, 'Payment Failed', 'Support requested a documented review of payment failed.', 'Closed', '2026-06-12 09:00:00', '2026-06-14 12:00:00'),
    (30, 24, 'Refund Pending', 'Support requested a documented review of refund pending.', 'Open', '2026-06-13 09:00:00', NULL),
    (5, 31, 'Host Did Not Respond', 'Support requested a documented review of host did not respond.', 'In Progress', '2026-06-14 09:00:00', NULL),
    (10, 38, 'Property Information Incorrect', 'Support requested a documented review of property information incorrect.', 'Resolved', '2026-06-15 09:00:00', '2026-06-17 12:00:00'),
    (25, NULL, 'Unable to Modify Booking', 'Support requested a documented review of unable to modify booking.', 'Closed', '2026-06-16 09:00:00', '2026-06-18 12:00:00'),
    (30, 52, 'Check-in Issue', 'Support requested a documented review of check-in issue.', 'Open', '2026-06-17 09:00:00', NULL),
    (5, 59, 'Account Verification', 'Support requested a documented review of account verification.', 'In Progress', '2026-06-18 09:00:00', NULL),
    (10, 6, 'Payment Charged Twice', 'Support requested a documented review of payment charged twice.', 'Resolved', '2026-06-19 09:00:00', '2026-06-21 12:00:00'),
    (25, 13, 'Booking Cancellation', 'Support requested a documented review of booking cancellation.', 'Closed', '2026-06-20 09:00:00', '2026-06-22 12:00:00'),
    (30, NULL, 'Review Problem', 'Support requested a documented review of review problem.', 'Open', '2026-06-21 09:00:00', NULL),
    (5, 27, 'Payment Failed', 'Support requested a documented review of payment failed.', 'In Progress', '2026-06-22 09:00:00', NULL),
    (10, 34, 'Refund Pending', 'Support requested a documented review of refund pending.', 'Resolved', '2026-06-23 09:00:00', '2026-06-25 12:00:00'),
    (25, 41, 'Host Did Not Respond', 'Support requested a documented review of host did not respond.', 'Closed', '2026-06-24 09:00:00', '2026-06-26 12:00:00'),
    (30, 48, 'Property Information Incorrect', 'Support requested a documented review of property information incorrect.', 'Open', '2026-06-25 09:00:00', NULL),
    (5, NULL, 'Unable to Modify Booking', 'Support requested a documented review of unable to modify booking.', 'In Progress', '2026-06-26 09:00:00', NULL);

SELECT * FROM support_tickets;

SELECT COUNT(*) AS total_support_tickets
FROM support_tickets;

-- ============================================================
-- 29. ADMIN ACTIONS
-- Record moderation and finance interventions
-- Target: 25 records
-- ============================================================
INSERT INTO admin_actions
    (admin_user_id, target_user_id, property_id, action_type, action_description, action_at)
VALUES
    (29, 7, 5, 'User Warning', 'Administrator completed a documented user warning.', '2026-07-02 10:00:00'),
    (30, 14, 10, 'Account Review', 'Administrator completed a documented account review.', '2026-07-03 10:00:00'),
    (29, 21, NULL, 'Property Review', 'Administrator completed a documented property review.', '2026-07-04 10:00:00'),
    (30, NULL, 20, 'Property Suspended', 'Administrator completed a documented property suspended.', '2026-07-05 10:00:00'),
    (29, 5, 25, 'Property Approved', 'Administrator completed a documented property approved.', '2026-07-06 10:00:00'),
    (30, 12, NULL, 'Ticket Escalated', 'Administrator completed a documented ticket escalated.', '2026-07-07 10:00:00'),
    (29, 19, 5, 'Account Reactivated', 'Administrator completed a documented account reactivated.', '2026-07-08 10:00:00'),
    (30, NULL, 10, 'Fraud Review', 'Administrator completed a documented fraud review.', '2026-07-09 10:00:00'),
    (29, 3, NULL, 'Payment Investigation', 'Administrator completed a documented payment investigation.', '2026-07-10 10:00:00'),
    (30, 10, 20, 'Listing Verification', 'Administrator completed a documented listing verification.', '2026-07-11 10:00:00'),
    (29, 17, 25, 'User Warning', 'Administrator completed a documented user warning.', '2026-07-12 10:00:00'),
    (30, NULL, NULL, 'Account Review', 'Administrator completed a documented account review.', '2026-07-13 10:00:00'),
    (29, 1, 5, 'Property Review', 'Administrator completed a documented property review.', '2026-07-14 10:00:00'),
    (30, 8, 10, 'Property Suspended', 'Administrator completed a documented property suspended.', '2026-07-15 10:00:00'),
    (29, 15, NULL, 'Property Approved', 'Administrator completed a documented property approved.', '2026-07-16 10:00:00'),
    (30, NULL, 20, 'Ticket Escalated', 'Administrator completed a documented ticket escalated.', '2026-07-17 10:00:00'),
    (29, 29, 25, 'Account Reactivated', 'Administrator completed a documented account reactivated.', '2026-07-18 10:00:00'),
    (30, 6, NULL, 'Fraud Review', 'Administrator completed a documented fraud review.', '2026-07-19 10:00:00'),
    (29, 13, 5, 'Payment Investigation', 'Administrator completed a documented payment investigation.', '2026-07-20 10:00:00'),
    (30, NULL, 10, 'Listing Verification', 'Administrator completed a documented listing verification.', '2026-07-21 10:00:00'),
    (29, 27, NULL, 'User Warning', 'Administrator completed a documented user warning.', '2026-07-22 10:00:00'),
    (30, 4, 20, 'Account Review', 'Administrator completed a documented account review.', '2026-07-23 10:00:00'),
    (29, 11, 25, 'Property Review', 'Administrator completed a documented property review.', '2026-07-24 10:00:00'),
    (30, NULL, NULL, 'Property Suspended', 'Administrator completed a documented property suspended.', '2026-07-25 10:00:00'),
    (29, 25, 5, 'Property Approved', 'Administrator completed a documented property approved.', '2026-07-26 10:00:00');

SELECT * FROM admin_actions;

SELECT COUNT(*) AS total_admin_actions
FROM admin_actions;

-- ============================================================
-- 30. GUEST PROPERTY WISHLIST
-- Implement valid guest-property-wishlist records
-- Target: 50 records
-- ============================================================
INSERT INTO guest_property_wishlist
    (guest_id, property_id, wishlist_id, saved_note, saved_at)
VALUES
    (1, 5, 1, 'Weekend option', '2026-06-02 10:00:00'),
    (1, 16, 1, 'Great city location', '2026-06-02 10:05:00'),
    (2, 10, 2, 'Compare later', '2026-06-03 10:00:00'),
    (2, 21, 2, 'Perfect for family', '2026-06-03 10:05:00'),
    (3, 15, 3, 'Close to business district', '2026-06-04 10:00:00'),
    (3, 26, 3, 'Weekend option', '2026-06-04 10:05:00'),
    (4, 20, 4, 'Great city location', '2026-06-05 10:00:00'),
    (4, 1, 4, 'Compare later', '2026-06-05 10:05:00'),
    (5, 25, 5, 'Perfect for family', '2026-06-06 10:00:00'),
    (5, 6, 5, 'Close to business district', '2026-06-06 10:05:00'),
    (6, 30, 6, 'Weekend option', '2026-06-07 10:00:00'),
    (6, 11, 6, 'Great city location', '2026-06-07 10:05:00'),
    (7, 5, 7, 'Compare later', '2026-06-08 10:00:00'),
    (7, 16, 7, 'Perfect for family', '2026-06-08 10:05:00'),
    (8, 10, 8, 'Close to business district', '2026-06-09 10:00:00'),
    (8, 21, 8, 'Weekend option', '2026-06-09 10:05:00'),
    (9, 15, 9, 'Great city location', '2026-06-10 10:00:00'),
    (9, 26, 9, 'Compare later', '2026-06-10 10:05:00'),
    (10, 20, 10, 'Perfect for family', '2026-06-11 10:00:00'),
    (10, 1, 10, 'Close to business district', '2026-06-11 10:05:00'),
    (11, 25, 11, 'Weekend option', '2026-06-12 10:00:00'),
    (11, 6, 11, 'Great city location', '2026-06-12 10:05:00'),
    (12, 30, 12, 'Compare later', '2026-06-13 10:00:00'),
    (12, 11, 12, 'Perfect for family', '2026-06-13 10:05:00'),
    (13, 5, 13, 'Close to business district', '2026-06-14 10:00:00'),
    (13, 16, 13, 'Weekend option', '2026-06-14 10:05:00'),
    (14, 10, 14, 'Great city location', '2026-06-15 10:00:00'),
    (14, 21, 14, 'Compare later', '2026-06-15 10:05:00'),
    (15, 15, 15, 'Perfect for family', '2026-06-16 10:00:00'),
    (15, 26, 15, 'Close to business district', '2026-06-16 10:05:00'),
    (16, 20, 16, 'Weekend option', '2026-06-17 10:00:00'),
    (16, 1, 16, 'Great city location', '2026-06-17 10:05:00'),
    (17, 25, 17, 'Compare later', '2026-06-18 10:00:00'),
    (17, 6, 17, 'Perfect for family', '2026-06-18 10:05:00'),
    (18, 30, 18, 'Close to business district', '2026-06-19 10:00:00'),
    (18, 11, 18, 'Weekend option', '2026-06-19 10:05:00'),
    (19, 5, 19, 'Great city location', '2026-06-20 10:00:00'),
    (19, 16, 19, 'Compare later', '2026-06-20 10:05:00'),
    (20, 10, 20, 'Perfect for family', '2026-06-21 10:00:00'),
    (20, 21, 20, 'Close to business district', '2026-06-21 10:05:00'),
    (1, 15, 21, 'Weekend option', '2026-06-22 10:00:00'),
    (1, 26, 21, 'Great city location', '2026-06-22 10:05:00'),
    (2, 20, 22, 'Compare later', '2026-06-23 10:00:00'),
    (2, 1, 22, 'Perfect for family', '2026-06-23 10:05:00'),
    (3, 25, 23, 'Close to business district', '2026-06-24 10:00:00'),
    (3, 6, 23, 'Weekend option', '2026-06-24 10:05:00'),
    (4, 30, 24, 'Great city location', '2026-06-25 10:00:00'),
    (4, 11, 24, 'Compare later', '2026-06-25 10:05:00'),
    (5, 5, 25, 'Perfect for family', '2026-06-26 10:00:00'),
    (5, 16, 25, 'Close to business district', '2026-06-26 10:05:00');

SELECT * FROM guest_property_wishlist;

SELECT COUNT(*) AS total_guest_property_wishlist
FROM guest_property_wishlist;

-- ============================================================
-- 31. HOST PROPERTY AMENITY MANAGEMENT
-- Implement ownership-correct host-property-amenity records
-- Target: 60 records
-- ============================================================
INSERT INTO host_property_amenity_management
    (host_id, property_id, amenity_id, added_at, is_active)
VALUES
    (1, 1, 1, '2025-06-01 10:00:00', TRUE),
    (1, 1, 2, '2025-06-01 11:00:00', TRUE),
    (2, 2, 1, '2025-06-01 10:00:00', TRUE),
    (2, 2, 3, '2025-06-01 11:00:00', TRUE),
    (3, 3, 1, '2025-06-01 10:00:00', TRUE),
    (3, 3, 4, '2025-06-01 11:00:00', TRUE),
    (4, 4, 1, '2025-06-01 10:00:00', TRUE),
    (4, 4, 5, '2025-06-01 11:00:00', TRUE),
    (5, 5, 1, '2025-06-01 10:00:00', TRUE),
    (5, 5, 6, '2025-06-01 11:00:00', TRUE),
    (6, 6, 1, '2025-06-01 10:00:00', TRUE),
    (6, 6, 7, '2025-06-01 11:00:00', TRUE),
    (7, 7, 1, '2025-06-01 10:00:00', TRUE),
    (7, 7, 8, '2025-06-01 11:00:00', TRUE),
    (8, 8, 1, '2025-06-01 10:00:00', TRUE),
    (8, 8, 9, '2025-06-01 11:00:00', TRUE),
    (9, 9, 1, '2025-06-01 10:00:00', TRUE),
    (9, 9, 10, '2025-06-01 11:00:00', TRUE),
    (10, 10, 1, '2025-06-01 10:00:00', TRUE),
    (10, 10, 11, '2025-06-01 11:00:00', FALSE),
    (11, 11, 1, '2025-06-01 10:00:00', TRUE),
    (11, 11, 12, '2025-06-01 11:00:00', TRUE),
    (12, 12, 1, '2025-06-01 10:00:00', TRUE),
    (12, 12, 13, '2025-06-01 11:00:00', TRUE),
    (13, 13, 1, '2025-06-01 10:00:00', TRUE),
    (13, 13, 14, '2025-06-01 11:00:00', TRUE),
    (14, 14, 1, '2025-06-01 10:00:00', TRUE),
    (14, 14, 15, '2025-06-01 11:00:00', TRUE),
    (15, 15, 1, '2025-06-01 10:00:00', TRUE),
    (15, 15, 16, '2025-06-01 11:00:00', TRUE),
    (16, 16, 1, '2025-06-01 10:00:00', TRUE),
    (16, 16, 17, '2025-06-01 11:00:00', TRUE),
    (17, 17, 1, '2025-06-01 10:00:00', TRUE),
    (17, 17, 18, '2025-06-01 11:00:00', TRUE),
    (18, 18, 1, '2025-06-01 10:00:00', TRUE),
    (18, 18, 19, '2025-06-01 11:00:00', TRUE),
    (19, 19, 1, '2025-06-01 10:00:00', TRUE),
    (19, 19, 5, '2025-06-01 11:00:00', TRUE),
    (20, 20, 1, '2025-06-01 10:00:00', TRUE),
    (20, 20, 2, '2025-06-01 11:00:00', FALSE),
    (1, 21, 1, '2025-06-01 10:00:00', TRUE),
    (1, 21, 3, '2025-06-01 11:00:00', TRUE),
    (2, 22, 1, '2025-06-01 10:00:00', TRUE),
    (2, 22, 4, '2025-06-01 11:00:00', TRUE),
    (3, 23, 1, '2025-06-01 10:00:00', TRUE),
    (3, 23, 5, '2025-06-01 11:00:00', TRUE),
    (4, 24, 1, '2025-06-01 10:00:00', TRUE),
    (4, 24, 6, '2025-06-01 11:00:00', TRUE),
    (5, 25, 1, '2025-06-01 10:00:00', TRUE),
    (5, 25, 7, '2025-06-01 11:00:00', TRUE),
    (6, 26, 1, '2025-06-01 10:00:00', TRUE),
    (6, 26, 8, '2025-06-01 11:00:00', TRUE),
    (7, 27, 1, '2025-06-01 10:00:00', TRUE),
    (7, 27, 9, '2025-06-01 11:00:00', TRUE),
    (8, 28, 1, '2025-06-01 10:00:00', TRUE),
    (8, 28, 10, '2025-06-01 11:00:00', TRUE),
    (9, 29, 1, '2025-06-01 10:00:00', TRUE),
    (9, 29, 11, '2025-06-01 11:00:00', TRUE),
    (10, 30, 1, '2025-06-01 10:00:00', TRUE),
    (10, 30, 12, '2025-06-01 11:00:00', FALSE);

SELECT * FROM host_property_amenity_management;

SELECT COUNT(*) AS total_host_property_amenity_management
FROM host_property_amenity_management;

-- ============================================================
-- 32. BOOKING PAYMENT PAYOUT AUDIT
-- Reconcile matching booking financial transactions
-- Target: 20 records
-- ============================================================
INSERT INTO booking_payment_payout_audit
    (booking_id, payment_id, payout_id, audit_status, checked_at, remarks)
VALUES
    (1, 1, 1, 'Verified', '2026-01-10 10:00:00', 'Payment, payout, and commission successfully reconciled.'),
    (2, 2, 2, 'Verified', '2026-01-19 10:00:00', 'Payment, payout, and commission successfully reconciled.'),
    (3, 3, 3, 'Verified', '2026-01-25 10:00:00', 'Payment, payout, and commission successfully reconciled.'),
    (4, 4, 4, 'Verified', '2026-02-03 10:00:00', 'Payment, payout, and commission successfully reconciled.'),
    (5, 5, 5, 'Verified', '2026-02-12 10:00:00', 'Payment, payout, and commission successfully reconciled.'),
    (6, 6, 6, 'Verified', '2026-02-18 10:00:00', 'Payment, payout, and commission successfully reconciled.'),
    (7, 7, 7, 'Matched', '2026-02-27 10:00:00', 'Payment, payout, and commission successfully reconciled.'),
    (8, 8, 8, 'Verified', '2026-03-08 10:00:00', 'Payment, payout, and commission successfully reconciled.'),
    (9, 9, 9, 'Verified', '2026-03-14 10:00:00', 'Payment, payout, and commission successfully reconciled.'),
    (10, 10, 10, 'Verified', '2026-03-23 10:00:00', 'Payment, payout, and commission successfully reconciled.'),
    (11, 11, 11, 'Verified', '2026-04-01 10:00:00', 'Payment, payout, and commission successfully reconciled.'),
    (12, 12, 12, 'Verified', '2026-04-07 10:00:00', 'Payment, payout, and commission successfully reconciled.'),
    (13, 13, 13, 'Verified', '2026-04-16 10:00:00', 'Payment, payout, and commission successfully reconciled.'),
    (14, 14, 14, 'Matched', '2026-04-25 10:00:00', 'Payment, payout, and commission successfully reconciled.'),
    (15, 15, 15, 'Verified', '2026-05-01 10:00:00', 'Payment, payout, and commission successfully reconciled.'),
    (16, 16, 16, 'Verified', '2026-05-10 10:00:00', 'Payment, payout, and commission successfully reconciled.'),
    (17, 17, 17, 'Verified', '2026-05-19 10:00:00', 'Payment, payout, and commission successfully reconciled.'),
    (18, 18, 18, 'Verified', '2026-05-25 10:00:00', 'Payment, payout, and commission successfully reconciled.'),
    (19, 19, 19, 'Verified', '2026-06-03 10:00:00', 'Payment, payout, and commission successfully reconciled.'),
    (20, 20, 20, 'Verified', '2026-06-12 10:00:00', 'Payment, payout, and commission successfully reconciled.');

SELECT * FROM booking_payment_payout_audit;

SELECT COUNT(*) AS total_booking_payment_payout_audit
FROM booking_payment_payout_audit;

-- ============================================================
-- DATABASE-WIDE ROW COUNT SUMMARY
-- ============================================================
SELECT 'users' AS table_name, COUNT(*) AS total_rows FROM users
UNION ALL
SELECT 'user_roles' AS table_name, COUNT(*) AS total_rows FROM user_roles
UNION ALL
SELECT 'user_role_assignments' AS table_name, COUNT(*) AS total_rows FROM user_role_assignments
UNION ALL
SELECT 'guest_profiles' AS table_name, COUNT(*) AS total_rows FROM guest_profiles
UNION ALL
SELECT 'host_profiles' AS table_name, COUNT(*) AS total_rows FROM host_profiles
UNION ALL
SELECT 'social_accounts' AS table_name, COUNT(*) AS total_rows FROM social_accounts
UNION ALL
SELECT 'countries' AS table_name, COUNT(*) AS total_rows FROM countries
UNION ALL
SELECT 'cities' AS table_name, COUNT(*) AS total_rows FROM cities
UNION ALL
SELECT 'addresses' AS table_name, COUNT(*) AS total_rows FROM addresses
UNION ALL
SELECT 'properties' AS table_name, COUNT(*) AS total_rows FROM properties
UNION ALL
SELECT 'property_photos' AS table_name, COUNT(*) AS total_rows FROM property_photos
UNION ALL
SELECT 'amenities' AS table_name, COUNT(*) AS total_rows FROM amenities
UNION ALL
SELECT 'property_amenities' AS table_name, COUNT(*) AS total_rows FROM property_amenities
UNION ALL
SELECT 'house_rules' AS table_name, COUNT(*) AS total_rows FROM house_rules
UNION ALL
SELECT 'property_house_rules' AS table_name, COUNT(*) AS total_rows FROM property_house_rules
UNION ALL
SELECT 'payment_methods' AS table_name, COUNT(*) AS total_rows FROM payment_methods
UNION ALL
SELECT 'bookings' AS table_name, COUNT(*) AS total_rows FROM bookings
UNION ALL
SELECT 'payments' AS table_name, COUNT(*) AS total_rows FROM payments
UNION ALL
SELECT 'host_payouts' AS table_name, COUNT(*) AS total_rows FROM host_payouts
UNION ALL
SELECT 'cancellations' AS table_name, COUNT(*) AS total_rows FROM cancellations
UNION ALL
SELECT 'reviews' AS table_name, COUNT(*) AS total_rows FROM reviews
UNION ALL
SELECT 'messages' AS table_name, COUNT(*) AS total_rows FROM messages
UNION ALL
SELECT 'wishlists' AS table_name, COUNT(*) AS total_rows FROM wishlists
UNION ALL
SELECT 'wishlist_items' AS table_name, COUNT(*) AS total_rows FROM wishlist_items
UNION ALL
SELECT 'property_availability' AS table_name, COUNT(*) AS total_rows FROM property_availability
UNION ALL
SELECT 'seasonal_prices' AS table_name, COUNT(*) AS total_rows FROM seasonal_prices
UNION ALL
SELECT 'search_logs' AS table_name, COUNT(*) AS total_rows FROM search_logs
UNION ALL
SELECT 'support_tickets' AS table_name, COUNT(*) AS total_rows FROM support_tickets
UNION ALL
SELECT 'admin_actions' AS table_name, COUNT(*) AS total_rows FROM admin_actions
UNION ALL
SELECT 'guest_property_wishlist' AS table_name, COUNT(*) AS total_rows FROM guest_property_wishlist
UNION ALL
SELECT 'host_property_amenity_management' AS table_name, COUNT(*) AS total_rows FROM host_property_amenity_management
UNION ALL
SELECT 'booking_payment_payout_audit' AS table_name, COUNT(*) AS total_rows FROM booking_payment_payout_audit;

SELECT booking_status, COUNT(*) AS total_bookings FROM bookings GROUP BY booking_status;
SELECT payment_status, COUNT(*) AS total_payments FROM payments GROUP BY payment_status;

SELECT c.city_name, COUNT(p.property_id) AS total_properties FROM properties p JOIN addresses a ON a.address_id=p.address_id JOIN cities c ON c.city_id=a.city_id GROUP BY c.city_id,c.city_name ORDER BY total_properties DESC;

SELECT hp.host_profile_id, CONCAT(u.first_name, ' ', u.last_name) AS host_name, COUNT(p.property_id) AS property_count FROM host_profiles hp JOIN users u ON u.user_id=hp.user_id LEFT JOIN properties p ON p.host_id=hp.host_profile_id GROUP BY hp.host_profile_id,u.first_name,u.last_name ORDER BY property_count DESC;
