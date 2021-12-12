# Pewlett-Hackard-Analysis

## Overview 
Pewlett-Hackard, is aware of its aging workforce and understands that a large number of employees a variety og departments and leadership roles will likely be ritiring soon. The goal of this analysis is to better understand who will be retiring, which departments and roles will be impacted, and to utilize the analysis insights to prepare a plan to hire new staff and also to develop a mentorship initiative to fill the upcoming gaps. 

### Resources

- Software: 
  - PostreSQL 14 
  - pgAdmin 4 v6.2

- Data Files:
  -  [employees.csv](Data/employees.csv)
  -  [departments.csv](Data/departments.csv)
  -  [dept_emp.csv](Data/dept_emp.csv) 
  -  [dept_manager.csv](Data/dept_manager.csv)
  -  [salaries.csv](Data/salaries.csv)
  -  [titles.csv](Data/titles.csv)

## Results

The criterion for the analysis results were based on employees with birth dates that ranged from 1952 to 1955 and employees that were hired from 1985 to 1988.  

The following Entity Relationship Diagram (ERD) was used to visualize the relationships between the various data sources by mapping out the [Database ERD Schema](https://github.com/Jflux05/Pewlett-Hackard-Analysis/blob/5fc9ec72358bea54a2ff31cad90570d0b230784e/ERD%20schema.sql)

![EmployeeDB.png](https://github.com/Jflux05/Pewlett-Hackard-Analysis/blob/5fc9ec72358bea54a2ff31cad90570d0b230784e/EmployeeDB%20.png)


In order to ensure an accurate analysis, we needed to compile a list of unique employees in their existing roles that have a high likelihood of retiring soon. 

Once we established a clean list of employees with the highest potential to retire, we were able to get a greater understanding of the employees retiring. We were able to identify how many employees were [retiring by title](Data/retiring_titles.csv). 
![Retiring_titles.png](dndnkjds)
