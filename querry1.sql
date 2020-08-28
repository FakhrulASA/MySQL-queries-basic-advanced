Microsoft Windows [Version 6.3.9600]
(c) 2013 Microsoft Corporation. All rights reserved.

C:\Windows\System32>cd c:\

c:\>cd xampp

c:\xampp>cd mysql

c:\xampp\mysql>cd bin

c:\xampp\mysql\bin>mysql.exe
ERROR 1045 (28000): Access denied for user 'ODBC'@'localhost' (using password: N
O)

c:\xampp\mysql\bin>a
'a' is not recognized as an internal or external command,
operable program or batch file.

c:\xampp\mysql\bin>mysql -u root -p -h 127.0.0.1
Enter password: ****
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 3
Server version: 5.7.16-log MySQL Community Server (GPL)

Copyright (c) 2000, 2015, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sakila             |
| sys                |
| world              |
+--------------------+
6 rows in set (1.26 sec)

mysql> create database solo;
Query OK, 1 row affected (0.15 sec)

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sakila             |
| solo               |
| sys                |
| world              |
+--------------------+
7 rows in set (0.00 sec)

mysql> use solo;
Database changed
mysql> shiw tables;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that
corresponds to your MySQL server version for the right syntax to use near 'shiw
tables' at line 1
mysql> show tables;
Empty set (0.00 sec)

mysql> create table officers(ID INT,Name VARCHAR(30),CountryID INC);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that
corresponds to your MySQL server version for the right syntax to use near 'INC)'
 at line 1
mysql> create table products(ID INT, code VARCHAR(5),price INT);
Query OK, 0 rows affected (1.36 sec)

mysql> insert into products values(101,PNN,30);
ERROR 1054 (42S22): Unknown column 'PNN' in 'field list'
mysql> insert into products values(101,'PNN'.30);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that
corresponds to your MySQL server version for the right syntax to use near '.30)'
 at line 1
mysql> insert into products values(101,'PNN',33);
Query OK, 1 row affected (0.12 sec)

mysql> insert into products values(103,'CNA',10);
Query OK, 1 row affected (0.06 sec)

mysql> insert into products values(092,'PIKA',19);
Query OK, 1 row affected (0.03 sec)

mysql> insert into products values(231,'HHA',22);
Query OK, 1 row affected (0.09 sec)

mysql> insert into products values(100,'GGW',10);
Query OK, 1 row affected (0.03 sec)

mysql> select *  from products;
+------+------+-------+
| ID   | code | price |
+------+------+-------+
|  101 | PNN  |    33 |
|  103 | CNA  |    10 |
|   92 | PIKA |    19 |
|  231 | HHA  |    22 |
|  100 | GGW  |    10 |
+------+------+-------+
5 rows in set (0.11 sec)

mysql> select * from products where code='PNN' order by ID;
+------+------+-------+
| ID   | code | price |
+------+------+-------+
|  101 | PNN  |    33 |
+------+------+-------+
1 row in set (0.03 sec)

mysql> select * from products order by ID;
+------+------+-------+
| ID   | code | price |
+------+------+-------+
|   92 | PIKA |    19 |
|  100 | GGW  |    10 |
|  101 | PNN  |    33 |
|  103 | CNA  |    10 |
|  231 | HHA  |    22 |
+------+------+-------+
5 rows in set (0.00 sec)

mysql> select * from products order by ID DSC;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that
corresponds to your MySQL server version for the right syntax to use near 'DSC'
at line 1
mysql> select * from products order by ID DESC;
+------+------+-------+
| ID   | code | price |
+------+------+-------+
|  231 | HHA  |    22 |
|  103 | CNA  |    10 |
|  101 | PNN  |    33 |
|  100 | GGW  |    10 |
|   92 | PIKA |    19 |
+------+------+-------+
5 rows in set (0.00 sec)

mysql> select * from products where ID=100 and price=19;
Empty set (0.02 sec)

mysql> select * from products where ID=92 or pric= 22;
ERROR 1054 (42S22): Unknown column 'pric' in 'where clause'
mysql> select * from products where ID=100 or price=22;
+------+------+-------+
| ID   | code | price |
+------+------+-------+
|  231 | HHA  |    22 |
|  100 | GGW  |    10 |
+------+------+-------+
2 rows in set (0.00 sec)

mysql> select code from products code like 'NA%';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that
corresponds to your MySQL server version for the right syntax to use near 'like
'NA%'' at line 1
mysql> select price from products where code like 'NA%';
Empty set (0.00 sec)

mysql> select * from products where code IN('CNN','PNN');
+------+------+-------+
| ID   | code | price |
+------+------+-------+
|  101 | PNN  |    33 |
+------+------+-------+
1 row in set (0.02 sec)

mysql> select * from products where code not in('CNA','PNN');
+------+------+-------+
| ID   | code | price |
+------+------+-------+
|   92 | PIKA |    19 |
|  231 | HHA  |    22 |
|  100 | GGW  |    10 |
+------+------+-------+
3 rows in set (0.00 sec)

mysql> select * from products where price is null;
Empty set (0.00 sec)

mysql> select * from products where price is not null;
+------+------+-------+
| ID   | code | price |
+------+------+-------+
|  101 | PNN  |    33 |
|  103 | CNA  |    10 |
|   92 | PIKA |    19 |
|  231 | HHA  |    22 |
|  100 | GGW  |    10 |
+------+------+-------+
5 rows in set (0.00 sec)

mysql> select * from products where price between 10 and 25;
+------+------+-------+
| ID   | code | price |
+------+------+-------+
|  103 | CNA  |    10 |
|   92 | PIKA |    19 |
|  231 | HHA  |    22 |
|  100 | GGW  |    10 |
+------+------+-------+
4 rows in set (0.00 sec)

mysql> select CONCAT(ID,'=',code) as 'Product Description',price from products;
+---------------------+-------+
| Product Description | price |
+---------------------+-------+
| 101=PNN             |    33 |
| 103=CNA             |    10 |
| 92=PIKA             |    19 |
| 231=HHA             |    22 |
| 100=GGW             |    10 |
+---------------------+-------+
5 rows in set (0.05 sec)

mysql>