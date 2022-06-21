--Q-1. Write an SQL query to print the FIRST_NAME from Worker table after removing white spaces from the right side.

use ORG
Select RTRIM(FIRST_NAME) from Worker;


--Q-2. Write an SQL query that fetches the unique values of DEPARTMENT from Worker table and prints its length.

use ORG
SELECT DISTINCT DEPARTMENT, LEN(DEPARTMENT) AS departmentNameLength FROM Worker;


--Q-3. Write an SQL query to fetch nth max salaries from a table.

use ORG
SELECT TOP 1 SALARY  
FROM (  
      SELECT DISTINCT TOP 1 SALARY  
      FROM Worker  
      ORDER BY SALARY DESC  
      ) RESULT  
ORDER BY SALARY;