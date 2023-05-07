-- creating database schema for the online consultation and theraphy website.(contains Doctor Table,Appointments Table,Patient Table,Reviews Table)
-- creating databse

CREATE DATABASE HOSPITAL;

-- creating DOCTORS TABLE with atttributes id,name,specialization etc
CREATE TABLE Doctors_Table(
Doctor_id int PRIMARY KEY NOT NULL,
Doctor_Name varchar(30) NOT NULL,
Doctor_Specialization varchar(30) NOT NULL);

-- displaying created empty table
SELECT * FROM Doctors_Table;
-- Inserting Data into the table
INSERT INTO Doctors_Table VALUES(101,"RAMESH","PHYSCODYNAMIC THERAPHY"),
(102,"SURESH","INTERPERSONAL THERAPHY"),
(103,"ANSIH","SUPPORTIVE THERAPHY"),
(104,"NITHIN","DIALECTICAL BEHAVIOUR THERAPHY"),
(105,"RISHI","HUMANISTIC THERAPHY");



-- creating PATIENTS TABLE with attributes id,name,age,gender
CREATE TABLE Patients_Table(
Patient_id int PRIMARY KEY NOT NULL,
Patient_Name varchar(30) NOT NULL,
patient_Age int NOT NULL,
Patient_Gender varchar(30) NOT NULL);

-- displaying created empty table
SELECT * FROM Patients_Table;

-- Inserting Data into the table
INSERT INTO Patients_Table VALUES(201,"KISHAN",21,"MALE"),(202,"SEEMA",23,"FEMALE"),
(203,"MOHAN",32,"MALE"),(204,"RAJU",16,"MALE"),(205,"KAMAL",20,"MALE");


-- creating  APPOINTMENTS TABLE by using Doctor_Table,Patient_Table with their id,date_time 
-- providing a connection among the tables using FOREIGN KEY
CREATE TABLE Appointment_Table (
Appoint_id int NOT NULL,
Patient_id int NOT NULL,
Doctor_id int NOT NULL,
Date_Time DATETIME NOT NULL,
PRIMARY KEY (appoint_id),
FOREIGN KEY(Patient_id) REFERENCES Patients_Table(Patient_id),
FOREIGN KEY(Doctor_id) REFERENCES Doctors_Table(Doctor_id));


-- displaying created empty table
SELECT * FROM Appointment_Table;

-- Inserting Data into the table
INSERT INTO Appointment_Table VALUES(1,201,103,"2030-05-02 11:30:20"),
(2,203,102,"2030-05-03 12:30:20"),
(3,203,101,"2030-05-03 9:30:20"),
(4,205,105,"2030-05-02 11:30:20"),
(5,205,105,"2030-05-05 8:12:40");



-- creating REVIEWS TABLE using Patient_id and Review attributes
CREATE TABLE Review_Table (
Patient_id int NOT NULL,
FOREIGN KEY(Patient_id) REFERENCES Patients_Table(Patient_id),
Feedback varchar(30));

-- displaying created empty table
SELECT * FROM Review_Table;

-- Inserting Data into the table
INSERT INTO Review_Table values(201,"Good"),(203,"Not Satisfied"),(204,"Satisfied"),(202,"Good");


									


-- QUERY BASED ON ABOVE Tables
-- 1.selecting patient_id,Patient_Name,Doctors data and Feedback from the tables where Appoint_id="3"
     SELECT p.Patient_id,p.Patient_Name,d.*,R.Feedback FROM Patients_Table AS p,Doctors_Table AS d,Review_Table AS r,Appointment_Table AS a 
			WHERE a.Appoint_id=3 AND a.Patient_id=p.Patient_id AND a.Doctor_id=d.Doctor_id AND r.Patient_id=P.Patient_id;
            
-- OUTPUT :
--     Patient_id		Patient_Name	Doctor_id		Doctor_Name		Doctor_Specialization		 Feedback 
--       203				MOHAN			101				RAMESH		PHYSCODYNAMIC THERAPHY		Not Satisfied
















