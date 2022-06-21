--Q-1. Write an SQL query to print the FIRST_NAME from Worker table after replacing ‘a’ with ‘A’.

use ORG
Select REPLACE(FIRST_NAME,'a','A') from Worker;


--Q-2. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending and DEPARTMENT Descending.
use ORG
Select * from Worker order by FIRST_NAME asc,DEPARTMENT desc;


--Q-3. Write an SQL query to fetch the names of workers who earn the highest salary.
use ORG
select wk.FIRST_NAME+' '+wk.LAST_NAME as Name,SALARY from worker wk where 
wk.salary=
(select max(SALARY) from
Worker );


