create table salesman(salesman_id int primary key,
name char(30),
city char(30),
commission float)

insert into salesman values(5001,'James Hoog','New York',0.15),
(5002,'Nail Knite','Paris',0.13),(5005,'Pit Alex','London',0.11),
(5006,'Mc Lyon','Paris',0.14),(5007,'Paul Adam','Rome',0.13),(5003,'Lauson Hen','San Jose',0.12);
--1
select * from salesman
--2
SELECT 'This is SQL Exercise, Practice and Solution';
--3
SELECT 5, 10, 15;
--4
SELECT 10 + 15;
--5
SELECT 10 + 15 - 5 * 2;
--6
SELECT name, commission FROM salesman;
CREATE TABLE orders
(
  ord_no INTEGER primary key,
  purch_amt INTEGER,
  ord_date datetime,
  customer_id INTEGER,
  salesman_id INTEGER
);


INSERT INTO orders VALUES (70001,150.5,2012-10-05,3005,5002),(70009,270.65 ,2012-09-10,3001,5005),
(70002,65.26,2012-10-05,3002,5001),(70004,110.5,2012-08-17,3009,5003),
(70007,948.5,2012-07-27,3005,5002),(70005,2400.6,2012-07-27,3007,5001),
(70008,5760,2012-09-10,3002,5001),(70010,1983.43,2012-10-10,3004,5006),
(70003,2480.4,2012-10-10,3009,5003),(70012,250.45,2012-06-27,3008,5002),
(70011,75.29,2012-08-17,3003,5007),(70013,3045.6,2012-04-25,3002,5001);
select* from orders;
--7
SELECT ord_date, salesman_id, ord_no, purch_amt FROM orders;
--8
SELECT ord_date, salesman_id, ord_no, purch_amt FROM orders;
--9
SELECT name,city FROM salesman WHERE city='Paris';
CREATE TABLE customer
(
  customer_id INTEGER,
  cust_name varchar(20),
  city varchar(20),
  grade INTEGER,
  salesman_id INTEGER
);
drop table customer;
INSERT INTO customer VALUES (3002,'Nick Rimando','New York',100,5001),
 (3007,'Brad Davis','New York',200,5001),
(3005,'Graham Zusi','California',200,5002),
 (3008,'Julian Green','London',300,5002),
 (3004,'Fabian Johnson','Paris',300,5006),
 (3009,'Geoff Cameron','Berlin',100,5003),
 (3003,'Jozy Altidor','Moscow',200,5007),
 (3001,'Brad Guzan','London',0,5005);
 select * from customer;
 --10
 SELECT *FROM customer WHERE grade=200;
 --11
 SELECT ord_no, ord_date, purch_amt FROM orders WHERE salesman_id=5001;
 --Nobel prize
CREATE TABLE nobel_win (
  YEARs int,
  SUBJECTs char(50),
  WINNER char(50),
  COUNTRY char(50),
  CATEGORY char(50),
);
drop table nobel_win;
 INSERT INTO nobel_win VALUES
(1970,'Physics','Louis Neel','France','Scientist'),
(1970,'Chemistry','Luis Federico Leloir','France','Scientist'),
(1970,'Physiology','Ulf von Euler','Sweden','Scientist'),
(1970,'Physiology','Bernard Katz','Germany','Scientist'),
(1970,'Literature','Aleksandr Solzhenitsyn','Russia','Linguist'),
(1970,'Economics','Paul Samuelson','USA','Economist'),
(1970,'Physiology','Julius Axelrod','USA','Scientist'),
(1971,'Physics','Dennis Gabor','Hungary','Scientist'),
(1971,'Chemistry','Gerhard Herzberg','Germany','Scientist'),
(1971,'Peace','Willy Brandt','Germany','Chancellor'),
(1971,'Literature','Pablo Neruda','Chile','Linguist'),
(1971,'Economics','Simon Kuznets','Russia','Economist'),
(1978,'Peace','Anwar al-Sadat','Egypt','President'),
(1978,'Peace','Menachem Begin','Israel','Prime Minister'),
(1987,'Chemistry','Donald J. Cram','USA','Scientist'),
(1987,'Chemistry','Jean-Marie Lehn','France','Scientist'),
(1987,'Physiology','Susumu Tonegawa','Japan','Scientist'),
(1994,'Economics','Reinhard Selten','Germany','Economist'),
(1994,'Peace','Yitzhak Rabin','Israel','Prime Minister'),
(1987,'Physics','Johannes Georg Bednorz','Germany','Scientist'),
(1987,'Literature','Joseph Brodsky','Russia','Linguist'),
(1987,'Economics','Robert Solow','USA','Economist'),
(1994,'Literature','Kenzaburo Oe','Japan','Linguist');
select * from nobel_win;
--12
SELECT * FROM nobel_win WHERE YEARs=1970; 
--13
SELECT WINNER FROM nobel_win WHERE SUBJECTs='Literature' AND YEARs=1971;
--14
SELECT YEARs, SUBJECTs FROM nobel_win WHERE WINNER = 'Dennis Gabor';
--15
 SELECT winner FROM nobel_win WHERE YEARs>=1950 AND subjects='Physics';
--16
SELECT years, subjects, winner, country FROM nobel_win WHERE subjects = 'Chemistry' AND years>=1965 AND years<=1975;
--17
SELECT * FROM nobel_win WHERE years >1972 AND winner IN ('Menachem Begin','Yitzhak Rabin');
--18
SELECT * FROM nobel_win WHERE winner LIKE 'Louis %';
--19
SELECT * FROM nobel_win  WHERE (subjects ='Physics' AND years=1970) UNION (SELECT * FROM nobel_win  WHERE (subjects ='Economics' AND years=1971))
--20
SELECT * FROM nobel_win WHERE years=1970 AND subjects NOT IN('Physiology','Economics');
--21
SELECT * FROM nobel_win WHERE (subjects ='Physiology' AND years<1971) UNION (SELECT * FROM nobel_win WHERE (subjects ='Peace' AND years>=1974));
--22
SELECT * FROM nobel_win WHERE winner='Johannes Georg Bednorz';
--23
SELECT * FROM nobel_win WHERE subjects NOT LIKE 'P%' ORDER BY years DESC, winner;
--24
 SELECT * FROM nobel_win WHERE years=1970 ORDER BY  CASE WHEN subjects IN ('Economics','Chemistry') THEN 1 ELSE 0 END ASC, subjects, winner;


CREATE TABLE item_master (
  PRO_ID  integer primary key,
  PRO_NAME char(50),
  PRO_PRICE integer,
  PRO_COM integer
);
INSERT INTO item_master VALUES 
(101,'Mother Board',3200,15),
(102,'Key Board',450,16),
(103,'ZIP drive',250,14),
(104,'Speaker',550,16),
(105,'Monitor',5000,11),
(106,'DVD drive',900,12),
(107,'CD drive',800,12),
(108,'Printer',2600,13),
(109,'Refill cartridge',350,13),
(110,'Mouse',250,12);

 select*from item_master; 
--25
SELECT * FROM item_master WHERE pro_price BETWEEN 200 AND 600;
--26
SELECT AVG(pro_price) FROM item_master WHERE pro_com=16;
--27
SELECT pro_name as "Item Name", pro_price AS "Price in Rs." FROM item_master;
--28
SELECT pro_name, pro_price FROM item_master WHERE pro_price >= 250 ORDER BY pro_price DESC, pro_name;
--29
SELECT AVG(pro_price), pro_com FROM item_master GROUP BY pro_com;
--30
SELECT pro_name, pro_price FROM item_master WHERE pro_price = (SELECT MIN(pro_price) FROM item_master);


CREATE TABLE emp_details (
  EMP_IDNO integer,
  EMP_FNAME char(50),
  EMP_LNAME char(50),
  EMP_DEPT integer
);
INSERT INTO emp_details VALUES 
(127323,'Michale','Robbin',57),
(526689,'Carlos','Snares',63),
(843795,'Enric','Dosio',57),
(328717,'Jhon','Snares',63),
(444527,'Joseph','Dosni',47),
(659831,'Zanifer','Emily',47),
(847674,'Kuleswar','Sitaraman',57),
(748681,'Henrey','Gabriel',47),
(555935,'Alex','Manuel',57),
(539569,'George','Mardy',27),
(733843,'Mario','Saule',63),
(631548,'Alan','Snappy',27),
(839139,'Maria','Foster',57);

--31
SELECT DISTINCT emp_lname FROM emp_details;
--32
SELECT * FROM emp_details WHERE emp_lname= 'Snares';
--33
SELECT * FROM emp_details WHERE emp_dept= 57;