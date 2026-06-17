/*Create database Studentmanagementsystem contain  "Student" table with the following a columns:StudentId,FirstName,lastName

 and "Course" table with the following a columns: CourseId,CourseName 

and Enrollment table with the following a columns:EnrollmentID,StudentID(Foreign key),CourseID(Foreign Key).

You want to use inner join to generate a list of all possible student-course combinations.*/

mysql> create database Studentmanagementsystems;
Query OK, 1 row affected (0.05 sec)

mysql> use Studentmanagementsystems;
Database changed

mysql> create table student(student_id int not null primary key,FirstName varchar(20) not null,LastName varchar(20)not null);
Query OK, 0 rows affected (0.14 sec)

mysql> desc student;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| student_id | int         | NO   | PRI | NULL    |       |
| FirstName  | varchar(20) | NO   |     | NULL    |       |
| LastName   | varchar(20) | NO   |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
3 rows in set (0.04 sec)

mysql> create table course(course_id int not null primary key,course_name varchar (20) not null);
Query OK, 0 rows affected (0.03 sec)

mysql> desc course;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| course_id   | int         | NO   | PRI | NULL    |       |
| course_name | varchar(20) | NO   |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
2 rows in set (0.01 sec)


mysql> create table enrollment(enrollment_id int not null primary key,student_id int not null,course_id int not null, foreign key(student_id)references student(student_id),foreign key(course_id)references course(course_id));
Query OK, 0 rows affected (0.07 sec)

mysql> desc enrollment;
+---------------+------+------+-----+---------+-------+
| Field         | Type | Null | Key | Default | Extra |
+---------------+------+------+-----+---------+-------+
| enrollment_id | int  | NO   | PRI | NULL    |       |
| student_id    | int  | NO   | MUL | NULL    |       |
| course_id     | int  | NO   | MUL | NULL    |       |
+---------------+------+------+-----+---------+-------+
3 rows in set (0.01 sec)

mysql> insert into student values(1,'Hinal','Diwani'),(2,'Payal','Gupta'),(3,'Ira','Sharma'),(4,'Nidhi','Vyas');
Query OK, 4 rows affected (0.02 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select * from student;
+------------+-----------+----------+
| student_id | FirstName | LastName |
+------------+-----------+----------+
|          1 | Hinal     | Diwani   |
|          2 | Payal     | Gupta    |
|          3 | Ira       | Sharma   |
|          4 | Nidhi     | Vyas     |
+------------+-----------+----------+
4 rows in set (0.00 sec)

mysql> insert into course values(101,'Database System'),(102,'Python'),(103,'Web development');
Query OK, 3 rows affected (0.02 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> select * from course;
+-----------+-----------------+
| course_id | course_name     |
+-----------+-----------------+
|       101 | Database System |
|       102 | Python          |
|       103 | Web development |
+-----------+-----------------+
3 rows in set (0.03 sec)

mysql> insert into enrollment values(1,1,101),(2,2,102),(3,3,101),(4,4,103);
Query OK, 4 rows affected (0.02 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select * from enrollment;
+---------------+------------+-----------+
| enrollment_id | student_id | course_id |
+---------------+------------+-----------+
|             1 |          1 |       101 |
|             2 |          2 |       102 |
|             3 |          3 |       101 |
|             4 |          4 |       103 |
+---------------+------------+-----------+
4 rows in set (0.00 sec)

mysql> select student.student_id,student.FirstName,student.LastName,course.course_id,course.course_name from student inner join enrollment on student.student_id=enrollment.student_id inner join course on enrollment.course_id=course.course_id;
+------------+-----------+----------+-----------+-----------------+
| student_id | FirstName | LastName | course_id | course_name     |
+------------+-----------+----------+-----------+-----------------+
|          1 | Hinal     | Diwani   |       101 | Database System |
|          3 | Ira       | Sharma   |       101 | Database System |
|          2 | Payal     | Gupta    |       102 | Python          |
|          4 | Nidhi     | Vyas     |       103 | Web development |
+------------+-----------+----------+-----------+-----------------+
4 rows in set (0.00 sec)

mysql>