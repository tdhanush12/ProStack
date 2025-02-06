 select * from employee;
+-----+----------+-----------+-----------+-------+------+
| eid | fname    | lname     | city      | esal  | age  |
+-----+----------+-----------+-----------+-------+------+
| 101 | Rahul    | Gandhi    | Wayanad   | 45000 |   52 |
| 102 | Sonia    | Gandhi    | New Delhi | 55000 |   75 |
| 103 | Priyanka | Gandhi    | Nodia     | 65000 |   45 |
| 104 | Modi     | Narendra  | New Delhi | 75000 |   69 |
| 105 | Rajni    | Kanth     | Chennai   | 85000 |   65 |
| 106 | Vijay    | Setupathi | Chennai   | 95000 |   47 |
| 107 | Nayana   | Tara      | Chennai   | 25000 |   40 |
| 108 | Alia     | Bhut      | Mumbai    | 45000 |   31 |
| 109 | Mahesh   | Bhut      | Mumbai    | 15000 |   68 |
| 110 | Sonam    | Kapoor    | Mumbai    | 30000 |   27 |
| 111 | Anil     | Kapoor    | Mumbai    | 38000 |   40 |
| 112 | Raj      | Kapoor    | Mumbai    | 18000 |   78 |
| 113 | Vishnu   | Manchu    | Hyderabad | 10000 |   40 |
| 114 | Manoj    | Manchu    | Hyderabad | 12000 |   35 |
| 115 | Mohan    | Manchu    | Hyderabad |  NULL |   70 |
+-----+----------+-----------+-----------+-------+------+
=================================================================================================
1.Write a query to fetch employee whose last name is same.

SELECT * FROM EMPLOYEE WHERE Lname in (
    SELECT Lname FROM EMPLOYEE GROUP BY Lname HAVING COUNT(Lname ) > 1);
+-----+----------+--------+-----------+-------+------+
| eid | fname    | lname  | city      | esal  | age  |
+-----+----------+--------+-----------+-------+------+
| 101 | Rahul    | Gandhi | Wayanad   | 45000 |   52 |
| 102 | Sonia    | Gandhi | New Delhi | 55000 |   75 |
| 103 | Priyanka | Gandhi | Nodia     | 65000 |   45 |
| 108 | Alia     | Bhut   | Mumbai    | 45000 |   31 |
| 109 | Mahesh   | Bhut   | Mumbai    | 15000 |   68 |
| 110 | Sonam    | Kapoor | Mumbai    | 30000 |   27 |
| 111 | Anil     | Kapoor | Mumbai    | 38000 |   40 |
| 112 | Raj      | Kapoor | Mumbai    | 18000 |   78 |
| 113 | Vishnu   | Manchu | Hyderabad | 10000 |   40 |
| 114 | Manoj    | Manchu | Hyderabad | 12000 |   35 |
| 115 | Mohan    | Manchu | Hyderabad |  NULL |   70 |
+-----+----------+--------+-----------+-------+------+
==================================================================================================
2.Write a query to fetch whose age is grater then 70.

SELECT * FROM EMPLOYEE WHERE AGE>70;
+-----+-------+--------+-----------+-------+------+
| eid | fname | lname  | city      | esal  | age  |
+-----+-------+--------+-----------+-------+------+
| 102 | Sonia | Gandhi | New Delhi | 55000 |   75 |
| 112 | Raj   | Kapoor | Mumbai    | 18000 |   78 |
+-----+-------+--------+-----------+-------+------+
===================================================================================================
3.Write a query to fetch employee with same city.

select count(*) as No_of_Employees, city from employee group by city order by No_of_Employees;
+-----------------+-----------+
| No_of_Employees | city      |
+-----------------+-----------+
|               1 | Wayanad   |
|               1 | Nodia     |
|               2 | New Delhi |
|               3 | Chennai   |
|               3 | Hyderabad |
|               5 | Mumbai    |
+-----------------+-----------+
====================================================================================================
4.Write a query to fetch whose name ends with 'h'.

 SELECT * FROM EMPLOYEE WHERE FNAME LIKE '%H';
+-----+--------+-------+--------+-------+------+
| eid | fname  | lname | city   | esal  | age  |
+-----+--------+-------+--------+-------+------+
| 109 | Mahesh | Bhut  | Mumbai | 15000 |   68 |
+-----+--------+-------+--------+-------+------+

mysql> SELECT * FROM EMPLOYEE WHERE LNAME LIKE '%H';
+-----+-------+-------+---------+-------+------+
| eid | fname | lname | city    | esal  | age  |
+-----+-------+-------+---------+-------+------+
| 105 | Rajni | Kanth | Chennai | 85000 |   65 |
+-----+-------+-------+---------+-------+------+
======================================================================================================
5.Write a query to count person whose last name ends with 'i'.

SELECT COUNT(*) AS NO_OF_PERSONS FROM EMPLOYEE WHERE LNAME LIKE '%I';
+---------------+
| NO_OF_PERSONS |
+---------------+
|             4 |
+---------------+
=======================================================================================================
6.Write a query to find employee with highest salary.

SELECT eid,fname,Lname,esal FROM employee WHERE esal = (SELECT MAX(esal) FROM employee);

+-----+-------+-----------+-------+
| eid | fname | Lname     | esal  |
+-----+-------+-----------+-------+
| 106 | Vijay | Setupathi | 95000 |
+-----+-------+-----------+-------+
==========================================================================================================
7.Write a query to find person with lowest salary.

SELECT EID,FNAME,LNAME,ESAL FROM employee WHERE ESAL = (SELECT MIN(esal) FROM employee);

+-----+--------+--------+-------+
| EID | FNAME  | LNAME  | ESAL  |
+-----+--------+--------+-------+
| 113 | Vishnu | Manchu | 10000 |
+-----+--------+--------+-------+
============================================================================================================
8.Write a query to change last name of person whose id is 102.

UPDATE EMPLOYEE SET lname='Gandhi Ji' WHERE eid=102;
+-----+-------+-----------+-----------+-------+------+
| eid | fname | lname     | city      | esal  | age  |
+-----+-------+-----------+-----------+-------+------+
| 102 | Sonia | Gandhi Ji | New Delhi | 55000 |   75 |
+-----+-------+-----------+-----------+-------+------+
===============================================================================================================
9.Write a query to find name of person whose name starts with 'A' and city name starts with 'B'.

SELECT fname,city
FROM employee
WHERE fname LIKE 'A%' AND city LIKE 'B%';

Empty set
================================================================================================================
10.Write a query to find person with highest salary in 'New Delhi'.

select * FROM EMPLOYEE WHERE ESAL = (SELECT MAX(ESAL) FROM EMPLOYEE WHERE CITY='NEW DELHI');

+-----+-------+----------+-----------+-------+------+
| eid | fname | lname    | city      | esal  | age  |
+-----+-------+----------+-----------+-------+------+
| 104 | Modi  | Narendra | New Delhi | 75000 |   69 |
+-----+-------+----------+-----------+-------+------+
=================================================================================================================
11.Write a query to find person who live in 'New Delhi' with age above 70.

SELECT EID,FNAME,LNAME,CITY,AGE FROM EMPLOYEE WHERE CITY='NEW DELHI' AND AGE>70;

+-----+-------+-----------+-----------+------+
| EID | FNAME | LNAME     | CITY      | AGE  |
+-----+-------+-----------+-----------+------+
| 102 | Sonia | Gandhi Ji | New Delhi |   75 |
+-----+-------+-----------+-----------+------+
====================================================================================================================
12.Write a query to find person with salary below 50000 AND count.

SELECT * FROM EMPLOYEE WHERE ESAL<50000;                         

+-----+--------+--------+-----------+-------+------+
| eid | fname  | lname  | city      | esal  | age  |
+-----+--------+--------+-----------+-------+------+
| 101 | Rahul  | Gandhi | Wayanad   | 45000 |   52 |
| 107 | Nayana | Tara   | Chennai   | 25000 |   40 |
| 108 | Alia   | Bhut   | Mumbai    | 45000 |   31 |
| 109 | Mahesh | Bhut   | Mumbai    | 15000 |   68 |
| 110 | Sonam  | Kapoor | Mumbai    | 30000 |   27 |
| 111 | Anil   | Kapoor | Mumbai    | 38000 |   40 |
| 112 | Raj    | Kapoor | Mumbai    | 18000 |   78 |
| 113 | Vishnu | Manchu | Hyderabad | 10000 |   40 |
| 114 | Manoj  | Manchu | Hyderabad | 12000 |   35 |
+-----+--------+--------+-----------+-------+------+

+----------+
| COUNT(*) |
+----------+
|        9 |
+----------+
=====================================================================================================================
13.Write a query to find name of employee with salary range between 20000 to 40000.

SELECT FNAME,LNAME,ESAL FROM EMPLOYEE  WHERE ESAL BETWEEN 20000 AND 40000;

+--------+--------+-------+
| FNAME  | LNAME  | ESAL  |
+--------+--------+-------+
| Nayana | Tara   | 25000 |
| Sonam  | Kapoor | 30000 |
| Anil   | Kapoor | 38000 |
+--------+--------+-------+
========================================================================================================================
14.Write a query to find person whose first name third character is 'j'.

SELECT FNAME FROM EMPLOYEE WHERE FNAME LIKE '__J%';

+-------+
| FNAME |
+-------+
| Rajni |
| Vijay |
| Raj   |
+-------+
========================================================================================================================
15.Write a query to find person whose first name third character is 'j' and live in 'New Delhi'.

SELECT FNAME,CITY FROM EMPLOYEE WHERE FNAME LIKE '__J%' AND CITY='NEW DELHI';

Empty set
==========================================================================================================================
16.Write a query to count persons whose first name third character is 'j'.

SELECT COUNT(*) FROM EMPLOYEE WHERE FNAME LIKE '__J%';

+----------+
| COUNT(*) |
+----------+
|        3 |
+----------+
============================================================================================================================
17.Write a query to fetch person with lowest salary and add 10000 to its salary.

SELECT EID,FNAME,LNAME, ESAL FROM EMPLOYEE WHERE ESAL = (SELECT MIN(ESAL) FROM EMPLOYEE );
+-----+--------+--------+-------+
| EID | FNAME  | LNAME  | ESAL  |
+-----+--------+--------+-------+
| 113 | Vishnu | Manchu | 10000 |
+-----+--------+--------+-------+

UPDATE EMPLOYEE SET ESAL=ESAL+10000 WHERE ESAL = (SELECT MIN(ESAL) FROM (SELECT * FROM EMPLOYEE) AS subquery);

+-----+--------+--------+-------+
| EID | FNAME  | LNAME  | ESAL  |
+-----+--------+--------+-------+
| 113 | Vishnu | Manchu | 20000 |
+-----+--------+--------+-------+
==================================================================================================================================
18.Write a query to Sort the table by ascending
 
 SELECT * FROM EMPLOYEE ORDER BY FNAME,LNAME,CITY,ESAL,AGE ASC;
+-----+----------+-----------+-----------+-------+------+
| eid | fname    | lname     | city      | esal  | age  |
+-----+----------+-----------+-----------+-------+------+
| 108 | Alia     | Bhut      | Mumbai    | 45000 |   31 |
| 111 | Anil     | Kapoor    | Mumbai    | 38000 |   40 |
| 109 | Mahesh   | Bhut      | Mumbai    | 15000 |   68 |
| 114 | Manoj    | Manchu    | Hyderabad | 12000 |   35 |
| 104 | Modi     | Narendra  | New Delhi | 75000 |   69 |
| 115 | Mohan    | Manchu    | Hyderabad |  NULL |   70 |
| 107 | Nayana   | Tara      | Chennai   | 25000 |   40 |
| 103 | Priyanka | Gandhi    | Nodia     | 65000 |   45 |
| 101 | Rahul    | Gandhi    | Wayanad   | 45000 |   52 |
| 112 | Raj      | Kapoor    | Mumbai    | 18000 |   78 |
| 105 | Rajni    | Kanth     | Chennai   | 85000 |   65 |
| 110 | Sonam    | Kapoor    | Mumbai    | 30000 |   27 |
| 102 | Sonia    | Gandhi Ji | New Delhi | 55000 |   75 |
| 106 | Vijay    | Setupathi | Chennai   | 95000 |   47 |
| 113 | Vishnu   | Manchu    | Hyderabad | 20000 |   40 |
+-----+----------+-----------+-----------+-------+------+
========================================================================================================================================
19.Write a query to Sort the table by descending.
 
 SELECT * FROM EMPLOYEE ORDER BY FNAME,LNAME,CITY,ESAL,AGE DESC;
 
 +-----+----------+-----------+-----------+-------+------+
| eid | fname    | lname     | city      | esal  | age  |
+-----+----------+-----------+-----------+-------+------+
| 108 | Alia     | Bhut      | Mumbai    | 45000 |   31 |
| 111 | Anil     | Kapoor    | Mumbai    | 38000 |   40 |
| 109 | Mahesh   | Bhut      | Mumbai    | 15000 |   68 |
| 114 | Manoj    | Manchu    | Hyderabad | 12000 |   35 |
| 104 | Modi     | Narendra  | New Delhi | 75000 |   69 |
| 115 | Mohan    | Manchu    | Hyderabad |  NULL |   70 |
| 107 | Nayana   | Tara      | Chennai   | 25000 |   40 |
| 103 | Priyanka | Gandhi    | Nodia     | 65000 |   45 |
| 101 | Rahul    | Gandhi    | Wayanad   | 45000 |   52 |
| 112 | Raj      | Kapoor    | Mumbai    | 18000 |   78 |
| 105 | Rajni    | Kanth     | Chennai   | 85000 |   65 |
| 110 | Sonam    | Kapoor    | Mumbai    | 30000 |   27 |
| 102 | Sonia    | Gandhi Ji | New Delhi | 55000 |   75 |
| 106 | Vijay    | Setupathi | Chennai   | 95000 |   47 |
| 113 | Vishnu   | Manchu    | Hyderabad | 20000 |   40 |
+-----+----------+-----------+-----------+-------+------+
==========================================================================================================================================
20.Write a query to show person whose names last third word is 'j' and salary is more then 30000.

 SELECT FNAME,ESAL FROM EMPLOYEE WHERE SUBSTRING(FNAME, LENGTH(FNAME) - 2,1) = 'J' AND ESAL > 30000;
 
 +-------+-------+
| FNAME | ESAL  |
+-------+-------+
| Rajni | 85000 |
| Vijay | 95000 |
+-------+-------+
 
 SELECT LNAME,ESAL FROM EMPLOYEE WHERE SUBSTRING(LNAME, LENGTH(LNAME) - 2,1) = 'J' AND ESAL > 30000;

 Empty set
 =============================================================================================================================
 21.Write a query to show all employee who live in 'Bangalore' and 'Wayanad'.
 
 SELECT * FROM EMPLOYEE WHERE CITY='BANGALORE' AND 'Wayanad';
   
   Empty set

ONLY BELONG TO WAYANAD:-
    
 SELECT * FROM EMPLOYEE WHERE CITY='Wayanad';
 
 +-----+-------+--------+---------+-------+------+
 | eid | fname | lname  | city    | esal  | age  |
 +-----+-------+--------+---------+-------+------+
 | 101 | Rahul | Gandhi | Wayanad | 45000 |   52 |
 +-----+-------+--------+---------+-------+------+
 ================================================================================================================================
 22.Write a query to fetch employee with first name count is 5.
 
 select *from employee where length(fname)=5;
 
+-----+-------+-----------+-----------+-------+------+
| eid | fname | lname     | city      | esal  | age  |
+-----+-------+-----------+-----------+-------+------+
| 101 | Rahul | Gandhi    | Wayanad   | 45000 |   52 |
| 102 | Sonia | Gandhi Ji | New Delhi | 55000 |   75 |
| 105 | Rajni | Kanth     | Chennai   | 85000 |   65 |
| 106 | Vijay | Setupathi | Chennai   | 95000 |   47 |
| 110 | Sonam | Kapoor    | Mumbai    | 30000 |   27 |
| 114 | Manoj | Manchu    | Hyderabad | 12000 |   35 |
| 115 | Mohan | Manchu    | Hyderabad |  NULL |   70 |
+-----+-------+-----------+-----------+-------+------+
========================================================================================================================================
23.Write a query to group by employee with their age

 SELECT AGE FROM EMPLOYEE GROUP BY AGE ORDER BY AGE;
 
+------+
| AGE  |
+------+
|   27 |
|   31 |
|   35 |
|   40 |
|   45 |
|   47 |
|   52 |
|   65 |
|   68 |
|   69 |
|   70 |
|   75 |
|   78 |
+------+

SELECT COUNT(*) AGE FROM EMPLOYEE GROUP BY AGE ORDER BY AGE;

+-----+
| AGE |
+-----+
|   1 |
|   1 |
|   1 |
|   1 |
|   1 |
|   1 |
|   1 |
|   1 |
|   1 |
|   1 |
|   1 |
|   1 |
|   3 |
+-----+
==============================================================================================================================================
24.Write a query to find employee with null salary.

 SELECT * FROM EMPLOYEE WHERE ESAL IS NULL;
 
 +-----+-------+--------+-----------+------+------+
| EID | FNAME | LNAME  | CITY      | ESAL | AGE  |
+-----+-------+--------+-----------+------+------+
| 115 | Mohan | Manchu | Hyderabad | NULL |   70 |
+-----+-------+--------+-----------+------+------+
================================================================================================================================================
25.Write a query to find employee whose cities are not null

 SELECT EID,FNAME,LNAME,CITY FROM EMPLOYEE WHERE CITY IS NOT NULL;
  
+-----+----------+-----------+-----------+
| EID | FNAME    | LNAME     | CITY      |
+-----+----------+-----------+-----------+
| 101 | Rahul    | Gandhi    | Wayanad   |
| 102 | Sonia    | Gandhi Ji | New Delhi |
| 103 | Priyanka | Gandhi    | Nodia     |
| 104 | Modi     | Narendra  | New Delhi |
| 105 | Rajni    | Kanth     | Chennai   |
| 106 | Vijay    | Setupathi | Chennai   |
| 107 | Nayana   | Tara      | Chennai   |
| 108 | Alia     | Bhut      | Mumbai    |
| 109 | Mahesh   | Bhut      | Mumbai    |
| 110 | Sonam    | Kapoor    | Mumbai    |
| 111 | Anil     | Kapoor    | Mumbai    |
| 112 | Raj      | Kapoor    | Mumbai    |
| 113 | Vishnu   | Manchu    | Hyderabad |
| 114 | Manoj    | Manchu    | Hyderabad |
| 115 | Mohan    | Manchu    | Hyderabad |
+-----+----------+-----------+-----------+
==================================================================================================================================================
26.Write a query to delete data of person whose id is 116 BEFORE WE SHOULD ADD 116 RECORD INTO DATASET.

  INSERT INTO EMPLOYEE VALUES(116,'Hijam','DhanaKumar','Bangalore',56000,23);

  DELETE FROM EMPLOYEE WHERE EID=116;
==================================================================================================================================================
27.Write a query to group by employee with their age and show first three rows of data.
  
  SELECT AGE,COUNT(*) AS EMPLOYEE FROM EMPLOYEE GROUP BY AGE ORDER BY AGE LIMIT 3;  
  
+------+----------+
| AGE  | EMPLOYEE |
+------+----------+
|   27 |        1 |
|   31 |        1 |
|   35 |        1 |
+------+----------+
==================================================================================================================================================
 28.Write a query to group by employee of 'New Delhi' by their last name.

  SELECT LNAME FROM EMPLOYEE WHERE CITY='NEW DELHI';

+-----------+
| LNAME     |
+-----------+
| Gandhi Ji |
| Narendra  |
+-----------+

SELECT SUBSTRING_INDEX(LNAME, ' ', -1) AS LNAME, COUNT(*) AS employee_count FROM employee

WHERE city = 'New Delhi' GROUP BY LNAME ORDER BY LNAME;

+----------+----------------+
| LNAME    | employee_count |
+----------+----------------+
| Ji       |              1 |
| Narendra |              1 |
+----------+----------------+