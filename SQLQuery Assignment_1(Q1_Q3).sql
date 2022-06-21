--Q-1. Write an SQL query to fetch “FIRST_NAME” from Worker table using the alias name as <WORKER_NAME>.

use ORG
Select FIRST_NAME AS WORKER_NAME from Worker;


--Q-2. Write an SQL query to fetch unique values of DEPARTMENT from Worker table.

use ORG
Select distinct DEPARTMENT from Worker;



--Q-3. Write an SQL query to show the last 5 record from a table.

use ORG
select * from
(select top 5 * from Worker
order by Worker_ID desc
)
a order by Worker_ID asc;
