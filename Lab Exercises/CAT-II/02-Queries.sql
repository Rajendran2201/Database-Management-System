-- Q2. Create a procedure to displat all the users - name & email registered in social media application

DELIMITER //
create procedure displayDetails()
BEGIN
	SELECT full_name, email FROM Users;
END //
DELIMITER ;

CALL displayDetails();


-- Q3. Using Procedures, display all the comments posted by user_id 2

DELIMITER //
create procedure displayComments()
BEGIN
	SELECT comment_id, comment_text, comment_date FROM Comments WHERE user_id = 2;
END //
DELIMITER ;

CALL displayComments();


-- Q4. Create a procedure that displays all the friends of each of the registered users 1

DELIMITER //

CREATE PROCEDURE userFriends(IN id INT)
BEGIN
    SELECT 
        u.user_id,
        f.friendship_id as Friendship_ID,
        u.full_name AS Friend_Name,
        f.friendship_date AS Friendship_Date
    FROM 
        friends f
    JOIN 
        users u ON (f.user_id_1 = id AND f.user_id_2 = u.user_id)
    WHERE 
        f.user_id_1 = id OR f.user_id_2 = id;
END //

DELIMITER ;

call GetUserFriends(1);



-- Q5. Create a view that displays the following attributes of the users table 
		-- UserID, Name and BIO 
        
CREATE VIEW GetUserDetails as        
SELECT user_id, full_name, bio FROM Users;


SELECT * FROM GetUserDetails;


-- Q6. Create a view that displays user_id and the comments posted by them

CREATE VIEW GetComments AS
SELECT user_id, comment_text FROM Comments;


SELECT * FROM GetComments;


