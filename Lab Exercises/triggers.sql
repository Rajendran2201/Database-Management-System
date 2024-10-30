

CREATE TRIGGER CalculateTotalCutoff
BEFORE INSERT ON Stud
FOR EACH ROW
BEGIN
    -- Calculate Total marks as the average of all subjects
    UPDATE Stud
    SET Total = (NEW.Tamil + NEW.English + NEW.Maths + NEW.Physics + NEW.Chemistry + NEW.Biology) / 6,
        Cutoff = (NEW.Physics / 4) + (NEW.Chemistry / 4) + (NEW.Maths / 4),
        Status = CASE 
                    WHEN NEW.Tamil < 75 OR NEW.English < 75 OR NEW.Maths < 75 OR NEW.Physics < 75 OR NEW.Chemistry < 75 OR NEW.Biology < 75
                    THEN 'Fail'
                    ELSE 'Pass'
                 END
    WHERE RegNo = NEW.RegNo;
END;

