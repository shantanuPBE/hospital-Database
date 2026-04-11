<img width="1182" height="677" alt="Screenshot 2026-04-11 101559" src="https://github.com/user-attachments/assets/ad748fac-820c-4e73-89c3-7fe7ee85f60d" />

🏥 Hospital Management System (HMS) - Backend Schema
📌 Project Essence
This project is a highly normalized Relational Database Design for a Hospital Management System. Unlike basic projects, this schema is designed to handle Multiple Diagnoses per Visit and Doctor-Specific Shift Timings, making it ready for real-world application scaling.

🛠 Tech Stack & Tools
Database: MySQL / PostgreSQL

Modeling Tool: ChartDB (ER Diagramming)

Design Pattern: 3rd Normal Form (3NF)

🗄️ Database Schema Details
Each table is designed with specific constraints to ensure data integrity and performance.

🏢 1. Department Table
Stores information about various medical departments.

d_id (INT, PK): Unique identifier for the department.

d_name (TEXT): Name of the department (e.g., Cardiology, Neurology).

d_location (TEXT): Floor or wing location in the hospital.

d_contactemergency (TEXT): Emergency contact extension for the department.



👨‍⚕️ 2. Doctor Table
Contains professional details and availability of consultants.

D_id (INT, PK): Unique identifier for the doctor.

D_name (TEXT): Full name of the medical professional.

d_id (INT, FK): Links the doctor to a specific department.

D_specialization (TEXT): Area of expertise.

D_day (TEXT): Days of the week the doctor is available.

D_time_morning (TIME): Morning shift start/end time.

D_time_evening (TIME): Evening shift start/end time.



👤 3. Patient Table
Master record for all patients registered with the hospital.

p_id (INT, PK): Unique patient identification number.

p_name (TEXT): Full name of the patient.

p_dob (DATE): Date of Birth (Used to calculate age dynamically).

p_gender (TEXT): Male, Female, or Other.

p_contact (INT): Primary mobile or emergency contact number.

p_address (VARCHAR): Residential address.



📅 4. Appointment Table
The bridge table managing visits between doctors and patients.

a_id (INT, PK): Unique appointment/token number.

p_id (INT, FK): Reference to the patient.

d_id (INT, FK): Reference to the doctor.

a_date (DATETIME): Scheduled date and time of the visit.

a_fee (INT): Consultation charges for the session.



📝 5. Medical Records Table
Stores granular diagnostic data for every appointment.

r_id (INT, PK): Unique record identifier.

r_app_id (INT, FK): Links the record to a specific appointment.

r_diseasename (TEXT): Name of the diagnosed ailment.

r_prescription (TEXT): Detailed medication and dosage.

r_test (TEXT): Recommended lab tests or scans.

r_status (TEXT): Recovery status (e.g., Under Treatment, Recovered).

r_followupdate (DATE): Suggested date for the next visit.

r_fee: fee for medicenenand test 
