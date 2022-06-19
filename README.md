# Pewlett Hackard Analysis
Employee database analysis on retiring employees using SQL and pgAdmin

## Overview of the analysis
The purpose of this analysis was to conduct an analysis for Pewlett Hackard company, with detailed information on the number of future retirees from all departments currently working at the company to be able to prepare a plan to hire new staff and also to prepare a mentorship program. <br/>
The criterion was based on the birth dates ranging from 1952 to 1955 and hired dates from 1985 to 1988.



## Analysis
Provide a bulleted list with four major points from the two analysis deliverables. Use images as support where needed.<br/>
**[Tables Relationship Diagram](Data/ERD.png)**
shows the structure of dataset, the relationship between tha data tables, and the Primary and Foreign Keys, that helps the analysis.
<br/>
<br/>

### The Number of Retiring Employees by Title  ( 133776 )

Take the steps:
  - Create a [Retirement Titles](Data/retirement_titles.csv) table for employees who are born between January 1, 1952 and December 31, 1955.<br/>
  ![rt.png](Data/rt.png) <br/>
  - Create a [Unique Titles](Data/unique_titles.csv) table that contains the employee number, first and last name, and most recent title.<br/>
    to remove the duplicate data from the Retirement_Titles table <br/>
    ![ut.png](Data/ut.png)<br/>
  - Create a [Retiring Titles](Data/retiring_titles.csv) table that contains the number of titles filled by employees who are retiring.<br/>
    ![open_position.png](Data/open_position.png)<br/>

<br/>

### The Employees Eligible for the Mentorship Program
For this goal we did create a [Mentorship Eligibility](Data/mentorship_eligibilty.csv) table that holds the current employees who were born between January 1, 1965 and December 31, 1965.



# Results

## Future Job Openings
![open_position.png](Data/open_position.png) <br/>




- The Employees Eligible for the Mentorship Program




## Summary
Provide high-level responses to the following questions, then provide two additional queries or tables that may provide more insight into the upcoming "silver tsunami."
- How many roles will need to be filled as the "silver tsunami" begins to make an impact?
- Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
