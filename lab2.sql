//Consider a simple database  Demo with one tables: Employee Employee Table:

 ● Columns:emp_id (Primary Key), first_name, last_name, age, email 

Task 1: Insert Data Write an SQL INSERT statement to insert data into the Employee table. 

Task 2: Retrieving Data Write an SQL SELECT statement to retrieve the first_name and last_name of all employees from the Employee table. 

Task 3: Filtering Data Write an SQL SELECT statement to retrieve the first_name, last_name, and age of employees who are older than 30 years. 

Task 4: Updating Data Write an SQL UPDATE statement to increase the age of employees by 1 year for all employees older than 2


mysql> create database demo;
Query OK, 1 row affected (0.10 sec)

mysql> use demo;
Database changed
mysql> create table Employee(emp_id varchar(10) not null primary key, first_name varchar(30) not null, last_name varchar(30)not null,age int not null,email varchar(50)not null);
Query OK, 0 rows affected (0.20 sec)

mysql> desc Employee;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| emp_id     | varchar(10) | NO   | PRI | NULL    |       |
| first_name | varchar(30) | NO   |     | NULL    |       |
| last_name  | varchar(30) | NO   |     | NULL    |       |
| age        | int         | NO   |     | NULL    |       |
| email      | varchar(50) | NO   |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
5 rows in set (0.06 sec)

mysql> insert into Employee values('E101','Hinal','Diwani',20,'hinald@gmail.com'),('E102','Amit','Sharma',35,'amitsha@gmail.com'),('E103','Raj','Patel',24,'rajp@gmail.com'),('E104','Vaishali','Shah',22,'vaishali@gmail.com'),('E105','Yash','Mane',33,'yashmane@gmail.com');
Query OK, 5 rows affected (0.03 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from Employee;
+--------+------------+-----------+-----+--------------------+
| emp_id | first_name | last_name | age | email              |
+--------+------------+-----------+-----+--------------------+
| E101   | Hinal      | Diwani    |  20 | hinald@gmail.com   |
| E102   | Amit       | Sharma    |  35 | amitsha@gmail.com  |
| E103   | Raj        | Patel     |  24 | rajp@gmail.com     |
| E104   | Vaishali   | Shah      |  22 | vaishali@gmail.com |
| E105   | Yash       | Mane      |  33 | yashmane@gmail.com |
+--------+------------+-----------+-----+--------------------+
5 rows in set (0.00 sec)

mysql> select first_name,last_name from Employee;
+------------+-----------+
| first_name | last_name |
+------------+-----------+
| Hinal      | Diwani    |
| Amit       | Sharma    |
| Raj        | Patel     |
| Vaishali   | Shah      |
| Yash       | Mane      |
+------------+-----------+
5 rows in set (0.00 sec)

mysql> select first_name,last_name,age from Employee where age >30;
+------------+-----------+-----+
| first_name | last_name | age |
+------------+-----------+-----+
| Amit       | Sharma    |  35 |
| Yash       | Mane      |  33 |
+------------+-----------+-----+
2 rows in set (0.00 sec)

mysql> UPDATE Employee SET age = age + 1 WHERE age > 20;
Query OK, 4 rows affected (0.02 sec)
Rows matched: 4  Changed: 4  Warnings: 0

mysql> select * from Employee;
+--------+------------+-----------+-----+--------------------+
| emp_id | first_name | last_name | age | email              |
+--------+------------+-----------+-----+--------------------+
| E101   | Hinal      | Diwani    |  20 | hinald@gmail.com   |
| E102   | Amit       | Sharma    |  36 | amitsha@gmail.com  |
| E103   | Raj        | Patel     |  25 | rajp@gmail.com     |
| E104   | Vaishali   | Shah      |  23 | vaishali@gmail.com |
| E105   | Yash       | Mane      |  34 | yashmane@gmail.com |
+--------+------------+-----------+-----+--------------------+
5 rows in set (0.00 sec)

mysql> 