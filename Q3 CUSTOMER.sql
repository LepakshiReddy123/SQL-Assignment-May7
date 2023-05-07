-- CREATING SALESMAN TABLE
CREATE TABLE salesman(salesman_id int NOT NULL,name varchar(30) NOT NULL,
city varchar(30) NOT NULL,commission float NOT NULL);


-- INSERTING DATA INTO THE TABLE
INSERT INTO salesman VALUES(5001,"James Hong","New York",0.15),
(5002,"Nail Knite","Paris",0.13),(5005,"Pit Alex","London",0.11),
(5006,"Mc Lyon","Paris",0.14),(5007,"Paul Adam","Rome",0.13),
(5003,"Lauson Hen","San Jose",0.12);

SELECT * FROM salesman;

-- CREATING CUSTOMER TABLE

CREATE TABLE customer(
customer_id int  NOT  NULL,
cust_name varchar(30) NOT NULL,
city varchar(30) NOT NULL,
grade int,
salesman_id int NOT NULL,
PRIMARY KEY(customer_id),
FOREIGN KEY(salesman_id) REFERENCES salesman (salesman_id) );

-- INSERTING DATA INTO THE TABLE

INSERT INTO customer VALUES(3002,"Nick Rimando","New York",100,5001),
(3007,"Brad Davis","New York",200,5001),(3005,"Graham Zusi","California",200,5002),
(3008,"Julian Green","London",300,5002),(3004,"Fabian Johnson","Paris",300,5006),
(3009,"Geoff Cameron","Berlin",100,5003),(3003,"Jozy Altidor","Moscow",200,5007);
INSERT INTO customer(customer_id,cust_name,city,salesman_id) VALUES(3001,"Brad Guzan","London",5005);
SELECT * FROM customer;



-- QUESTION :Write a sql query to find those customers with a grade less than 100.
-- it should return cust_name,customer city,grade,salesman(HERE DID NOT MENTIONED WHICH ATTRIBUTE WE NEED CONSIDER.SO I CONSIDER SALESMAN NAME),and salesman city.
-- the result should be ordered by ascending customer_id

-- NOTE: here both tables contains ATTRIBUTE same name CITY for our undersatnding purpose we use them by ALIASING the table NAMES.
-- QUERY :
     SELECT c.cust_name,c.city,c.grade,s.name,s.city FROM customer AS c,salesman AS s WHERE c.grade < 100 AND s.salesman_id = c.salesman_id ORDER BY customer_id ASC;

-- HERE WE DONT HAVE GRADE LESS THAN 100




   