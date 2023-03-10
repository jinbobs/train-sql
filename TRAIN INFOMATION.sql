mysql> SHOW DATABAES;
1064 - You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'DATABAES' at line 1
mysql> SHOW DATABAsES;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| a                  |
| final              |
| jin                |
| mysql              |
| performance_schema |
| test               |
+--------------------+
7 rows in set

mysql> CREATE DATEBASE train;
1064 - You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'DATEBASE train' at line 1
mysql> CREATE DATaBASE train;
Query OK, 1 row affected

mysql> USE train;
Query OK, 0 rows affected

mysql> DROP train;
1064 - You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'train' at line 1
mysql> DELETE train;
1064 - You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> DROP DATABASE train;
Query OK, 0 rows affected

mysql> CREATE DATABASE train_information;
Query OK, 1 row affected

mysql> USE train_information;
Query OK, 0 rows affected

mysql> CREATE TABLE train( train_id INT NOT NULL,train_number INT,  train_time DATETIME, arrive_station VARCHAR(20),deparutre_station VARCHAR(20),PRIMARY KEY(train_id));
Query OK, 0 rows affected

mysql> DESC train;
+-------------------+-------------+------+-----+---------+-------+
| Field             | Type        | Null | Key | Default | Extra |
+-------------------+-------------+------+-----+---------+-------+
| train_id          | int(11)     | NO   | PRI | NULL    |       |
| train_number      | int(11)     | YES  |     | NULL    |       |
| train_time        | datetime    | YES  |     | NULL    |       |
| arrive_station    | varchar(20) | YES  |     | NULL    |       |
| deparutre_station | varchar(20) | YES  |     | NULL    |       |
+-------------------+-------------+------+-----+---------+-------+
5 rows in set

mysql> CREATE TABLE customer ( cs_id INT NOT NULL ,cs_name VARCHAR(20),GENDER CHAR(1), PRIMARY KEY(cs_id));
Query OK, 0 rows affected

mysql> DESC customer;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| cs_id   | int(11)     | NO   | PRI | NULL    |       |
| cs_name | varchar(20) | YES  |     | NULL    |       |
| GENDER  | char(1)     | YES  |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
3 rows in set

mysql> ALTER TABLE train MODIFY trian_number time;
1054 - Unknown column 'trian_number' in 'train'
mysql> ALTER TABLE train MODIFY trian_time time;
1054 - Unknown column 'trian_time' in 'train'
mysql> ALTER TABLE train MODIFY train_time time;
Query OK, 0 rows affected
Records: 0  Duplicates: 0  Warnings: 0

mysql> DESC train;
+-------------------+-------------+------+-----+---------+-------+
| Field             | Type        | Null | Key | Default | Extra |
+-------------------+-------------+------+-----+---------+-------+
| train_id          | int(11)     | NO   | PRI | NULL    |       |
| train_number      | int(11)     | YES  |     | NULL    |       |
| train_time        | time        | YES  |     | NULL    |       |
| arrive_station    | varchar(20) | YES  |     | NULL    |       |
| deparutre_station | varchar(20) | YES  |     | NULL    |       |
+-------------------+-------------+------+-----+---------+-------+
5 rows in set

mysql> INSERT INTO train( train_number, train_time, arrive_station, departure_station) VALUES ( 429 , '12:00:00', '서울역', '부산역');
1054 - Unknown column 'departure_station' in 'field list'
mysql> INSERT INTO train( train_number, train_time, arrive_station, deparuture_station) VALUES ( 429 , '12:00:00', '서울역', '부산역');
1054 - Unknown column 'deparuture_station' in 'field list'
mysql> INSERT INTO train( train_number, train_time, arrive_station, deparutre_station) VALUES ( 429 , '12:00:00', '서울역', '부산역');
1364 - Field 'train_id' doesn't have a default value
mysql> INSERT INTO train( train_number, train_time, arrive_station, deparuture_station) VALUES ( 429 , '12:00:00', '서울역', '부산역');
1054 - Unknown column 'deparuture_station' in 'field list'
mysql> INSERT INTO train(train_id, train_number, train_time, arrive_station, deparutre_station) VALUES ( 1 , 429 , '12:00:00', '서울역', '부산역');
Query OK, 1 row affected

mysql> INSERT INTO train(train_id, train_number, train_time, arrive_station, deparutre_station) VALUES ( 2 , 523 , '14:10:00', '용산역', '서대전역');
Query OK, 1 row affected

mysql> INSERT INTO train(train_id, train_number, train_time, arrive_station, deparutre_station) VALUES ( 3 , 634 , '09:30:00', '익산역', '용산역');
Query OK, 1 row affected

mysql> INSERT INTO train(train_id, train_number, train_time, arrive_station, deparutre_station) VALUES ( 4 , 823 , '14:30:00', '전주역', '부산역');
Query OK, 1 row affected

mysql> DESC customer;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| cs_id   | int(11)     | NO   | PRI | NULL    |       |
| cs_name | varchar(20) | YES  |     | NULL    |       |
| GENDER  | char(1)     | YES  |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
3 rows in set

mysql> INSERT INTO customer(cs_id , cs_name, GENDER) VALUES (1,  최진성, 'm' );
1054 - Unknown column '최진성' in 'field list'
mysql> INSERT INTO customer(cs_id , cs_name, GENDER) VALUES (1,  '최진성', 'm' );
Query OK, 1 row affected

mysql> INSERT INTO customer(cs_id , cs_name, GENDER) VALUES (2,  '이경준', 'm' );
Query OK, 1 row affected

mysql> INSERT INTO customer(cs_id , cs_name, GENDER) VALUES (3,  '안요셉', 'm' );
Query OK, 1 row affected

mysql> INSERT INTO customer(cs_id , cs_name, GENDER) VALUES (4,  '김현민', 'm' );
Query OK, 1 row affected

mysql> SELECT *FROM train;
+----------+--------------+------------+----------------+-------------------+
| train_id | train_number | train_time | arrive_station | deparutre_station |
+----------+--------------+------------+----------------+-------------------+
|        1 |          429 | 12:00:00   | 서울역          | 부산역             |
|        2 |          523 | 14:10:00   | 용산역          | 서대전역            |
|        3 |          634 | 09:30:00   | 익산역          | 용산역             |
|        4 |          823 | 14:30:00   | 전주역          | 부산역             |
+----------+--------------+------------+----------------+-------------------+
4 rows in set

mysql> SELECT *FROM customer;
+-------+---------+--------+
| cs_id | cs_name | GENDER |
+-------+---------+--------+
|     1 | 최진성   | m      |
|     2 | 이경준   | m      |
|     3 | 안요셉   | m      |
|     4 | 김현민   | m      |
+-------+---------+--------+
4 rows in set

mysql> SELECT cs_name, train_number from customer NATURAL JOIN train;
+---------+--------------+
| cs_name | train_number |
+---------+--------------+
| 최진성   |          429 |
| 이경준   |          429 |
| 안요셉   |          429 |
| 김현민   |          429 |
| 최진성   |          523 |
| 이경준   |          523 |
| 안요셉   |          523 |
| 김현민   |          523 |
| 최진성   |          634 |
| 이경준   |          634 |
| 안요셉   |          634 |
| 김현민   |          634 |
| 최진성   |          823 |
| 이경준   |          823 |
| 안요셉   |          823 |
| 김현민   |          823 |
+---------+--------------+
16 rows in set

mysql> CREATE TABLE reservation( rvt_id int not null AUTO_INCREMENT PRIMARY KEY, train_id INT NOT NULL , cs_id INT NOT NULL, FOREIGN KEY (train_id),FOREIGN KEY (cs_id), REFERENCES train(train_id),REFERENCES customer(cs_id));
1064 - You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'FOREIGN KEY (cs_id), REFERENCES train(train_id),REFERENCES customer(cs_id))' at line 1
mysql> CREATE TABLE reservation( rvt_id int not null AUTO_INCREMENT PRIMARY KEY, train_id INT NOT NULL , cs_id INT NOT NULL, FOREIGN KEY (train_id),FOREIGN KEY (cs_id), REFERENCES train (train_id),REFERENCES customer (cs_id));
1064 - You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'FOREIGN KEY (cs_id), REFERENCES train (train_id),REFERENCES customer (cs_id))' at line 1
mysql> CREATE TABLE reservation( rvt_id int not null AUTO_INCREMENT PRIMARY KEY, train_id INT NOT NULL , cs_id INT NOT NULL, FOREIGN KEY (train_id),REFERENCES train (train_id), FOREIGN KEY (cs_id),REFERENCES customer (cs_id));
1064 - You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'REFERENCES train (train_id), FOREIGN KEY (cs_id),REFERENCES customer (cs_id))' at line 1
mysql> CREATE TABLE reservation( rvt_id int not null AUTO_INCREMENT PRIMARY KEY, train_id INT NOT NULL , cs_id INT NOT NULL, FOREIGN KEY (train_id),REFERENCES train (train_id), FOREIGN KEY (cs_id),REFERENCES customer (cs_id));
1064 - You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'REFERENCES train (train_id), FOREIGN KEY (cs_id),REFERENCES customer (cs_id))' at line 1
mysql>  CREATE TABLE reservation ( rvt_id int not null AUTO_INCREMENT PRIMARY KEY, train_id INT NOT NULL , cs_id INT NOT NULL, FOREIGN KEY (train_id), REFERENCES train (train_id), FOREIGN KEY (cs_id), REFERENCES customer (cs_id));
1064 - You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ' REFERENCES train (train_id), FOREIGN KEY (cs_id), REFERENCES customer (cs_id))' at line 1
mysql> CREATE TABLE reservation ( rvt_id int not null AUTO_INCREMENT PRIMARY KEY, train_id INT NOT NULL FOREIGN KEY (train_id), REFERENCES train (train_id));
1064 - You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'FOREIGN KEY (train_id), REFERENCES train (train_id))' at line 1
mysql> CREATE TABLE reservation ( rvt_id int not null AUTO_INCREMENT PRIMARY KEY, train_id INT NOT NULL , FOREIGN KEY (train_id), REFERENCES train (train_id));
1064 - You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ' REFERENCES train (train_id))' at line 1
mysql> CREATE TABLE reservation ( rvt_id int not null AUTO_INCREMENT PRIMARY KEY, train_id INT NOT NULL , FOREIGN KEY (train_id)  REFERENCES train (train_id));
Query OK, 0 rows affected

mysql> DROP TABLE reservation;
Query OK, 0 rows affected

mysql>  CREATE TABLE reservation ( rvt_id int not null AUTO_INCREMENT PRIMARY KEY, train_id INT NOT NULL , cs_id INT NOT NULL, FOREIGN KEY (train_id) REFERENCES train (train_id), FOREIGN KEY (cs_id) REFERENCES customer (cs_id));
Query OK, 0 rows affected

mysql> DESC reservation;
+----------+---------+------+-----+---------+----------------+
| Field    | Type    | Null | Key | Default | Extra          |
+----------+---------+------+-----+---------+----------------+
| rvt_id   | int(11) | NO   | PRI | NULL    | auto_increment |
| train_id | int(11) | NO   | MUL | NULL    |                |
| cs_id    | int(11) | NO   | MUL | NULL    |                |
+----------+---------+------+-----+---------+----------------+
3 rows in set

mysql> INSERT INTO reservation ( rvt_id , train_id  , cs_id) VALUES ( 1, 1,2);
INSERT INTO reservation ( rvt_id , train_id  , cs_id) VALUES ( 1, 2,2);
INSERT INTO reservation ( rvt_id , train_id  , cs_id) VALUES ( 1, 3,1);
INSERT INTO reservation ( rvt_id , train_id  , cs_id) VALUES ( 1, 4,3);
Query OK, 1 row affected

1062 - Duplicate entry '1' for key 'PRIMARY'
1062 - Duplicate entry '1' for key 'PRIMARY'
1062 - Duplicate entry '1' for key 'PRIMARY'
mysql> SELECT *FROM reservation;
+--------+----------+-------+
| rvt_id | train_id | cs_id |
+--------+----------+-------+
|      1 |        1 |     2 |
+--------+----------+-------+
1 row in set

mysql> INSERT INTO reservation ( rvt_id , train_id  , cs_id) VALUES ( 1, 1,2);
INSERT INTO reservation ( rvt_id , train_id  , cs_id) VALUES ( 2, 2,2);
INSERT INTO reservation ( rvt_id , train_id  , cs_id) VALUES ( 3, 3,1);
INSERT INTO reservation ( rvt_id , train_id  , cs_id) VALUES ( 4, 4,3);
1062 - Duplicate entry '1' for key 'PRIMARY'
Query OK, 1 row affected

Query OK, 1 row affected

Query OK, 1 row affected

mysql> SELECT *FROM reservation;
+--------+----------+-------+
| rvt_id | train_id | cs_id |
+--------+----------+-------+
|      1 |        1 |     2 |
|      2 |        2 |     2 |
|      3 |        3 |     1 |
|      4 |        4 |     3 |
+--------+----------+-------+
4 rows in set

mysql> SELECT *FROM reservation;
+--------+----------+-------+
| rvt_id | train_id | cs_id |
+--------+----------+-------+
|      1 |        1 |     2 |
|      2 |        2 |     2 |
|      3 |        3 |     1 |
|      4 |        4 |     3 |
+--------+----------+-------+
4 rows in set

mysql> SELECT *FROM customer;
+-------+---------+--------+
| cs_id | cs_name | GENDER |
+-------+---------+--------+
|     1 | 최진성   | m      |
|     2 | 이경준   | m      |
|     3 | 안요셉   | m      |
|     4 | 김현민   | m      |
+-------+---------+--------+
4 rows in set

mysql> SELECT *FROM train
;
+----------+--------------+------------+----------------+-------------------+
| train_id | train_number | train_time | arrive_station | deparutre_station |
+----------+--------------+------------+----------------+-------------------+
|        1 |          429 | 12:00:00   | 서울역          | 부산역             |
|        2 |          523 | 14:10:00   | 용산역          | 서대전역            |
|        3 |          634 | 09:30:00   | 익산역          | 용산역             |
|        4 |          823 | 14:30:00   | 전주역          | 부산역             |
+----------+--------------+------------+----------------+-------------------+
4 rows in set
mysql> 
