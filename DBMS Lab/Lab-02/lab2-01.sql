-- 1. Retrieve the full list of patients.
select p_id, p_name from patients;
-- 2. Find all doctors who specialize in "Cardiology".
select * from doctor where spec = "Cardiology";
-- 3. Get all appointments scheduled for a specific doctor on a given date.
select * from appointments where d_id = 101 and date = "2024-08-20";
-- 4. List all medical tests conducted on a specific patient.
select * from medical_test where p_id = 5;
-- 5. Retrieve contact information of all doctors.
select * from doctor;

