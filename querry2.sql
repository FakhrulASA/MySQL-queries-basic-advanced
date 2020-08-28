
+--------------------+
| Database           |
+--------------------+
| company            |
| daffodil           |
| diu                |
| information_schema |
| mysql              |
| performance_schema |
| phpmyadmin         |
| test               |
+--------------------+
8 rows in set (0.01 sec)

MariaDB [(none)]> create database filmWorld;
Query OK, 1 row affected (0.00 sec)

MariaDB [(none)]> show databases;
+--------------------+
| Database           |
+--------------------+
| company            |
| daffodil           |
| diu                |
| filmworld          |
| information_schema |
| mysql              |
| performance_schema |
| phpmyadmin         |
| test               |
+--------------------+
9 rows in set (0.00 sec)

MariaDB [(none)]> use filmworld;
Database changed
MariaDB [filmworld]> create table movie(title varchar(30), year int,length int,inColor varchar(10),studioName varchar(30),producerC vharchar(20));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'vharchar(20))' at line 1
MariaDB [filmworld]> create table movie(title varchar(30), year int,length int,inColor varchar(10),studioName varchar(30),producerC varchar(20));
Query OK, 0 rows affected (0.02 sec)

MariaDB [filmworld]> show tables;
+---------------------+
| Tables_in_filmworld |
+---------------------+
| movie               |
+---------------------+
1 row in set (0.00 sec)

MariaDB [filmworld]> describe movie;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| title      | varchar(30) | YES  |     | NULL    |       |
| year       | int(11)     | YES  |     | NULL    |       |
| length     | int(11)     | YES  |     | NULL    |       |
| inColor    | varchar(10) | YES  |     | NULL    |       |
| studioName | varchar(30) | YES  |     | NULL    |       |
| producerC  | varchar(20) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.01 sec)

MariaDB [filmworld]> insert into movie(
    -> insert into movie('3 idiots',2009,171,colorful,'vinod chopra films','vidhu vinod chopra');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'insert into movie('3 idiots',2009,171,colorful,'vinod chopra films','vidhu vinod' at line 2
MariaDB [filmworld]> insert into movie values('3 idiots',2009,171,colorful,'vinod chopra films','vidhu vinod chopra');
ERROR 1054 (42S22): Unknown column 'colorful' in 'field list'
MariaDB [filmworld]> insert into movie values('3 idiots',2009,171,'colorful','vinod chopra films','vidhu vinod chopra');
Query OK, 1 row affected (0.00 sec)

MariaDB [filmworld]> select * movie;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'movie' at line 1
MariaDB [filmworld]> select  * from  movie;
+----------+------+--------+----------+--------------------+--------------------+
| title    | year | length | inColor  | studioName         | producerC          |
+----------+------+--------+----------+--------------------+--------------------+
| 3 idiots | 2009 |    171 | colorful | vinod chopra films | vidhu vinod chopra |
+----------+------+--------+----------+--------------------+--------------------+
1 row in set (0.00 sec)

MariaDB [filmworld]> insert into movie values('sherlock jr.',1924,225,'black and white','mgm','joseph m. schenck');
Query OK, 1 row affected, 1 warning (0.00 sec)

MariaDB [filmworld]> insert into movie values('the rag man',1995,180,'webcam','mgm','');
Query OK, 1 row affected (0.00 sec)

MariaDB [filmworld]> insert into movie values('lovey mary',1926,70,'webcam','mgm','');
Query OK, 1 row affected (0.00 sec)

MariaDB [filmworld]> insert into movie values('the great love',1925,170,'720p','mgm','');
Query OK, 1 row affected (0.00 sec)

MariaDB [filmworld]> insert into movie values('women love diamonds',1927,70,'720p','mgm','');
Query OK, 1 row affected (0.00 sec)

MariaDB [filmworld]> insert into movie values('lovers',1927,60,'720p','mgm','louis b. mayer, irving thalberg');
Query OK, 1 row affected, 1 warning (0.00 sec)

MariaDB [filmworld]> insert into movie values('dream of love',1928,65,'720p','mgm','');
Query OK, 1 row affected (0.00 sec)

MariaDB [filmworld]> insert into movie values('mad love',1935,68,'720p','mgm','john l. balderston');
Query OK, 1 row affected (0.00 sec)

MariaDB [filmworld]> insert into movie values('live, love and learn',1937,78,'720p','mgm','');
Query OK, 1 row affected (0.00 sec)

MariaDB [filmworld]> insert into movie values('i love you again',1940,99,'720p','mgm','');
Query OK, 1 row affected (0.00 sec)

MariaDB [filmworld]> insert into movie values('without love',1945,111,'720p','mgm','');
Query OK, 1 row affected (0.00 sec)

MariaDB [filmworld]> insert into movie values('no leave no love',1946,119,'720p','mgm','joe pasternak');
Query OK, 1 row affected (0.00 sec)

MariaDB [filmworld]> insert into movie values('Love Is Better Than Ever',1952,81,'720p','mgm','');
Query OK, 1 row affected (0.00 sec)

MariaDB [filmworld]> insert into movie values('Love Me or Leave Me',1955,81,'720p','mgm','joe pasternak');
Query OK, 1 row affected (0.00 sec)

MariaDB [filmworld]> insert into movie values('GoldenEye',1995,130,'720p','mgm','barbara broccoli, michael g. wilson');
Query OK, 1 row affected, 1 warning (0.00 sec)

MariaDB [filmworld]> insert into movie values('Skyfall',2012,143,'1080p','mgm','barbara broccoli, michael g. wilson');
Query OK, 1 row affected, 1 warning (0.00 sec)

MariaDB [filmworld]> insert into movie values('Tomb Raider',2018,118,'1080p','mgm','grahm king');
Query OK, 1 row affected (0.00 sec)

MariaDB [filmworld]> insert into movie values('iron man',2008,126,'1080p','mgm','avi feige,kevin feige');
Query OK, 1 row affected, 1 warning (0.00 sec)

MariaDB [filmworld]> insert into movie values('Infinity War',2018,149,'1080p','marvel','kevin feige');
Query OK, 1 row affected (0.00 sec)

MariaDB [filmworld]> select * from movies;
ERROR 1146 (42S02): Table 'filmworld.movies' doesn't exist
MariaDB [filmworld]> select * from movie;
+--------------------------+------+--------+------------+--------------------+----------------------+
| title                    | year | length | inColor    | studioName         | producerC            |
+--------------------------+------+--------+------------+--------------------+----------------------+
| 3 idiots                 | 2009 |    171 | colorful   | vinod chopra films | vidhu vinod chopra   |
| sherlock jr.             | 1924 |    225 | black and  | mgm                | joseph m. schenck    |
| the rag man              | 1995 |    180 | webcam     | mgm                |                      |
| lovey mary               | 1926 |     70 | webcam     | mgm                |                      |
| the great love           | 1925 |    170 | 720p       | mgm                |                      |
| women love diamonds      | 1927 |     70 | 720p       | mgm                |                      |
| lovers                   | 1927 |     60 | 720p       | mgm                | louis b. mayer, irvi |
| dream of love            | 1928 |     65 | 720p       | mgm                |                      |
| mad love                 | 1935 |     68 | 720p       | mgm                | john l. balderston   |
| live, love and learn     | 1937 |     78 | 720p       | mgm                |                      |
| i love you again         | 1940 |     99 | 720p       | mgm                |                      |
| without love             | 1945 |    111 | 720p       | mgm                |                      |
| no leave no love         | 1946 |    119 | 720p       | mgm                | joe pasternak        |
| Love Is Better Than Ever | 1952 |     81 | 720p       | mgm                |                      |
| Love Me or Leave Me      | 1955 |     81 | 720p       | mgm                | joe pasternak        |
| GoldenEye                | 1995 |    130 | 720p       | mgm                | barbara broccoli, mi |
| Skyfall                  | 2012 |    143 | 1080p      | mgm                | barbara broccoli, mi |
| Tomb Raider              | 2018 |    118 | 1080p      | mgm                | grahm king           |
| iron man                 | 2008 |    126 | 1080p      | mgm                | avi feige,kevin feig |
| Infinity War             | 2018 |    149 | 1080p      | marvel             | kevin feige          |
+--------------------------+------+--------+------------+--------------------+----------------------+
20 rows in set (0.00 sec)

MariaDB [filmworld]> update movie  set studioName = 'marvel' where title = 'iron man';
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [filmworld]> select * from movie;
+--------------------------+------+--------+------------+--------------------+----------------------+
| title                    | year | length | inColor    | studioName         | producerC            |
+--------------------------+------+--------+------------+--------------------+----------------------+
| 3 idiots                 | 2009 |    171 | colorful   | vinod chopra films | vidhu vinod chopra   |
| sherlock jr.             | 1924 |    225 | black and  | mgm                | joseph m. schenck    |
| the rag man              | 1995 |    180 | webcam     | mgm                |                      |
| lovey mary               | 1926 |     70 | webcam     | mgm                |                      |
| the great love           | 1925 |    170 | 720p       | mgm                |                      |
| women love diamonds      | 1927 |     70 | 720p       | mgm                |                      |
| lovers                   | 1927 |     60 | 720p       | mgm                | louis b. mayer, irvi |
| dream of love            | 1928 |     65 | 720p       | mgm                |                      |
| mad love                 | 1935 |     68 | 720p       | mgm                | john l. balderston   |
| live, love and learn     | 1937 |     78 | 720p       | mgm                |                      |
| i love you again         | 1940 |     99 | 720p       | mgm                |                      |
| without love             | 1945 |    111 | 720p       | mgm                |                      |
| no leave no love         | 1946 |    119 | 720p       | mgm                | joe pasternak        |
| Love Is Better Than Ever | 1952 |     81 | 720p       | mgm                |                      |
| Love Me or Leave Me      | 1955 |     81 | 720p       | mgm                | joe pasternak        |
| GoldenEye                | 1995 |    130 | 720p       | mgm                | barbara broccoli, mi |
| Skyfall                  | 2012 |    143 | 1080p      | mgm                | barbara broccoli, mi |
| Tomb Raider              | 2018 |    118 | 1080p      | mgm                | grahm king           |
| iron man                 | 2008 |    126 | 1080p      | marvel             | avi feige,kevin feig |
| Infinity War             | 2018 |    149 | 1080p      | marvel             | kevin feige          |
+--------------------------+------+--------+------------+--------------------+----------------------+
20 rows in set (0.00 sec)

MariaDB [filmworld]> create table starsin(movieTitle varchar(30), movieYear int,starname varchar(30));
Query OK, 0 rows affected (0.02 sec)

MariaDB [filmworld]> create table movieStar(name varchar(30),address varchar(50),gender varchar(10),birthdate varchar(30));
Query OK, 0 rows affected (0.02 sec)

MariaDB [filmworld]> create table movieexec(name varchar(30),address varchar(50),cert  varchar(10),networth int);
Query OK, 0 rows affected (0.03 sec)

MariaDB [filmworld]> create table studio(name varchar(30),address varchar(50),presc  varchar(10));
Query OK, 0 rows affected (0.02 sec)

MariaDB [filmworld]> insert into studio values ('paramount pictures','5555 melrose avenue,california,united state','ok');
Query OK, 1 row affected (0.00 sec)

MariaDB [filmworld]> insert into studio values ('Walt Disney Pictures','500 s.buena vista street,california,united state','ok');
Query OK, 1 row affected (0.00 sec)

MariaDB [filmworld]> insert into studio values ('universal','california,united state','ok');
Query OK, 1 row affected (0.00 sec)

MariaDB [filmworld]> insert into studio values ('Page semi-protected','california,united state','ok');
Query OK, 1 row affected (0.00 sec)

MariaDB [filmworld]> insert into studio values ('Page semi-protected','california,united state','ok');
Query OK, 1 row affected (0.00 sec)

MariaDB [filmworld]> insert into studio values ('Page semi-protected','california,united state','ok');
Query OK, 1 row affected (0.00 sec)


Microsoft Windows [Version 10.0.15063]
(c) 2017 Microsoft Corporation. All rights reserved.

C:\Users\lubna>cd\

C:\>cd xampp

C:\xampp>cd mysql

C:\xampp\mysql>cd bin

C:\xampp\mysql\bin>mysql -u root -p -h 127.0.0.1
Enter password:
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 3
Server version: 10.1.26-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2017, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> use filmworld
Database changed
MariaDB [filmworld]> select * from studio;
+----------------------+--------------------------------------------------+-------+
| name                 | address                                          | presc |
+----------------------+--------------------------------------------------+-------+
| paramount pictures   | 5555 melrose avenue,california,united state      | ok    |
| Walt Disney Pictures | 500 s.buena vista street,california,united state | ok    |
| universal            | california,united state                          | ok    |
| Page semi-protected  | california,united state                          | ok    |
| Page semi-protected  | california,united state                          | ok    |
| Page semi-protected  | california,united state                          | ok    |
+----------------------+--------------------------------------------------+-------+
6 rows in set (0.00 sec)

MariaDB [filmworld]> delete * from studio where name = 'page semi-protected';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '* from studio where name = 'page semi-protected'' at line 1
MariaDB [filmworld]> delete from studio where name = 'page semi-protected';
Query OK, 3 rows affected (0.00 sec)

MariaDB [filmworld]> select * from studio;
+----------------------+--------------------------------------------------+-------+
| name                 | address                                          | presc |
+----------------------+--------------------------------------------------+-------+
| paramount pictures   | 5555 melrose avenue,california,united state      | ok    |
| Walt Disney Pictures | 500 s.buena vista street,california,united state | ok    |
| universal            | california,united state                          | ok    |
+----------------------+--------------------------------------------------+-------+
3 rows in set (0.00 sec)

MariaDB [filmworld]> insert into studio values('mgm','america','ok');
Query OK, 1 row affected (0.00 sec)

MariaDB [filmworld]> select * from studio;
+----------------------+--------------------------------------------------+-------+
| name                 | address                                          | presc |
+----------------------+--------------------------------------------------+-------+
| paramount pictures   | 5555 melrose avenue,california,united state      | ok    |
| Walt Disney Pictures | 500 s.buena vista street,california,united state | ok    |
| universal            | california,united state                          | ok    |
| mgm                  | america                                          | ok    |
+----------------------+--------------------------------------------------+-------+
4 rows in set (0.00 sec)

MariaDB [filmworld]> insert into starsin values('laagan',2001,'Aamir Khan');
Query OK, 1 row affected (0.01 sec)

MariaDB [filmworld]> insert into movie values('laagan',2001,'1080p','Aamir Khan Productions','amir khan');
ERROR 1136 (21S01): Column count doesn't match value count at row 1
MariaDB [filmworld]> insert into movie values('laagan',2001,224,'1080p','Aamir Khan Productions','amir khan');
Query OK, 1 row affected (0.00 sec)

MariaDB [filmworld]> insert into moviestar values('amir khan','india','male','14 March 1965');
Query OK, 1 row affected (0.00 sec)

MariaDB [filmworld]> insert into moviestar values('sandra bullock','us','female','July 26 1964');
Query OK, 1 row affected (0.00 sec)

MariaDB [filmworld]> insert into movieexec values('laagan','india','done',10000000);
Query OK, 1 row affected (0.00 sec)

MariaDB [filmworld]> set 1
    ->
    ->
    ->
    ->
    ->
    -> a
    ->
    ->
    -> select address from studio where name = 'mgm';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '1





a


select address from studio where name = 'mgm'' at line 1
MariaDB [filmworld]> select address from studio where name = 'mgm';
+---------+
| address |
+---------+
| america |
+---------+
1 row in set (0.00 sec)

MariaDB [filmworld]> select birthdate from moviestar where name = 'sandra bullock';
+--------------+
| birthdate    |
+--------------+
| July 26 1964 |
+--------------+
1 row in set (0.00 sec)

MariaDB [filmworld]> select starname from starsin where movieyear = 1980 or movietitle like'%love%';
Empty set (0.00 sec)

MariaDB [filmworld]> select name from movieexec where networth >= 10000000;
+--------+
| name   |
+--------+
| laagan |
+--------+
1 row in set (0.00 sec)

MariaDB [filmworld]> select name from moviestar where gender ='male' or address like '%miami%';
+-----------+
| name      |
+-----------+
| amir khan |
+-----------+
1 row in set (0.00 sec)

MariaDB [filmworld]> select name from moviestar, starsin where gender = 'male' and name = starname and movie title = 'terms of endearment';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'title = 'terms of endearment'' at line 1
MariaDB [filmworld]> select name from moviestar, starsin where gender = 'male' and name = starname and movietitle = 'terms of endearment';
Empty set (0.00 sec)

MariaDB [filmworld]> select starname from moviestar, movie where title = movietitle and year = movieyear and year = 1995 amd studioname = 'mgm';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'amd studioname = 'mgm'' at line 1
MariaDB [filmworld]> select starname from moviestar, movie where title = movietitle and year = movieyear and year = 1995 and studioname = 'mgm';
ERROR 1054 (42S22): Unknown column 'starname' in 'field list'
MariaDB [filmworld]> select name from moviestar, movie where title = movietitle and year = movieyear and year = 1995 and studioname = 'mgm';
ERROR 1054 (42S22): Unknown column 'movietitle' in 'where clause'
MariaDB [filmworld]> select starname from starsin, movie where title = movietitle and year = movieyear and year = 1995 and studioname = 'mgm';
Empty set (0.00 sec)

MariaDB [filmworld]> select title from movie where length > (select length from movie where title = 'gone with the wine');
Empty set (0.00 sec)

MariaDB [filmworld]> select title from movie where length > (select length from movie where title = 'laagan');
+--------------+
| title        |
+--------------+
| sherlock jr. |
+--------------+
1 row in set (0.00 sec)

MariaDB [filmworld]> show tables;
+---------------------+
| Tables_in_filmworld |
+---------------------+
| movie               |
| movieexec           |
| moviestar           |
| starsin             |
| studio              |
+---------------------+
5 rows in set (0.00 sec)

MariaDB [filmworld]> describe movie;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| title      | varchar(30) | YES  |     | NULL    |       |
| year       | int(11)     | YES  |     | NULL    |       |
| length     | int(11)     | YES  |     | NULL    |       |
| inColor    | varchar(10) | YES  |     | NULL    |       |
| studioName | varchar(30) | YES  |     | NULL    |       |
| producerC  | varchar(20) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.01 sec)

MariaDB [filmworld]> describe movieexec;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| name     | varchar(30) | YES  |     | NULL    |       |
| address  | varchar(50) | YES  |     | NULL    |       |
| cert     | varchar(10) | YES  |     | NULL    |       |
| networth | int(11)     | YES  |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+
4 rows in set (0.01 sec)

MariaDB [filmworld]> describe moviestar;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| name      | varchar(30) | YES  |     | NULL    |       |
| address   | varchar(50) | YES  |     | NULL    |       |
| gender    | varchar(10) | YES  |     | NULL    |       |
| birthdate | varchar(30) | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
4 rows in set (0.01 sec)

MariaDB [filmworld]> describe studio;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| name    | varchar(30) | YES  |     | NULL    |       |
| address | varchar(50) | YES  |     | NULL    |       |
| presc   | varchar(10) | YES  |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
3 rows in set (0.01 sec)

MariaDB [filmworld]> describe starsin;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| movieTitle | varchar(30) | YES  |     | NULL    |       |
| movieYear  | int(11)     | YES  |     | NULL    |       |
| starname   | varchar(30) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
3 rows in set (0.02 sec)

MariaDB [filmworld]> select * from movie;
+--------------------------+------+--------+------------+------------------------+----------------------+
| title                    | year | length | inColor    | studioName             | producerC            |
+--------------------------+------+--------+------------+------------------------+----------------------+
| 3 idiots                 | 2009 |    171 | colorful   | vinod chopra films     | vidhu vinod chopra   |
| sherlock jr.             | 1924 |    225 | black and  | mgm                    | joseph m. schenck    |
| the rag man              | 1995 |    180 | webcam     | mgm                    |                      |
| lovey mary               | 1926 |     70 | webcam     | mgm                    |                      |
| the great love           | 1925 |    170 | 720p       | mgm                    |                      |
| women love diamonds      | 1927 |     70 | 720p       | mgm                    |                      |
| lovers                   | 1927 |     60 | 720p       | mgm                    | louis b. mayer, irvi |
| dream of love            | 1928 |     65 | 720p       | mgm                    |                      |
| mad love                 | 1935 |     68 | 720p       | mgm                    | john l. balderston   |
| live, love and learn     | 1937 |     78 | 720p       | mgm                    |                      |
| i love you again         | 1940 |     99 | 720p       | mgm                    |                      |
| without love             | 1945 |    111 | 720p       | mgm                    |                      |
| no leave no love         | 1946 |    119 | 720p       | mgm                    | joe pasternak        |
| Love Is Better Than Ever | 1952 |     81 | 720p       | mgm                    |                      |
| Love Me or Leave Me      | 1955 |     81 | 720p       | mgm                    | joe pasternak        |
| GoldenEye                | 1995 |    130 | 720p       | mgm                    | barbara broccoli, mi |
| Skyfall                  | 2012 |    143 | 1080p      | mgm                    | barbara broccoli, mi |
| Tomb Raider              | 2018 |    118 | 1080p      | mgm                    | grahm king           |
| iron man                 | 2008 |    126 | 1080p      | marvel                 | avi feige,kevin feig |
| Infinity War             | 2018 |    149 | 1080p      | marvel                 | kevin feige          |
| laagan                   | 2001 |    224 | 1080p      | Aamir Khan Productions | amir khan            |
+--------------------------+------+--------+------------+------------------------+----------------------+
21 rows in set (0.00 sec)

MariaDB [filmworld]> select * from starsin;
+------------+-----------+------------+
| movieTitle | movieYear | starname   |
+------------+-----------+------------+
| laagan     |      2001 | Aamir Khan |
+------------+-----------+------------+
1 row in set (0.00 sec)

MariaDB [filmworld]> select * from moviestar;
+----------------+---------+--------+---------------+
| name           | address | gender | birthdate     |
+----------------+---------+--------+---------------+
| amir khan      | india   | male   | 14 March 1965 |
| sandra bullock | us      | female | July 26 1964  |
+----------------+---------+--------+---------------+
2 rows in set (0.00 sec)

MariaDB [filmworld]> select * from movieexec;
+--------+---------+------+----------+
| name   | address | cert | networth |
+--------+---------+------+----------+
| laagan | india   | done | 10000000 |
+--------+---------+------+----------+
1 row in set (0.00 sec)

MariaDB [filmworld]> select * from studio;
+----------------------+--------------------------------------------------+-------+
| name                 | address                                          | presc |
+----------------------+--------------------------------------------------+-------+
| paramount pictures   | 5555 melrose avenue,california,united state      | ok    |
| Walt Disney Pictures | 500 s.buena vista street,california,united state | ok    |
| universal            | california,united state                          | ok    |
| mgm                  | america                                          | ok    |
+----------------------+--------------------------------------------------+-------+
4 rows in set (0.00 sec)

MariaDB [filmworld]>






Microsoft Windows [Version 10.0.15063]
(c) 2017 Microsoft Corporation. All rights reserved.

C:\Users\lubna>cd
C:\Users\lubna

C:\Users\lubna>cd\

C:\>cd xampp

C:\xampp>cd mysql

C:\xampp\mysql>cd bin

C:\xampp\mysql\bin>mysql -u root -p -h 127.0.0.1
Enter password:
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 4
Server version: 10.1.26-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2017, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> create database Shipdetails;
Query OK, 1 row affected (0.00 sec)

MariaDB [(none)]> create table classes(class varchar(30),type varchar(30),country varchar(30),numguns int,bore varchar(30),displacement int);
ERROR 1046 (3D000): No database selected
MariaDB [(none)]> use shipdetails;
Database changed
MariaDB [shipdetails]> create table classes(class varchar(30),type varchar(30),country varchar(30),numguns int,bore varchar(30),displacement int);
Query OK, 0 rows affected (0.02 sec)

MariaDB [shipdetails]> create table ships(name varchar(30),class varchar(30),launched varchar(25));
Query OK, 0 rows affected (0.02 sec)

MariaDB [shipdetails]> create table battles(name varchar(30),date varchar(30));
Query OK, 0 rows affected (0.03 sec)

MariaDB [shipdetails]> create table outcomes(ship varchar(30),battle varchar(30),result varchar(25));
Query OK, 0 rows affected (0.03 sec)

MariaDB [shipdetails]> insert into classes values('a','war','us',10000,'bore1',50);
Query OK, 1 row affected (0.00 sec)

MariaDB [shipdetails]> insert into ships values('alpha1','a','yes');
Query OK, 1 row affected (0.00 sec)

MariaDB [shipdetails]> insert into classes values('kongo','war','us',100000,'16',50);
Query OK, 1 row affected (0.00 sec)

MariaDB [shipdetails]> insert into outcomes values('alpha','mission chaina','sunk');
Query OK, 1 row affected (0.00 sec)

MariaDB [shipdetails]> insert into outcomes values('mission chaina','10-10-10');
ERROR 1136 (21S01): Column count doesn't match value count at row 1
MariaDB [shipdetails]> insert into battles values('mission chaina','10-10-10');
Query OK, 1 row affected (0.00 sec)

MariaDB [shipdetails]> select country from classes where numguns = (select max(numgones) from classes);
ERROR 1054 (42S22): Unknown column 'numgones' in 'field list'
MariaDB [shipdetails]> select country from classes where numguns = (select max(numgunes) from classes);
ERROR 1054 (42S22): Unknown column 'numgunes' in 'field list'
MariaDB [shipdetails]> select country from classes where numguns = (select max(numguns) from classes);
+---------+
| country |
+---------+
| us      |
+---------+
1 row in set (0.00 sec)

MariaDB [shipdetails]> select country from classes where numguns >= all  (select numguns from classes);
+---------+
| country |
+---------+
| us      |
+---------+
1 row in set (0.00 sec)

MariaDB [shipdetails]> select distinct class from ships where name in (select ship from outcomes where result = 'sunk');
Empty set (0.00 sec)

MariaDB [shipdetails]> select name from shipsm,classes where ship.class = classes.class and bore = '16';
ERROR 1146 (42S02): Table 'shipdetails.shipsm' doesn't exist
MariaDB [shipdetails]> select name from ships,classes where ship.class = classes.class and bore = '16';
ERROR 1054 (42S22): Unknown column 'ship.class' in 'where clause'
MariaDB [shipdetails]> select name from ships,classes where ships.class = classes.class and bore = '16';
Empty set (0.00 sec)

MariaDB [shipdetails]> select distinct battle from  ships, outcomes where name = ship and class = 'kongo';
Empty set (0.00 sec)

MariaDB [shipdetails]> select name from ships, classes as c1 where ships.class = c1.class and numguns = (slect max(numguns) from classes as c2 where c1.bore = c2.bore);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'max(numguns) from classes as c2 where c1.bore = c2.bore)' at line 1
MariaDB [shipdetails]> select * from classes;
+-------+------+---------+---------+-------+--------------+
| class | type | country | numguns | bore  | displacement |
+-------+------+---------+---------+-------+--------------+
| a     | war  | us      |   10000 | bore1 |           50 |
| kongo | war  | us      |  100000 | 16    |           50 |
+-------+------+---------+---------+-------+--------------+
2 rows in set (0.00 sec)

MariaDB [shipdetails]> select * from ships;
+--------+-------+----------+
| name   | class | launched |
+--------+-------+----------+
| alpha1 | a     | yes      |
+--------+-------+----------+
1 row in set (0.00 sec)

MariaDB [shipdetails]> select * from battles;
+----------------+----------+
| name           | date     |
+----------------+----------+
| mission chaina | 10-10-10 |
+----------------+----------+
1 row in set (0.00 sec)

MariaDB [shipdetails]> select * from outcomes;
+-------+----------------+--------+
| ship  | battle         | result |
+-------+----------------+--------+
| alpha | mission chaina | sunk   |
+-------+----------------+--------+
1 row in set (0.00 sec)

MariaDB [shipdetails]>
