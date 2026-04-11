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

