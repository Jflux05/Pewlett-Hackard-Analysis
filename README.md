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

### Potential Future Job Openings

Once we established a clean list of employees with the highest potential to retire, we were able to get a greater understanding of the employees retiring. We were able to identify how many employees were [retiring by title](Data/retiring_titles.csv). 

![Retiring_titles.png](https://github.com/Jflux05/Pewlett-Hackard-Analysis/blob/d7daf15eb901c9bf3f20c5b6e6cf8a20798134a6/Data/retiring_titles.png)

We were able to determine that Pewlett-Hackard currently has just under 72.5K employees that could be retiring soon. 

The analysis spotlights that of the 72,458 employees that could soon retire, a significant portion of the potentially retiring employees:
- ~75% or 54,447 hold senior, leadership or management roles
- ~50% or 36,291 are engineers

Without a proper plan for hiring and mentoring new and existing employees to offset such a large loss in talent and internal knowledge Pewlett-Hackard could face significant hardships from such a significant talent drain due to retirement. 


### Eligible Employees for Mentorship 
In response, Pewlett-Hackard has decided to implement a mentorship program, where existing senior employees (born in 1965) can help train and pass on critical internal knowledge to less senior employees. They have requested a list be compiled that would identify who the eligible senior employees are. 

This criterion resulted in a list (screenshot shown below) with 1549 employees and their titles. 
![mentorship_eligibility.png](https://github.com/Jflux05/Pewlett-Hackard-Analysis/blob/68e2fcc9a3036160a04cd092e41ae8ecd22bcbc4/Data/mentorship_eligibility.png)

It appears that there are not enough qualified employees ready for retirement in the various departments to mentor the less senior employees. Each mentor would need to take on a significant amounts mentees, which would be too large of a workload for any employee, especially part-time retiring employees. 


## Summary
Based on the finidings of our analysis, Pewlett-Hackard is facing a "silver tsunami" where 72,458 employees could soon retire. Which will result in a major knowledge drain on the greater organization. HR needs to ramp of its hiring plan to ensure they avoid a productivity deficit as a result of the large amount of employees that could retire soon. 




