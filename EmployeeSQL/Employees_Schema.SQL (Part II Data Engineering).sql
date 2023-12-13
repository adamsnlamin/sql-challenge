-- PART II DATA ENGINEERING

-- Drop Tables with existing the database
DROP TABLE IF EXISTS Titles;
DROP TABLE IF EXISTS Employees;
DROP TABLE IF EXISTS Departments;
DROP TABLE IF EXISTS Dept_Employees;
DROP TABLE IF EXISTS Dept_Managers;
DROP TABLE IF EXISTS Salaries;


-- Change date format to Month Day and Year from the defaults format in the database.
ALTER DATABASE employees_db SET datestyle TO "ISO, MDY";
	
-- Create All the Tables for the Dataset

-- Create Departments Table 
CREATE TABLE Departments(
	dept_no VARCHAR(10) NOT NULL,
	dept_name VARCHAR(50) NOT NULL,
	UNIQUE (dept_no),
	PRIMARY KEY (dept_no)
);
SELECT * FROM Departments;


-- Create Department Employees Table
CREATE TABLE Dept_Employees(
	employee_no INTEGER,
	dept_no VARCHAR(10),
	UNIQUE (dept_no),
	PRIMARY KEY (employee_no, dept_no)
);
SELECT * FROM Dept_Employees;

	
-- Create Department Managers Table
CREATE TABLE Dept_Employees(
	employee_no INTEGER NOT NULL,
	dept_no VARCHAR(10) NOT NULL,
	PRIMARY KEY (employee_no, dept_no)
);
SELECT * FROM Dept_Managers;


-- Create Employees Table
CREATE TABLE Employees(
	employee_no INTEGER NOT NULL,
	employee_title_id VARCHAR(10) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	gender VARCHAR(10) NOT NULL,
	hire_date DATE NOT NULL,
	UNIQUE (employee_no),
	PRIMARY KEY (employee_no)
);
SELECT * FROM Employees;


-- Create Salaries Table
CREATE TABLE Salaries(
	employee_no INTEGER NOT NULL,
	salary INTEGER NOT NULL,
	UNIQUE (employee_no),
	PRIMARY KEY (employee_no)
);
SELECT * FROM Salaries;


-- Create Titles Table
CREATE TABLE Titles(
	title_id VARCHAR(10) NOT NULL,
	title_name VARCHAR(30) NOT NULL,
	UNIQUE (title_id, title_name),
	PRIMARY KEY (title_id)
);

SELECT * FROM Titles;
