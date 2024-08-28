
-- 1. Update the name of a patient.
update patients
set p_name = "Thanu" where p_id = 4;
select * from patients;
-- 2. Change the status of an appointment (e.g., "Scheduled" to "Completed").
update appointments 
set status = "Completed" where a_id = 204;
select * from appointments;
-- 3. Update the test results for a medical test.
update medical_test 
set result = "Negative" where p_id = 5;
select * from medical_test;