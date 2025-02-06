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

