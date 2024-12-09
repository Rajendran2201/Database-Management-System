create database fictional_social_media_platform;
use fictional_social_media_platform;

-- Q1. Create the above tables and insert appropriate entries.

-- --------------------------------------------------------------------------------------------------------------------
-- Users Table 

create table Users (
	user_id INT PRIMARY KEY auto_increment,
    username varchar(30),
    full_name text,
    email varchar(50),
    user_password varchar(50),
    date_of_birth DATE, 
    bio TEXT
);

 -- Insert data into Users table
INSERT INTO Users(username, full_name, email, user_password, date_of_birth, bio) VALUES 
('raj2201', 'Rajendran', 'raj@gmail.com', 'rajuu', '2006-01-22', 'Student'),
('abi657', 'Abinaya', 'abi@gmail.com', 'abinaya657', '2005-03-29', 'Engineer'),
('Mohit', 'Mohit Yuvaraj', 'mohii@gmail.com', 'mohiboy', '2005-03-09', 'Student'),
('Krishi', 'Krishitha', 'krishi@gmail.com', 'jaan', '2005-08-22', 'Engineer'),
('rhee984', 'Rheena', 'rheena@gmail.com', 'rheenume', '2005-11-19', 'Data Analyst');

-- -------------------------------------------------------------------------------------------------------------------
 -- Posts Table 
 
 create table Posts(
	post_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    content TEXT, 
    post_date DATE, 
    likes_count INT,
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
 );
 
  
 -- Insert data into Posts table
INSERT INTO Posts(user_id, content, post_date, likes_count) VALUES
(1, 'Excited for my next project release!', '2024-01-10', 5000),
(2, 'Happy to announce my new project!', '2024-01-15', 8000),
(3, 'Diwali special wishes to all!', '2024-01-17', 12000),
(4, 'Cheers, All the best!', '2024-02-02', 1500),
(5, 'Great post', '2024-02-05', 4500);
 
 -- -------------------------------------------------------------------------------------------------------------------
 -- Comments Table 
 create table Comments(
	comment_id INT PRIMARY KEY AUTO_INCREMENT, 
    user_id INT, 
    post_id INT, 
    comment_text TEXT, 
    comment_date DATE,
	FOREIGN KEY (user_id) REFERENCES Users(user_id),
	FOREIGN KEY (post_id) REFERENCES Posts(post_id)
 );
 
-- Insert data into Comments table
INSERT INTO Comments(user_id, post_id, comment_text, comment_date) VALUES
(2, 1, 'Congratulations!', '2024-01-11'),
(3, 1, 'Best wishes!', '2024-01-12'),
(4, 2, 'Looking forward to it!', '2024-01-16'),
(5, 3, 'Happy Diwali to you too!', '2024-01-18'),
(1, 4, 'Insightful thoughts!', '2024-02-03');
 
 -- -------------------------------------------------------------------------------------------------------------------
 
 -- Friends
 
 create table friends (
	friendship_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id_1 INT, 
    user_id_2 INT, 
    friendship_date DATE,
    FOREIGN KEY (user_id_1) REFERENCES Users(user_id),
    FOREIGN KEY (user_id_2) REFERENCES Users(user_id)
 );
 
 -- Insert data into Friends table
INSERT INTO Friends(user_id_1, user_id_2, friendship_date) VALUES
(1, 2, '2022-06-12'),
(1, 3, '2022-07-01'),
(2, 4, '2022-08-15'),
(3, 5, '2022-09-10'),
(4, 5, '2022-10-20');

-- -------------------------------------------------------------------------------------------------------------------
 
 -- Likes 
 
 create table likes(
	like_id INT PRIMARY KEY AUTO_INCREMENT, 
    user_id INT, 
    post_id INT, 
    like_date DATE,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (post_id) REFERENCES Posts(post_id)
 );
 
 -- Insert data into Likes table
INSERT INTO Likes(user_id, post_id, like_date) VALUES
(1, 2, '2024-01-15'),
(2, 1, '2024-01-10'),
(3, 5, '2024-02-05'),
(4, 3, '2024-01-17'),
(5, 4, '2024-02-02');
 
 
 -- -------------------------------------------------------------------------------------------------------------------
 
 