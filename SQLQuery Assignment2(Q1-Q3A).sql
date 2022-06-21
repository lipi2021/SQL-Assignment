--1. Write an SQL query to print the first three characters of  FIRST_NAME from Worker table.
use ORG
Select substring (FIRST_NAME,1,3) from Worker;

--Q-2. Write an SQL query to find the position of the alphabet (‘a’) in the first name column ‘Amitabh’ from Worker table.


use ORG
SELECT CHARINDEX('a', 'Amitabh') AS MatchPosition;



--Q-3. Write an SQL query to print the name of employees having the highest salary in each department.

use ORG

select wk.FIRST_NAME,wk.DEPARTMENT,wk.SALARY from worker wk
where  wk.SALARY in 
(select

MAX([SALARY])
from
[dbo].[Worker]
group by
[DEPARTMENT]);
