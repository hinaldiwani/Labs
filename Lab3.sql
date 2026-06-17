/*Task: Let's consider a scenario where you want to retrieve information about students

from a database table named student and display the results in ascending order based on their last names.

Student table contain column (stud_id,FirstName,LastName,Age,Phoneno,Address) add 5 records in tables.

Hint: Use orderBy clause in a ascending Order*/


mysql> create database demo;
ERROR 1007 (HY000): Can't create database 'demo'; database exists
mysql> create database demo1;
Query OK, 1 row affected (0.05 sec)

mysql> use demo1;
Database changed
mysql> create table student(stud_id int not null primary key,FirstName varchar(20)not null,LastName varchar(20)not null,Age int not null,Phoneno varchar(10)not null,Address varchar(30)not null);
Query OK, 0 rows affected (0.10 sec)

mysql> desc student;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| stud_id   | int         | NO   | PRI | NULL    |       |
| FirstName | varchar(20) | NO   |     | NULL    |       |
| LastName  | varchar(20) | NO   |     | NULL    |       |
| Age       | int         | NO   |     | NULL    |       |
| Phoneno   | varchar(10) | NO   |     | NULL    |       |
| Address   | varchar(30) | NO   |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
6 rows in set (0.05 sec)

mysql> insert into student values(101,'Hinal','Diwani',20,'5180975759','Thane'),(102,'Amit','Sharma',19,'3829380832','Churchgate'),(103,'Vidhi','Tiwari',20,'9817302872','Navi Mumbai'),(104,'Rishi','Mehta',18,'7298023406','Ghatkopar'),(105,'Omkar','Patel',21,'5395560617','Kalyan');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from student;
+---------+-----------+----------+-----+------------+-------------+
| stud_id | FirstName | LastName | Age | Phoneno    | Address     |
+---------+-----------+----------+-----+------------+-------------+
|     101 | Hinal     | Diwani   |  20 | 5180975759 | Thane       |
|     102 | Amit      | Sharma   |  19 | 3829380832 | Churchgate  |
|     103 | Vidhi     | Tiwari   |  20 | 9817302872 | Navi Mumbai |
|     104 | Rishi     | Mehta    |  18 | 7298023406 | Ghatkopar   |
|     105 | Omkar     | Patel    |  21 | 5395560617 | Kalyan      |
+---------+-----------+----------+-----+------------+-------------+
5 rows in set (0.00 sec)

mysql> select * from student order by LastName;
+---------+-----------+----------+-----+------------+-------------+
| stud_id | FirstName | LastName | Age | Phoneno    | Address     |
+---------+-----------+----------+-----+------------+-------------+
|     101 | Hinal     | Diwani   |  20 | 5180975759 | Thane       |
|     104 | Rishi     | Mehta    |  18 | 7298023406 | Ghatkopar   |
|     105 | Omkar     | Patel    |  21 | 5395560617 | Kalyan      |
|     102 | Amit      | Sharma   |  19 | 3829380832 | Churchgate  |
|     103 | Vidhi     | Tiwari   |  20 | 9817302872 | Navi Mumbai |
+---------+-----------+----------+-----+------------+-------------+
5 rows in set (0.00 sec)

mysql>
