# Bitsila Interview Assignment

## Problem statement: 
## Develop a simple Rails App using the above data and develop the APIs and write a simple UI that can show the below.
https://downloads.mysql.com/docs/world-db.zip(Corrected the link My self) - https://github.com/datacharmer/test_db
https://dev.mysql.com/doc/employee/en/sakila-structure.html


Copy this data to Google Big Query and write a script to push the incremental changes every one hour or whenever we do and write simple queries to extract the data for these.

Write these APIs to show the data as follows for the above dataset:
- top 10 years matching the birt Dash Bitla7:36 PM
- top 10 years matching the birth year employees
- Find 10 top paid salaried employees by department
- Top 10 last name matching employees
- top 10 years matching the birth year employees
- Find 10 top paid salaried employees by department
- Top 10 last name matching employees
- Department wise Avg Salary based on the Gender
- Maximum avg hike given to the employees by year


## Solution

Things you may want to cover:

* Ruby version - 3.0.0

* System dependencies - gem installed - bigquery, whenver

* Database creation - Mysql

Created CRUD app for Employee Table and any changes we do for Employee(only updates for now) table will be updated to big query dataset via cron task on a scheduled basis.

Employee Table data set - https://github.com/datacharmer/test_db
