in this file all the commands to create the table in hospital database

 show databases;
--  this command show how much databases in your mysql dbms
 use hospital;
-- above command  database selected 
create table department( d_id int primary key , d_name varchar(20) not null ,d_location varchar(50) , d_emergency boolean);
-- above command create table department 
 create table doctor(D_id int primary key,D_name varchar(20),D_specialization varchar(30),D_day varchar(30),time Time); 
--  create doctor table 
describe doctor;
-- this above command show or  describe the any table means it's column 
-- in doctor table u create a foreign key along with table but u are also add foreign key after creating the table
 alter table doctor add dept_id int ;
--  first add column of department than apply foreign key in this column
 alter table doctor add constraint fk_d_id foreign key(dept_id) references department(d_id);
--  now add foreign key on dept_id in doctor table 
-- check using describe tablename ;
create table patient(p_id int primary key , p_name varchar(20),p_dob date , p_gender varchar(10),p_contact long , p_address varchar(60));
-- create the table of patient 
 create table appointment(a_id int primary key , p_id int ,D_id int ,a_date date ,a_fee int,constraint fk_patient_id foreign key(p_id)references patient(p_id),constraint fk_Doctor_id foreign key(D_id) references doctor(D_id));
--  create the table appointment and show the relationship between doctor table and patient table 
 create table record(r_id int primary key , a_id int , r_disease varchar(50),r_presecption varchar(50),test varchar(30),status varchar(20),r_follodate date ,r_fee int , constraint fk_appointment_id foreign key(a_id) references appointment(a_id));
--  create the table of records and connect with appointment ;

-- to enter the details in department table 
INSERT INTO department (d_id, d_name, d_location, d_emergency) VALUES
(101, 'Cardiology', 'Block A, Floor 1', 1),
(102, 'Neurology', 'Block B, Floor 3', 0),
(103, 'Orthopedics', 'Block A, Floor 2', 1),
(104, 'Pediatrics', 'Block C, Floor 1', 0),
(105, 'Emergency', 'Ground Floor', 1),
(106, 'Dermatology', 'Block D, Floor 2', 0),
(107, 'Oncology', 'Block B, Floor 4', 1);

-- insert the record in doctor table 
INSERT INTO doctor (D_id, D_name, D_specialization, D_day, time, dept_id) VALUES
(1, 'Dr. Aryan Sharma', 'Cardiologist', 'Monday, Wednesday', '10:30:00', 101),
(2, 'Dr. Sneha Patel', 'Neurologist', 'Tuesday, Thursday', '11:00:00', 102),
(3, 'Dr. Amit Verma', 'Orthopedic', 'Monday, Friday', '09:00:00', 103),
(4, 'Dr. Priya Das', 'Pediatrician', 'Wednesday, Saturday', '14:30:00', 104),
(5, 'Dr. Rahul Mehta', 'General Physician', 'Daily', '08:00:00', 105),
(6, 'Dr. Kavita Reddy', 'Dermatologist', 'Tuesday, Friday', '16:00:00', 106),
(7, 'Dr. Vikram Singh', 'Surgeon', 'Sunday', '12:00:00', 101);

-- to enter the record or details of patient 
INSERT INTO patient (p_id, p_name, p_dob, p_gender, p_contact, p_address) VALUES
(1001, 'Rohan Mehra', '1995-05-15', 'Male', '9876543210', '12/A, Green Park, Delhi'),
(1002, 'Suman Sharma', '1988-12-02', 'Female', '8877665544', 'Flat 402, Sunrise Apt, Mumbai'),
(1003, 'Arjun Kapoor', '2001-08-20', 'Male', '9911223344', 'House No. 45, Sector 15, Chandigarh'),
(1004, 'Ananya Iyer', '1992-03-10', 'Female', '7766554433', 'Plot 89, Indiranagar, Bangalore'),
(1005, 'Vikram Rathore', '1975-07-25', 'Male', '9001234567', 'B-12, Malviya Nagar, Jaipur'),
(1006, 'Ishita Dutta', '1998-11-30', 'Female', '8100998877', 'Salt Lake City, Block C, Kolkata'),
(1007, 'Kabir Singh', '1985-01-12', 'Male', '9555667788', 'Banjara Hills, Road No 10, Hyderabad');

-- to enter the record or data in appiontment table
INSERT INTO appointment (a_id, p_id, D_id, a_date, a_fee) VALUES
(501, 1001, 1, '2026-04-15', 500),
(502, 1002, 2, '2026-04-15', 800),
(503, 1003, 3, '2026-04-16', 600),
(504, 1004, 4, '2026-04-16', 400),
(505, 1005, 5, '2026-04-17', 300),
(506, 1006, 6, '2026-04-17', 700),
(507, 1007, 1, '2026-04-18', 500);

-- to enter the record in our table record
INSERT INTO record (r_id, a_id, r_disease, r_presecption, test, status, r_follodate, r_fee) VALUES
(1, 501, 'Diabetes', 'Metformin 500mg', 'HbA1c', 'Ongoing', '2026-05-15', 200),
(2, 501, 'Hypertension', 'Amlodipine 5mg', 'BP Check', 'Stable', '2026-05-15', 100),
(3, 502, 'Migraine', 'Naproxen', 'MRI Brain', 'Under Treatment', '2026-04-30', 500),
(4, 503, 'Back Pain', 'Physiotherapy', 'X-Ray Spine', 'Recovering', '2026-05-01', 300),
(5, 503, 'Vitamin D Deficiency', 'D3 Capsules', 'Blood Test', 'Ongoing', '2026-05-01', 150),
(6, 504, 'Common Cold', 'Paracetamol', 'None', 'Cured', NULL, 50),
(7, 505, 'Asthma', 'Inhaler', 'PFT Test', 'Critical', '2026-04-20', 400);
