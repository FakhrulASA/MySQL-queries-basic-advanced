Lab-1: SQL Submission
Due 5:30 PM
Lab-1: SQL Submission

Moushumi Zaman Bonny
5:02 PM
Your work
DONE LATE

first class.txt
Text

mysql> create talbe Teacher(ID INT,Teacher_Name VARCHAR(30),Department VARCHAR(1
0),Designation VARCHAR(20),Adress VARCHAR(100),Salary INT));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that
corresponds to your MySQL server version for the right syntax to use near 'talbe
 Teacher(ID INT,Teacher_Name VARCHAR(30),Department VARCHAR(10),Designation' at
line 1
mysql> create table Teacher(ID INT,Teacher_Name VARCHAR(30),Department VARCHAR(1
0),Designation VARCHAR(20),Adress VARCHAR(100),Salary INT);
Query OK, 0 rows affected (0.24 sec)

mysql> create table Officer(ID INT,Name VARCHAR(30),Rank INT,Tasks VARCHAR(100),
Adress VARCHAR(100));
Query OK, 0 rows affected (0.35 sec)

mysql> show table;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that
corresponds to your MySQL server version for the right syntax to use near '' at
line 1
mysql> show tables;
+--------------------+
| Tables_in_daffodil |
+--------------------+
| officer            |
| student            |
| teacher            |
+--------------------+
3 rows in set (0.00 sec)

mysql> insert into student values(162-15-7875,'Fakhrul Alam','CSE','F',22,4);
ERROR 1264 (22003): Out of range value for column 'CGPA' at row 1
mysql> insert into student values(162-15-7875,'Fakhrul Alam''CSE','F'.22,3.9);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that
corresponds to your MySQL server version for the right syntax to use near '.22,3
.9)' at line 1
mysql> insert into Student values(123112,'Antor','CSE','F',22,3.00);
ERROR 1264 (22003): Out of range value for column 'CGPA' at row 1
mysql> describe Student;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| ID           | int(11)      | YES  |     | NULL    |       |
| Student_Name | varchar(30)  | YES  |     | NULL    |       |
| Department   | varchar(10)  | YES  |     | NULL    |       |
| Section      | char(1)      | YES  |     | NULL    |       |
| Age          | int(11)      | YES  |     | NULL    |       |
| CGPA         | decimal(2,2) | YES  |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

mysql> insert into Student values(1122,'Antor','cse','f',22,1);
ERROR 1264 (22003): Out of range value for column 'CGPA' at row 1
mysql> create table Students(ID INT,Name VARCHAR(30),Department VARCHAR(10),Sect
ion VARCHAR(1),Age INT, CGPA DECIMAL);
Query OK, 0 rows affected (0.44 sec)

mysql> insert into Students values(1111,'Antor','CSE','F',22,3.22);
Query OK, 1 row affected, 1 warning (0.03 sec)

mysql> select * from Students;
+------+-------+------------+---------+------+------+
| ID   | Name  | Department | Section | Age  | CGPA |
+------+-------+------------+---------+------+------+
| 1111 | Antor | CSE        | F       |   22 |    3 |
+------+-------+------------+---------+------+------+
1 row in set (0.00 sec)

mysql> insert into Teacher values(1001,'Rahim','CSE','BIG','20/3 crown road',500
0);
Query OK, 1 row affected (0.02 sec)

mysql> show * from Teacher;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that
corresponds to your MySQL server version for the right syntax to use near '* fro
m Teacher' at line 1
mysql> select * from Teacher;
+------+--------------+------------+-------------+-----------------+--------+
| ID   | Teacher_Name | Department | Designation | Adress          | Salary |
+------+--------------+------------+-------------+-----------------+--------+
| 1001 | Rahim        | CSE        | BIG         | 20/3 crown road |   5000 |
+------+--------------+------------+-------------+-----------------+--------+
1 row in set (0.00 sec)

mysql> insert into Officer values(2001,'Mr.Pocha Khan',20,'Eat Sleep Repeat','Sw
eet home');
Query OK, 1 row affected (0.03 sec)

mysql> select * from Officer;
+------+---------------+------+------------------+------------+
| ID   | Name          | Rank | Tasks            | Adress     |
+------+---------------+------+------------------+------------+
| 2001 | Mr.Pocha Khan |   20 | Eat Sleep Repeat | Sweet home |
+------+---------------+------+------------------+------------+
1 row in set (0.00 sec)

mysql> select * where age>=20;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that
corresponds to your MySQL server version for the right syntax to use near 'where
 age>=20' at line 1
mysql> select * from Students where age>=20;
+------+-------+------------+---------+------+------+
| ID   | Name  | Department | Section | Age  | CGPA |
+------+-------+------------+---------+------+------+
| 1111 | Antor | CSE        | F       |   22 |    3 |
+------+-------+------------+---------+------+------+
1 row in set (0.00 sec)

mysql> select * from Students where CGPA<=3;
+------+-------+------------+---------+------+------+
| ID   | Name  | Department | Section | Age  | CGPA |
+------+-------+------------+---------+------+------+
| 1111 | Antor | CSE        | F       |   22 |    3 |
+------+-------+------------+---------+------+------+
1 row in set (0.02 sec)

mysql> select * from Teacher where designation='Lecturer';
Empty set (0.00 sec)

mysql> select * from officer where adress='Mirpur';
Empty set (0.00 sec)

mysql> select* from teacher where salary>=4000;
+------+--------------+------------+-------------+-----------------+--------+
| ID   | Teacher_Name | Department | Designation | Adress          | Salary |
+------+--------------+------------+-------------+-----------------+--------+
| 1001 | Rahim        | CSE        | BIG         | 20/3 crown road |   5000 |
+------+--------------+------------+-------------+-----------------+--------+
1 row in set (0.00 sec)

mysql> select * from Officer where rank>=10;
+------+---------------+------+------------------+------------+
| ID   | Name          | Rank | Tasks            | Adress     |
+------+---------------+------+------------------+------------+
| 2001 | Mr.Pocha Khan |   20 | Eat Sleep Repeat | Sweet home |
+------+---------------+------+------------------+------------+
1 row in set (0.00 sec)


mysql> insert into Students values(101,'Fahim','CSE','D',23,4);
Query OK, 1 row affected (0.04 sec)

mysql> insert into Students values(139,'Karim','CSE','F',19,3.80;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that
corresponds to your MySQL server version for the right syntax to use near '' at
line 1
mysql> insert into Students values(132,'Karim','CSE','F',20,4);
Query OK, 1 row affected (0.03 sec)

mysql> insert into Students values(222,'Ohon','CSE','A',25,2);
Query OK, 1 row affected (0.03 sec)

mysql> insert into Students vlues(212,'Pikka','CSE','B',18,4);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that
corresponds to your MySQL server version for the right syntax to use near 'vlues
(212,'Pikka','CSE','B',18,4)' at line 1
mysql> insert into Students values(212,'Rabbi','CSE','B',18,3);
Query OK, 1 row affected (0.03 sec)

mysql> insert into Teacher values(1001,'Karim Khan','CSE','Lecturer','Mirpur');
ERROR 1136 (21S01): Column count doesn't match value count at row 1
mysql> insert into Teacher values(1001,'Karim Khan','CSE','Lecturer','Mirpur',70
000);
Query OK, 1 row affected (0.04 sec)


mysql> insert into Teacher values(1003,'Rahim','CSE','Senior','Rongpur',55000);
Query OK, 1 row affected (0.21 sec)

mysql> select * from Students'
    '> '
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that
corresponds to your MySQL server version for the right syntax to use near ''
'' at line 1
mysql> select * from Students;
+------+-------+------------+---------+------+------+
| ID   | Name  | Department | Section | Age  | CGPA |
+------+-------+------------+---------+------+------+
| 1111 | Antor | CSE        | F       |   22 |    3 |
|  101 | Fahim | CSE        | D       |   23 |    4 |
|  132 | Karim | CSE        | F       |   20 |    4 |
|  222 | Ohon  | CSE        | A       |   25 |    2 |
|  212 | Rabbi | CSE        | B       |   18 |    3 |
+------+-------+------------+---------+------+------+
5 rows in set (0.00 sec)

mysql> select * from Teacher;
+------+--------------+------------+-------------+-----------------+--------+
| ID   | Teacher_Name | Department | Designation | Adress          | Salary |
+------+--------------+------------+-------------+-----------------+--------+
| 1001 | Rahim        | CSE        | BIG         | 20/3 crown road |   5000 |
| 1001 | Karim Khan   | CSE        | Lecturer    | Mirpur          |  70000 |
| 1003 | Rahim        | CSE        | Senior      | Rongpur         |  55000 |
+------+--------------+------------+-------------+-----------------+--------+
3 rows in set (0.00 sec)

mysql> Select * from Officer;
+------+---------------+------+------------------+------------+
| ID   | Name          | Rank | Tasks            | Adress     |
+------+---------------+------+------------------+------------+
| 2001 | Mr.Pocha Khan |   20 | Eat Sleep Repeat | Sweet home |
+------+---------------+------+------------------+------------+
1 row in set (0.00 sec)

mysql> show * from Student where age>=20;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that
corresponds to your MySQL server version for the right syntax to use near '* fro
m Student where age>=20' at line 1
mysql> select * from student where age>=20;
Empty set (0.00 sec)

mysql> select * from student where CGPA <=3;
Empty set (0.00 sec)

mysql> select * from Students where age>=20;
+------+-------+------------+---------+------+------+
| ID   | Name  | Department | Section | Age  | CGPA |
+------+-------+------------+---------+------+------+
| 1111 | Antor | CSE        | F       |   22 |    3 |
|  101 | Fahim | CSE        | D       |   23 |    4 |
|  132 | Karim | CSE        | F       |   20 |    4 |
|  222 | Ohon  | CSE        | A       |   25 |    2 |
+------+-------+------------+---------+------+------+
4 rows in set (0.00 sec)

mysql> select * from Students where CGPA <=3;
+------+-------+------------+---------+------+------+
| ID   | Name  | Department | Section | Age  | CGPA |
+------+-------+------------+---------+------+------+
| 1111 | Antor | CSE        | F       |   22 |    3 |
|  222 | Ohon  | CSE        | A       |   25 |    2 |
|  212 | Rabbi | CSE        | B       |   18 |    3 |
+------+-------+------------+---------+------+------+
3 rows in set (0.00 sec)

mysql> select * from teacher where designation ='Lacturer';
Empty set (0.00 sec)

mysql> select * from Teacher where designation='Lecturer';
+------+--------------+------------+-------------+--------+--------+
| ID   | Teacher_Name | Department | Designation | Adress | Salary |
+------+--------------+------------+-------------+--------+--------+
| 1001 | Karim Khan   | CSE        | Lecturer    | Mirpur |  70000 |
+------+--------------+------------+-------------+--------+--------+
1 row in set (0.00 sec)

mysql> select * from teacher where salery>=40000;
ERROR 1054 (42S22): Unknown column 'salery' in 'where clause'
mysql> select * from Teacher where salary>=40000;
+------+--------------+------------+-------------+---------+--------+
| ID   | Teacher_Name | Department | Designation | Adress  | Salary |
+------+--------------+------------+-------------+---------+--------+
| 1001 | Karim Khan   | CSE        | Lecturer    | Mirpur  |  70000 |
| 1003 | Rahim        | CSE        | Senior      | Rongpur |  55000 |
+------+--------------+------------+-------------+---------+--------+
2 rows in set (0.00 sec)

mysql> c
first class.txt
Displaying first class.txt.
