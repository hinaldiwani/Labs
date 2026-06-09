//Task Description	
● Create a database with the name StudentManagementSystem. 

Create a table with named Student with attributes

: ● StudentID (Primary Key) ● FirstName ● LastName ● DateOfBirth ● Gender ● Email ● Phone

Insert 5 Records in students table


mysql> create database StudentManagementSystem1;
Query OK, 1 row affected (0.01 sec)

mysql> use StudentManagementSystem;
Database changed

mysql> create table Student1(StudentID varchar(20)not null primary key, FirstName varchar(20) not null,LastName varchar(15)not null, DateOfBirth date not null, Gender varchar(10)not null, Email varchar(30) not null, Phone varchar(10)not null);
Query OK, 0 rows affected (0.03 sec)

mysql> desc Student1;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| StudentID   | varchar(20) | NO   | PRI | NULL    |       |
| FirstName   | varchar(20) | NO   |     | NULL    |       |
| LastName    | varchar(15) | NO   |     | NULL    |       |
| DateOfBirth | date        | NO   |     | NULL    |       |
| Gender      | varchar(10) | NO   |     | NULL    |       |
| Email       | varchar(30) | NO   |     | NULL    |       |
| Phone       | varchar(10) | NO   |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
7 rows in set (0.01 sec)

mysql> insert into Student1 values('S101','Hinal','Diwani','2005-10-12','Female','hinal123@gmail.com','1324679386');
Query OK, 1 row affected (0.01 sec)

mysql> insert into Student1 values('S102','Krisha','Shah','2003-08-03','Female','krishashah@gmail.com','2930276390');
Query OK, 1 row affected (0.01 sec)

mysql> insert into Student1 values('S103','Urmi','Kulkarni','2004-11-07','Female','Urmik11@gmail.com','1242470969');
Query OK, 1 row affected (0.01 sec)

mysql> insert into Student1 values('104','Raj','Gupta','2001-12-10','Male','rajgupta@gmail.com','4356379688');
Query OK, 1 row affected (0.01 sec)

mysql> insert into Student1 values('105','Mayank','Sharma','2000-10-11','Male','mayankS1110@gmail.com','7354197680');
Query OK, 1 row affected (0.00 sec)

mysql> select * from Student1;
+-----------+-----------+----------+-------------+--------+-----------------------+------------+
| StudentID | FirstName | LastName | DateOfBirth | Gender | Email                 | Phone      |
+-----------+-----------+----------+-------------+--------+-----------------------+------------+
| S104       | Raj       | Gupta    | 2001-12-10  | Male   | rajgupta@gmail.com    | 4356379688 |
| S105       | Mayank    | Sharma   | 2000-10-11  | Male   | mayankS1110@gmail.com | 7354197680 |
| S101      | Hinal     | Diwani   | 2005-10-12  | Female | hinal123@gmail.com    | 1324679386 |
| S102      | Krisha    | Shah     | 2003-08-03  | Female | krishashah@gmail.com  | 2930276390 |
| S103      | Urmi      | Kulkarni | 2004-11-07  | Female | Urmik11@gmail.com     | 1242470969 |
+-----------+-----------+----------+-------------+--------+-----------------------+------------+
5 rows in set (0.00 sec)

mysql>