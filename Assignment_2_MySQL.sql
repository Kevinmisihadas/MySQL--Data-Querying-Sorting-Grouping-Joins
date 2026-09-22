-- ASSIGNMENT 2

CREATE DATABASE EMPLOYEE;
USE EMPLOYEE;
show databases;
CREATE TABLE departments(
	department_id INT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL UNIQUE
);
desc employees;
CREATE TABLE location(
	location_id INT PRIMARY KEY AUTO_INCREMENT,
    location VARCHAR(30) NOT NULL UNIQUE
);

CREATE TABLE Employees(
	employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50) NOT NULL,
    gender ENUM('M','F'),
    age INT CHECK(age>=18),
    hire_date DATE DEFAULT(CURRENT_DATE),
    designation VARCHAR(100),
    department_id INT,
    location_id INT,
    salary DECIMAL(10,2),
    FOREIGN KEY(department_id) REfERENCES departments(department_id),
    FOREIGN KEY(location_id) REFERENCES location(location_id)
);
-- Assignment 1 Questions
/*-- Qn1. Add a new column named "email" to the Employees table to store employee email addresses.
ALTER TABLE Employees ADD COLUMN email VARCHAR(100);

-- Qn2. Modify the data type of the "designation" column in the Employees table to support a wider range of values.  
ALTER TABLE Employees MODIFY designation VARCHAR(200);

-- Qn3. Drop the “age” column from the Employees table. 
ALTER TABLE Employees DROP COLUMN Age;    
    
-- Qn4. Rename the “hire_date” column to “date_of_joining”.
ALTER TABLE Employees RENAME COLUMN hire_date TO date_of_joining;    
DESC Employees;
    
-- Qn4.  Rename the "Departments" table to "Departments_Info"
RENAME TABLE Departments TO Departments_Info; 

-- Qn5. Rename the "Location" table to "Locations". 
RENAME TABLE Location TO Locations; 
    
-- Qn6. Table Truncation (TRUNCATE): Write an SQL statement to truncate the Employees table.     
TRUNCATE TABLE Employees;    
 
-- Qn7.  Database & Table Dropping (DROP): Write the SQL statements to drop the Employees table and then the “employee” database. 
DROP TABLE Employees;
DROP DATABASE EMPLOYEE;
*/

-- Assignment 2 Questions
Alter table employees ADD column  age INT CHECK(age>=18);
DESC employees; 
DESC Departments_Info;
DESC locations;

INSERT INTO Departments_Info (department_id, department_name) VALUES
(1, 'Software Development'),
(2, 'Marketing'),
(3, 'Data Science'),
(4, 'Human Resources'),
(5, 'Product Management'),
(6, 'Content Creation'),
(7, 'Finance'),
(8, 'Design'),
(9, 'Research and Development'),
(10, 'Customer Support'),
(11, 'Business Development'),
(12, 'IT'),
(13, 'Operations');
Select * from Departments_Info;

INSERT INTO Locations (location) VALUES
('Chennai'),
('Bangalore'),
('Hyderabad'),
('Pune');
Select * from Locations;

INSERT INTO employees (employee_id, employee_name, gender, age, date_of_joining , designation, department_id, location_id, salary) VALUES
(5001, 'Vihaan Singh', 'M', 27, '2015-01-20', 'Data Analyst', 3, 4, 60000),
(5002, 'Reyansh Singh', 'M', 31, '2015-03-10', 'Network Engineer', 12, 1, 80000),
(5003, 'Aaradhya Iyer', 'F', 26, '2015-05-20', 'Customer Support Executive', 10, 2, 45000),
(5004, 'Kiara Malhotra', 'F', 29, '2015-07-05', NULL, 8, 3, 70000),
(5005, 'Anvi Chaudhary', 'F', 25, '2015-09-11', 'Business Development Executive', 11, 1, 55000),
(5006, 'Dhruv Shetty', 'M', 28, '2015-11-20', 'UI Developer', 8, 2, 65000),
(5007, 'Anushka Singh', 'F', 32, '2016-01-15', 'Marketing Manager', 2, 3, 90000),
(5008, 'Diya Jha', 'F', 27, '2016-03-05', 'Graphic Designer', 8, 4, 70000),
(5009, 'Kiaan Desai', 'M', 30, '2016-05-20', 'Sales Executive', 11, 3, 55000),
(5010, 'Atharv Yadav', 'M', 29, '2016-07-10', 'Systems Administrator', 12, 4, 80000),
(5011, 'Saanvi Patel', 'F', 28, '2016-09-20', 'Marketing Analyst', 2, 1, 60000),
(5012, 'Myra Verma', 'F', 26, '2016-11-05', 'Operations Manager', 13, 2, 95000),
(5013, 'Arnav Rao', 'M', 33, '2017-01-20', 'Customer Success Manager', 10, 3, 75000),
(5014, 'Vihaan Mohan', 'M', 30, '2017-03-10', 'Supply Chain Analyst', 10, 2, 60000),
(5015, 'Ishaan Kumar', 'M', 27, '2017-05-20', 'Financial Analyst', 7, 1, 85000),
(5016, 'Zoya Khan', 'F', 31, '2017-07-05', 'Legal Counsel', 4, 4, 100000),
(5017, 'Kabir Nair', 'M', 28, '2017-09-11', 'IT Support Specialist', 12, 2, 80000),
(5018, 'Ishan Mishra', 'M', 25, '2017-11-20', 'Research Scientist', 9, 3, 75000),
(5019, 'Ishika Patel', 'F', 29, '2018-01-15', 'Talent Acquisition Specialist', 4, 4, 55000),
(5020, 'Aarav Nair', 'M', 32, '2018-03-05', 'Software Engineer', 1, 1, 90000),
(5021, 'Advik Kapoor', 'M', 26, '2018-05-20', 'Finance Analyst', 7, 3, 85000),
(5022, 'Aadhya Iyengar', 'F', 28, '2018-07-10', 'HR Specialist', 4, 4, 60000),
(5023, 'Anika Paul', 'F', 30, '2018-09-20', 'Public Relations Specialist', 2, 2, 70000),
(5024, 'Aryan Shetty', 'M', 27, '2018-11-05', 'Product Manager', 5, 1, 95000),
(5025, 'Avni Iyengar', 'F', 31, '2019-01-20', 'Data Scientist', 3, 4, 100000),
(5026, 'Vivaan Singh', 'M', 29, '2019-03-10', 'Business Analyst', 3, 2, 75000),
(5027, 'Ananya Paul', 'F', 32, '2019-05-20', 'Content Writer', 6, 3, 60000),
(5028, 'Anaya Kapoor', 'F', 26, '2019-07-05', 'Event Coordinator', 6, 1, 60000),
(5029, 'Arjun Kumar', 'M', 33, '2019-09-11', 'Quality Assurance Analyst', 12, 2, 80000),
(5030, 'Sara Iyer', 'F', 28, '2019-11-20', 'Project Manager', 5, 1, 90000);
Select * From Employees;
Select * from Departments_Info;
Select * from Locations;

-- Q1. Retrieve distinct salaries
SELECT DISTINCT(Salary) as Distinct_Salaries from Employees;

-- Q2. Use aliases for age and salary
SELECT age AS Employee_Age,salary AS Employee_Salary from Employees;

-- Q3(a). Employees with salary > 50000 and hired before 2016-01-01. 
SELECT * FROM Employees WHERE salary>50000 AND date_of_joining <'2016-01-01';

-- Q3(b). Find employee with missing designation
Select * From Employees where designation IS NULL;
Update Employees SET Designation = "Data Scientist" where Designation IS NULL;
Select * from Employees where employee_id=5004;

-- Q1. Sort by department ID ascending and salary descending
Select * from Employees Order By department_id ASC,Salary DESC;

--   Display the first 5 employees hired in the year 2018.
Select * From Employees where year(date_of_joining)=2018 Order By date_of_joining ASC LIMIT 5;

--  Sum of all salaries in the Finance department. 
Select SUM(Salary) as Total_Salary from Employees e JOIN Departments_Info d ON e.department_id=d.department_id Where department_name='Finance';

-- Minimum age among all employees.
Select Min(Age) as Minimum_Age from Employees;

--  List the maximum salary for each location
Select l.Location,Max(e.salary) as Total_Salary from 
	Employees e JOIN Locations l ON e.Location_id=l.location_id Group By l.Location;
    
--  Average salary for each designation containing the word 'Analyst'.
Select Designation,Avg(salary)as Average_Salary from employees where 
	designation Like '%Analyst%' Group By Designation;

-- Departments with less than 3 employees.
Select Department_id,count(*) as emp_count  from employees group by department_id Having count(*)<3;    

-- Locations with female employees whose average age is below 30. 
Select location,avg(salary) as average_salary from locations l join employees e On l.location_id=e.location_id Where e.gender='F' Group By Location having avg(e.age)<30;

-- List employee names, their designations, and department names where employees are assigned to a department.
Select Employee_name,Designation,Department_name from employees e 
	INNER JOIN Departments_Info d ON e.department_id=d.department_id;

-- List all departments along with the total number of employees in each 
-- department, including departments with no employees.
Select d.department_name,count(e.employee_id) AS Employee_Count From Departments_info d 
	Left Join Employees e on  d.department_id=e.department_id Group By d.department_id, d.department_name;

/* Display all locations along with the names of employees assigned to each 
location. If no employees are assigned to a location, display NULL for employee name.*/
Select l.location,e.employee_name from Employees e 
	Right Join locations l ON e.location_id = l.location_id;