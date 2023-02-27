# sql-challenge

## BackGround

It's been two weeks since I was hired as a new data engineer at Pewlett Hachard. My major task is to do a research project on employees of the company from the year 1980s to 1990s. All that remains of the employees database from that period are six CSV files.

## Steps Taken

- Data Modeling
- Data Engineering
- Data Analysis

## Data Modeling

Inspected the CSV files, and then sketched out an Entity Relationship Diagram of the tables using a free tool
<a href="https://www.quickdatabasediagrams.com/">QuickQBD</a>

## Data Engineering

Created a table schema for each of the six CSV files (in the correct order to handle foreign keys) specifying data types, primary keys, foreign keys, and other constraints.

Imported each CSV file into the corresponding SQL table.

## Data Analysis

Once the database was completed, I ran queries to list the followings:

  1. List of each employee: employee number, last name, first name, sex, and salary.
  2. List the first name, last name, and hire date for the employees who were hired in 1986.
  3. List the manager of each department along with their department number, department name, employee number, last name, and first name.
  4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
  5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
  6. List each employee in the Sales department, including their employee number, last name, and first name.
  7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
  8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).



