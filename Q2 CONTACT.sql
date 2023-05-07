CREATE TABLE Contact_Table(
id int PRIMARY KEY NOT NULL,
Email varchar(50) NOT NULL,
Fname varchar(30) NOT NULL,
Lname varchar(30) NOT NULL,
Company varchar(30) NOT NULL,
Active_Flag int NOT NULL,
Opt_Out int NOT NULL);


SELECT * FROM Contact_Table;

INSERT INTO Contact_Table VALUES(123,"a@a.com","Kian","Seth","ABC",1,1),
(133,"b@a.com","Neha","Seth","ABC",1,0),
(234,"c@c.com","Puru","Malik","CDF",0,0),
(342,"d@d.com","Sid","Maan","TEG",1,0);

-- QUESTIONS
-- 1.Select all columns from the Contact_Table where Active_Flag is 1
    
     SELECT * FROM Contact_Table WHERE Active_Flag=1;
     

-- 2.Deactivate Contacts who are Opted_Out

	 DELETE FROM Contact_Table WHERE Opt_Out=1;

-- 3. Delete all the contacts who have the COMPANY NAME as "ABC"

	DELETE FROM Contact_Table WHERE  Company="ABC";
    
-- 4. Insert  a new row with ID as 658,NAME as "mili",email as "mili@gmail.com", company as  "DGH",active flag as 1, opt_out flag as 1
-- in table we have fname and lname but in question we have only name. so i have consider it as lname

	INSERT INTO Contact_Table VALUES(658,"mili@gmail.com.com","","mili","DGH",1,1);

-- 5. PULL out the UNIQUE values of the company column

	SELECT DISTINCT(Company) FROM Contact_Table;

-- 6.UPDATE name "mili" to "niti"
    
     UPDATE Contact_Table SET Lname="niti" WHERE Lname="mili";
     
     

	