CREATE DATABASE user;
USE user;

CREATE TABLE Users (
    UserID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    City VARCHAR(50),
    PhoneNumber VARCHAR(15)
);

-- Inserting user data into the Users table
INSERT INTO Users (FirstName, LastName, City, PhoneNumber)
VALUES
    ('John', 'Doe', 'Bangalore', '123-456-7890'),
    ('Anu', 'Manjunath', 'Bangalore', '123-956-7890'),
    ('Jane', 'Smith', 'Mysore', '987-654-3210'),
    ('Alice', 'Johnson', 'Hyderabad', '555-555-5555'),
    ('Bob', 'Williams', 'Vijayawada', '111-222-3333'),
    ('Daniel', 'P', 'Chennai', '111-242-3333');
    
SELECT * FROM Users;

SELECT City, COUNT(*) AS NumberOfPeople
FROM Users
WHERE City IN ('Bangalore', 'Mysore', 'Hyderabad', 'Vijayawada')
GROUP BY City;

-- Drop the Users table (not the entire database)
DROP TABLE Users;
