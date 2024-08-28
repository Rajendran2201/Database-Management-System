-- DELETE Queries:
-- 1. Remove a patient record from the database.
delete from patients where p_id = 1;
select * from patients;
-- 2. Delete an appointment for a specific patient.
delete from appointments where p_id = 1;
select * from appointments;



-- 22:17:52	delete from appointments where p_id = 1	Error Code: 1175. You are using safe update mode and you tried to update a table without a WHERE that uses a KEY column.  To disable safe mode, toggle the option in Preferences -> SQL Editor and reconnect.	0.0017 sec
SET SQL_SAFE_UPDATES = 0;




