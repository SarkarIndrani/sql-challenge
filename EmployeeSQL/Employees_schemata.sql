--Create Departments table
CREATE TABLE Departments(
	dept_no VARCHAR(50) NOT NULL,
	dept_name VARCHAR(50) NOT NULL,
	PRIMARY KEY (dept_no)
);

--Create Titles table
CREATE TABLE Titles(
	title_id VARCHAR(50) NOT NULL,
	title VARCHAR (50) NOT NULL,
	PRIMARY KEY (title_id)
);

--Create Employees table
CREATE TABLE Employees(
	emp_no INT NOT NULL,
	emp_title_id VARCHAR(30) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(255) NOT NULL,
	last_name VARCHAR(255) NOT NULL,
	sex VARCHAR NOT NULL,
	hire_date DATE NOT NULL,
	PRIMARY KEY(emp_no),
	FOREIGN KEY(emp_title_id)REFERENCES Titles (title_id)
);

--Create table Department_Employees
CREATE TABLE Department_Employees(
	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no)REFERENCES Employees(emp_no),
	dept_no VARCHAR NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES Departments(dept_no),
	PRIMARY KEY (emp_no, dept_no)	
);

--Create table Salaries
CREATE TABLE Salaries(
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);

--Create table Department_Manager
CREATE TABLE Department_Manager(
	dept_no VARCHAR NOT NULL,
	emp_no INT NOT NULL,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (dept_no) REFERENCES Departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);


