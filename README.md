# Pewlett-Hackard-Analysis
SQL learning 
## Overview of the Analysis

This project is taken under the manager request to determine the number of retiring employees per title and identify employees who are eligible to participate in the mentorship program. Using this data we wil help Bobby's manager for the " silver tsunami"  as many of the employees reach retirement age. 

## Results
### Deliverable 1: The Number of Retiring Employees by Title

In this Analysis section we going to use the ERD that been created as the reference. We will create the Retirement Titles that will holds all the titles of employees who were born between January 1,1952 and December 31,1955. in order to filter the data efficiently,
  - We have use the DISTINCT ON function  to create a table that contains the most recent titles of each employees.   
  - We have retrived the emp_no, first_name, last_name , title. from_date, to_date from the employees and titles table respectively, 
  - Then filtered the data on the birth_date born between 1952 and 1955 and posted in retirement_title table. 
  - It looks like:



![](https://github.com/urvish7/Pewlett-Hackard-Analysis/blob/main/screenshots/retirement.png)

Then we have the DISTINCT ON statement to retrieve the first occurrence of the employee number. excluded the employees who have left or has previous position records and after that we have posted that in unique_titles table. look like:

![](https://github.com/urvish7/Pewlett-Hackard-Analysis/blob/main/screenshots/unique_titles.png)

Also, after that we have retrived the number of employees by their most recent job title who are about to retire and made a separate table named retiring_titles 

![](https://github.com/urvish7/Pewlett-Hackard-Analysis/blob/main/screenshots/retiring_titles.png)

### Deliverable 2: The Employees Eligible for the Mentorship Program

IN this Analysis, we will create the mentorship-eligibility table that holds the current employees who were born between January 1, 1965 and December 31,1965.

In this process:
   - We will retrive the emp_no, first_name,last_name, birth_date, from_date, to_date, title from employees, Department employee and titles respectively. 
   - We have Joined tables in order to filter the data at best possible way.    - We  only kept the current  employees 
   - Then filtered the table with birth_date colums to get all the employees whose birthdates are between January 1,1965 and December 31, 1965.
   -  Then sorted the table by employee number.
     
mentorship_eligibilty: 

![](https://github.com/urvish7/Pewlett-Hackard-Analysis/blob/main/screenshots/mentorship_eligibilty.png)

### Summary 

  - There are 7 roles in total among the candidate they are:
      - Senior Engineer (25916)
      - Senior Staff(24926)
      - Engineer(9285)
      - Staff (7636)
      - Technical Leader (3603)
      - Assistant Engineer (1090)
      - Manager (2)
  - According to the data that we have it can be said that the current amount of the mentorship_eligibility number is enough to mentor the next generations of the Pewlett Hackard employees.
    

