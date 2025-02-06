cmd>mysql -uroot -proot
system cls;
show databases;

CREATE DATABASE 8am;

show databases;

USE 8am;
show tables;

CREATE TABLE employee(
eid int,
ename VARCHAR(32),
esal float,
loc VARCHAR(32)
);


mysql> desc employee;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| eid   | int         | YES  |     | NULL    |       |
| ename | varchar(32) | YES  |     | NULL    |       |
| esal  | float       | YES  |     | NULL    |       |
| loc   | varchar(32) | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
4 rows in set (0.02 sec)

show tables;

INSERT INTO employee
VALUES
(101,'Rahul',45000.45,'wayanad');

INSERT INTO employee
VALUES
(102,'Sonia',55000.55,'New Delhi'),
(103,'Priya',65000.55,'Noida'),
(104,'Modi',75000.75,'Bangalore');

INSERT INTO employee(eid,ename)
VALUES
(105,'Amith');

SELECT * FROM employee;


UPDATE employee
SET ename='Rahul Gandhi'
WHERE eid=101;


UPDATE employee
SET loc='Marathahalli';


mysql> UPDATE employee
    -> SET loc='Marathahalli';
Query OK, 5 rows affected (0.02 sec)
Rows matched: 5  Changed: 5  Warnings: 0

mysql> select * from employee;
+------+--------------+---------+--------------+
| eid  | ename        | esal    | loc          |
+------+--------------+---------+--------------+
|  101 | Rahul Gandhi | 45000.4 | Marathahalli |
|  102 | Sonia        | 55000.6 | Marathahalli |
|  103 | Priya        | 65000.6 | Marathahalli |
|  104 | Modi         | 75000.8 | Marathahalli |
|  105 | Amith        |    NULL | Marathahalli |
+------+--------------+---------+--------------+
5 rows in set (0.00 sec)


DELETE FROM employee
WHERE eid=101;


DELETE FROM employee;


DESC employee;

drop table employee;
====================
class -2:

CREATE TABLE products(
pid  int,
pname VARCHAR(32),
price int,
category VARCHAR(32)
);


mysql> desc products;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| pid      | int         | YES  |     | NULL    |       |
| pname    | varchar(32) | YES  |     | NULL    |       |
| price    | int         | YES  |     | NULL    |       |
| category | varchar(32) | YES  |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)


INSERT INTO products
VALUES
(10,'Samsung Galaxy',25000,'Mobiles');

INSERT INTO products
VALUES
(11,'Vivo',350000,'Mobiles'),
(12,'Marker Pen',30,'Office St'),
(13,'Water Bottle',40,'Office St');

INSERT INTO products
VALUES
(14,'Laptop');


INSERT INTO products(pid,pname)
VALUES
(14,'Laptop');
==============================
SELECT * FROM products;


SELECT * FROM products
WHERE category ='Mobiles';

SELECT pid AS Product_Id,
	   pname AS Product_Name
FROM products;

==================================
DELETE FROM products
WHERE category ='Mobiles';


DELETE FROM products;

DESC products;

=================================
UPDATE products
SET pname ='Samsung s12'
WHERE pid=10;

UPDATE products
SET price=10000
WHERE category ='Mobiles';

INSERT INTO products(pid)
VALUES
(101),
(102),
(103),
(106),
(105),
(106),
(106);


============================

CREATE TABLE employee(
eid INT NOT null,
ename VARCHAR(32) UNIQUE,
esal FLOAT,
loc VARCHAR(32) DEFAULT 'Bangalore'
);


mysql> desc employee;
+-------+-------------+------+-----+-----------+-------+
| Field | Type        | Null | Key | Default   | Extra |
+-------+-------------+------+-----+-----------+-------+
| eid   | int         | NO   |     | NULL      |       |
| ename | varchar(32) | YES  | UNI | NULL      |       |
| esal  | float       | YES  |     | NULL      |       |
| loc   | varchar(32) | YES  |     | Bangalore |       |
+-------+-------------+------+-----+-----------+-------+
4 rows in set (0.00 sec)


INSERT INTO employee(eid,ename,esal)
VALUES
(101,'Rahul',45000.45);


INSERT INTO employee(eid,ename,esal,loc)
VALUES
(101,'Sonia',55000.45,'New Delhi');


INSERT INTO employee(eid,esal)
VALUES
(101,55000.45),
(102,65000.45),
(101,75000.45);
======================================
class-3:

mysql --version

mysql -uroot -proot
system cls;
show databases;
DROP DATABASE 8am;


CREATE DATABASE 8am;
USE 8am;
show tables;

constraints
==============
NOT NULL  - NULL VALUES NOT allowed but duplicate allowed
UNIQUE    - duplicate are NOT allowed but NULL allowed
DEFAULT   - 
CHECK
PRIMARY KEY
FOREIGN KEY
INDEX 


CREATE TABLE employee(
eid INT NOT NULL,
ename VARCHAR(32) UNIQUE,
esal FLOAT NOT NULL,
loc VARCHAR(32) DEFAULT 'Bangalore'
);

DESC employee;

INSERT INTO employee 
value 
(101,'Rahul',45000.45,'Wayand');

INSERT INTO employee(eid,esal) 
value 
(101,45000.45);


DROP TABLE employee;


CREATE TABLE employee(
eid INT NOT NULL,
ename VARCHAR(32) UNIQUE,
esal FLOAT CHECK(esal>18000) NOT NULL,
loc VARCHAR(32) DEFAULT 'Bangalore'
);

INSERT INTO employee
VALUES
(101,'Rahul',100,'Wayanad');

ERROR 3819 (HY000): Check constraint 'employee_chk_1' is violated.


INSERT INTO employee
VALUES
(101,'Rahul',18001,'Wayanad');

INSERT INTO employee
VALUES
(101,'Sonia',18001,'Wayanad');

INSERT INTO employee(eid,esal)
VALUES
(101,19001);

 drop table employee;

 show tables;

 CREATE TABLE employee();


CREATE TABLE employee(
eid int,
ename VARCHAR(32) NOT NULL,
esal FLOAT NOT NULL,
PRIMARY KEY(eid)
);

mysql> desc employee;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| eid   | int         | NO   | PRI | NULL    |       |
| ename | varchar(32) | NO   |     | NULL    |       |
| esal  | float       | NO   |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

DROP TABLE employee;


CREATE TABLE employee(
eid INT PRIMARY KEY,
ename VARCHAR(32) NOT NULL,
esal FLOAT NOT NULL
);

INSERT INTO employee(ename,esal)
value
('Rahul',45000.45);
ERROR 1364 (HY000): Field 'eid' doesn't have a default value

INSERT INTO employee(eid,ename,esal)
value
(101,'Rahul',45000.45);


=============================
TABLE - BUNIT

CREATE TABLE bunit();
CREATE TABLE employee();



CREATE TABLE bunit(
bu_id int,
unit_name VARCHAR(32) NOT null,
address VARCHAR(32),
PRIMARY KEY(bu_id)
);


CREATE TABLE employee(
eid int,
ename VARCHAR(32),
esal float,
loc VARCHAR(32),
bu_id int,
PRIMARY KEY(eid),
FOREIGN KEY(bu_id) REFERENCES bunit(bu_id)
);
===============================================
class-4
mysql -uroot -proot
system cls;

show databases;

DROP DATABASE 8am;

CREATE DATABASE 8am;
USE 8am;

show tables;

CREATE TABLE bunit(
bu_id int,
bu_name VARCHAR(32) NOT NULL,
bu_loc VARCHAR(32) NOT NULL,
PRIMARY KEY(bu_id)
);


mysql> desc bunit;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| bu_id   | int         | NO   | PRI | NULL    |       |
| bu_name | varchar(32) | NO   |     | NULL    |       |
| bu_loc  | varchar(32) | NO   |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)


CREATE TABLE employee(
eid int,
ename VARCHAR(32) NOT NULL,
esal FLOAT CHECK(esal>18000),
bid int,
loc VARCHAR(32) DEFAULT 'Bangalore',
PRIMARY KEY(eid),
FOREIGN KEY(bid) REFERENCES bunit(bu_id)
);

mysql> desc employee;
+-------+-------------+------+-----+-----------+-------+
| Field | Type        | Null | Key | Default   | Extra |
+-------+-------------+------+-----+-----------+-------+
| eid   | int         | NO   | PRI | NULL      |       |
| ename | varchar(32) | NO   |     | NULL      |       |
| esal  | float       | YES  |     | NULL      |       |
| bid   | int         | YES  | MUL | NULL      |       |
| loc   | varchar(32) | YES  |     | Bangalore |       |
+-------+-------------+------+-----+-----------+-------+
5 rows in set (0.00 sec)



INSERT INTO employee
VALUES
(101,'Rahul',21000.21,10,'Wayand');

INSERT INTO bunit
VALUES
(10,'ATT','USA'),
(11,'VODA','Spain'),
(12,'COLT','London'),
(13,'Airtel','India');
mysql> select * from bunit;
+-------+---------+--------+
| bu_id | bu_name | bu_loc |
+-------+---------+--------+
|    10 | ATT     | USA    |
|    11 | VODA    | Spain  |
|    12 | COLT    | London |
|    13 | Airtel  | India  |
+-------+---------+--------+
4 rows in set (0.00 sec)



INSERT INTO employee
values
(101,'Rahul',45000.45,11,'wayanad'),
(102,'Sonia',55000.45,11,'New Delhi'),
(103,'Priya',65000.45,11,'Noida'),
(104,'Modi',85000.45,12,'New Delhi'),
(105,'Amith',95000.45,12,'New Delhi'),
(106,'Rajni',18000.45,13,'Chennai'),
(107,'VS',25000.45,13,'Chennai'),
(108,'Alia',35000.35,13,'Mumbai');


SELECT ename AS Emp_Name,
	   esal AS Emp_Salary,
	   bu_name AS Business_Unit_Name
	   FROM employee, bunit
	   WHERE employee.bid = bunit.bu_id;

+----------+------------+--------------------+
| Emp_Name | Emp_Salary | Business_Unit_Name |
+----------+------------+--------------------+
| Rahul    |    45000.4 | VODA               |
| Sonia    |    55000.4 | VODA               |
| Priya    |    65000.4 | VODA               |
| Modi     |    85000.5 | COLT               |
| Amith    |    95000.5 | COLT               |
| Rajni    |    18000.4 | Airtel             |
| VS       |    25000.4 | Airtel             |
| Alia     |    35000.4 | Airtel             |
+----------+------------+--------------------+

display employee theier salaries less than 40,000;

SELECT *FROM employee
WHERE esal<=40000;


display no OF employee their salary less than 40000;

SELECT COUNT(eid) FROM employee
WHERE esal<=40000;

display employee details their names start WITH 'R';

SELECT * FROM employee
WHERE ename LIKE 'R%';

display employee details their names ends WITH 'i';

SELECT *FROM employee
WHERE ename LIKE '%i';

====================================
class-5

mysql -uroot -proot
system cls;
show databases;
mysql> drop database 8am;
CREATE DATABASE 8am;
mysql> use 8am;


create table employee (
eid INT ,
fname VARCHAR(32),
lname VARCHAR(32),
city VARCHAR(32),
esal INT,
age INT,
PRIMARY KEY(eid)
);


mysql> desc employee;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| eid   | int         | NO   | PRI | NULL    |       |
| fname | varchar(32) | YES  |     | NULL    |       |
| lname | varchar(32) | YES  |     | NULL    |       |
| city  | varchar(32) | YES  |     | NULL    |       |
| esal  | int         | YES  |     | NULL    |       |
| age   | int         | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)


insert into employee values
(101,'Rahul','Gandhi','Wayanad',45000,52),
(102,'Sonia','Gandhi','New Delhi',55000,75),
(103,'Priyanka','Gandhi','Nodia',65000,45),
(104,'Modi','Narendra','New Delhi',75000,69),
(105,'Rajni','Kanth','Chennai',85000,65),
(106,'Vijay','Setupathi','Chennai',95000,47),
(107,'Nayana','Tara','Chennai',25000,40),
(108,'Alia','Bhut','Mumbai',45000,31),
(109,'Mahesh','Bhut','Mumbai',15000,68),
(110,'Sonam','Kapoor','Mumbai',30000,27),
(111,'Anil','Kapoor','Mumbai',38000,40),
(112,'Raj','Kapoor','Mumbai',18000,78),
(113,'Vishnu','Manchu','Hyderabad',10000,40),
(114,'Manoj','Manchu','Hyderabad',12000,35);
(115,'Mohan','Manchu','Hyderabad',70);
INSERT INTO employee (eid,fname,lname,city,age)
values
(115,'Mohan','Manchu','Hyderabad',70);

1. Write a query to fetch employee whose last name is same.
2. Write a query to fetch whose age is grater then 70.
3. Write a query to fetch employee with same city.
4. Write a query to fetch whose name ends with 'h'.
5. Write a query to count person whose last name ends with 'i'.
6. Write a query to find employee with highest salary.
7. Write a query to find person with lowest salary.
8. Write a query to change last name of person whose id is 102.
9. Write a query to find name of person whose name start's with 'A' and city name starts with 'B'.
10. Write a query to find person with highest salary in 'New Delhi'.
11. Write a query to find person who line in 'New Delhi' with age above 70.
12. Write a query to find person with salary below 50000.
13. Write a query to find name of employee with salary range between 20000 to 40000.
14. Write a query to find person whose first name third character is 'j'.
15. Write a query to find person whose first name third character is 'j' and live in 'New Delhi'.
16. Write a query to count persons whose first name third character is 'j'.
17. Write a query to fetch person with lowest salary and add 10000 to its salary.
18. Write a query to Sort the table by ascending.
19. Write a query to Sort the table by descending.
20. Write a query to show person whose name's last third word is 'j' and salary is more then 30000. 
21. Write a query to show all employee who live in 'Bangalore' and 'Wayanad'.
22. Write a query to fetch employee with first name count is 5.
mysql> select *from employee
    -> where length(fname)=5;
+-----+-------+------------+-----------+-------+------+
| eid | fname | lname      | city      | esal  | age  |
+-----+-------+------------+-----------+-------+------+
| 101 | Rahul | Gandhi     | Wayanad   | 45000 |   52 |
| 102 | Sonia | Gandhi     | New Delhi | 55000 |   75 |
| 105 | Rajni | Kanth      | Chennai   | 85000 |   65 |
| 106 | Vijay | Setupathi  | Chennai   | 95000 |   47 |
| 110 | Sonam | Kapoor     | Mumbai    | 30000 |   27 |
| 114 | Manoj | Manchu     | Hyderabad | 12000 |   35 |
| 115 | Mohan | Manchu     | Hyderabad |  NULL |   70 |
| 116 | Hijam | DhanaKumar | Bangalore | 56000 |   23 |
+-----+-------+------------+-----------+-------+------+
8 rows in set (0.00 sec)
23. Write a query to group by employee with their age.
24. Write a query to find employee with null salary.
25. Write a query to find employee whose cities are not null.
26. Write a query to delete data of person whose id is 109.
27. Write a query to group by employee with their age and show first three rows of data.
28. Write a query to group by employee of 'New Delhi' by their last name.

26. Write a query to find employee with null salary.

SELECT *FROM employee
WHERE esal IS Null;

mysql> SELECT *FROM employee
    -> WHERE esal IS Null;
+-----+-------+--------+-----------+------+------+
| eid | fname | lname  | city      | esal | age  |
+-----+-------+--------+-----------+------+------+
| 115 | Mohan | Manchu | Hyderabad | NULL |   70 |
+-----+-------+--------+-----------+------+------+
1 row in set (0.00 sec)


7. Write a query to find employee with lowest salary.
mysql> select *from employee
    -> where esal = (select min(esal) from employee);
+-----+--------+--------+-----------+-------+------+
| eid | fname  | lname  | city      | esal  | age  |
+-----+--------+--------+-----------+-------+------+
| 113 | Vishnu | Manchu | Hyderabad | 10000 |   40 |
+-----+--------+--------+-----------+-------+------+
1 row in set (0.00 sec)

6. Write a query to find employee with highest salary.
mysql> select *from employee
    -> where esal = (select max(esal) from employee);
+-----+-------+-----------+---------+-------+------+
| eid | fname | lname     | city    | esal  | age  |
+-----+-------+-----------+---------+-------+------+
| 106 | Vijay | Setupathi | Chennai | 95000 |   47 |
+-----+-------+-----------+---------+-------+------+
1 row in set (0.00 sec)


10. Write a query to find person with highest salary in 'New Delhi'.
mysql> select * from employee
    -> where esal = (select max(esal) from employee where city="New Delhi");
+-----+-------+----------+-----------+-------+------+
| eid | fname | lname    | city      | esal  | age  |
+-----+-------+----------+-----------+-------+------+
| 104 | Modi  | Narendra | New Delhi | 75000 |   69 |
+-----+-------+----------+-----------+-------+------+
1 row in set (0.00 sec)

22.Write a query to show all employee who live in 'Mumbai' and 'Wayanad'.

mysql> SELECT *FROM employee
    -> WHERE city IN ('Mumbai','Wayanad');
+-----+--------+--------+---------+-------+------+
| eid | fname  | lname  | city    | esal  | age  |
+-----+--------+--------+---------+-------+------+
| 101 | Rahul  | Gandhi | Wayanad | 45000 |   52 |
| 108 | Alia   | Bhut   | Mumbai  | 45000 |   31 |
| 109 | Mahesh | Bhut   | Mumbai  | 15000 |   68 |
| 110 | Sonam  | Kapoor | Mumbai  | 30000 |   27 |
| 111 | Anil   | Kapoor | Mumbai  | 38000 |   40 |
| 112 | Raj    | Kapoor | Mumbai  | 18000 |   78 |
+-----+--------+--------+---------+-------+------+
6 rows in set (0.00 sec)

============================================
13. Write a query to find name of employee with salary range between 20000 to 40000.

SELECT *FROM employee
WHERE esal BETWEEN 20000 AND 40000;

mysql> SELECT *FROM employee
    -> WHERE esal BETWEEN 20000 AND 40000;
+-----+--------+--------+---------+-------+------+
| eid | fname  | lname  | city    | esal  | age  |
+-----+--------+--------+---------+-------+------+
| 107 | Nayana | Tara   | Chennai | 25000 |   40 |
| 110 | Sonam  | Kapoor | Mumbai  | 30000 |   27 |
| 111 | Anil   | Kapoor | Mumbai  | 38000 |   40 |
+-----+--------+--------+---------+-------+------+
3 rows in set (0.01 sec)

15. Write a query to find employees whose first name third character is 'j'.
mysql> select *from employee
    -> where fname like '__j%';
+-----+-------+------------+-----------+-------+------+
| eid | fname | lname      | city      | esal  | age  |
+-----+-------+------------+-----------+-------+------+
| 105 | Rajni | Kanth      | Chennai   | 85000 |   65 |
| 106 | Vijay | Setupathi  | Chennai   | 95000 |   47 |
| 112 | Raj   | Kapoor     | Mumbai    | 18000 |   78 |
| 116 | Hijam | DhanaKumar | Bangalore | 56000 |   23 |
+-----+-------+------------+-----------+-------+------+
4 rows in set (0.00 sec)

16. Write a query to find employee whose first name third character is 'j' 
    and live in 'Bangalore'.
mysql> select *from employee
    -> where fname like '__j%' AND city="Bangalore";
+-----+-------+------------+-----------+-------+------+
| eid | fname | lname      | city      | esal  | age  |
+-----+-------+------------+-----------+-------+------+
| 116 | Hijam | DhanaKumar | Bangalore | 56000 |   23 |
+-----+-------+------------+-----------+-------+------+
1 row in set (0.00 sec)

17. Write a query to count employees whose first name third character is 'j'.

SELECT COUNT(*) AS No_Of_Employees FROM employee
WHERE fname LIKE '__j%';
mysql> SELECT COUNT(*) AS No_Of_Employees FROM employee
    -> WHERE fname LIKE '__j%';
+-----------------+
| No_Of_Employees |
+-----------------+
|               4 |
+-----------------+
1 row in set (0.00 sec)


Display no_of_employees based ON city;
mysql> select count(*) as No_of_Employee,city from employee
    -> group by city;
+----------------+-----------+
| No_of_Employee | city      |
+----------------+-----------+
|              1 | Wayanad   |
|              2 | New Delhi |
|              1 | Nodia     |
|              3 | Chennai   |
|              5 | Mumbai    |
|              3 | Hyderabad |
|              1 | Bangalore |
+----------------+-----------+
7 rows in set (0.00 sec)

mysql> select count(*) as No_of_Employees, city from employee
    -> group by city
    -> order by No_of_Employees;
+-----------------+-----------+
| No_of_Employees | city      |
+-----------------+-----------+
|               1 | Wayanad   |
|               1 | Nodia     |
|               1 | Bangalore |
|               2 | New Delhi |
|               3 | Chennai   |
|               3 | Hyderabad |
|               5 | Mumbai    |
+-----------------+-----------+
7 rows in set (0.00 sec)


23. Write a query to fetch employee with first name count is 5.
mysql> select *from employee
    -> where length(fname)=5;
+-----+-------+------------+-----------+-------+------+
| eid | fname | lname      | city      | esal  | age  |
+-----+-------+------------+-----------+-------+------+
| 101 | Rahul | Gandhi     | Wayanad   | 45000 |   52 |
| 102 | Sonia | Gandhi     | New Delhi | 55000 |   75 |
| 105 | Rajni | Kanth      | Chennai   | 85000 |   65 |
| 106 | Vijay | Setupathi  | Chennai   | 95000 |   47 |
| 110 | Sonam | Kapoor     | Mumbai    | 30000 |   27 |
| 114 | Manoj | Manchu     | Hyderabad | 12000 |   35 |
| 115 | Mohan | Manchu     | Hyderabad |  NULL |   70 |
| 116 | Hijam | DhanaKumar | Bangalore | 56000 |   23 |
+-----+-------+------------+-----------+-------+------+
8 rows in set (0.00 sec)