-- 1. Add a new patient to the Patients table.
insert into patients values(13,103,303,"Mike Johnson");
select * from patients;
-- 2. Insert a new appointment for a patient with a specific doctor on a given date and time.
insert into appointments values(304,5,102,"2024-07-23","15:00","Cancelled");
select * from appointments;
-- 3. Record a new medical test for a patient.
insert into medical_test values(14,"Positive");
select * from medical_test;