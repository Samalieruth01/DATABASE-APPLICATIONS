Create DATABASE DIT;
use DIT;
show DATABASEs;
Create table Patient(PID VARCHAR(20),Pname VARCHAR(255),Address VARCHAR(50),Fees INT);
DESCRIBE patient;
INSERT INTO patient VALUES('P001','Tom','Kampala',40000),('P002','Agaba','Entebbe',16000);
SELECT * FROM patient;
INSERT INTO patient VALUES('P003','null','Kampala',20000),('P004','Timo','Null',40000),('P005','Simon','Entebbe',60000);
select * FROM patient;
ALTER TABLE patient ADD Doctor_ID VARCHAR(20);
DESCRIBE patient;
CREATE VIEW view_a as SELECT * FROM patient where Address = 'Kampala';
select * FROM view_a;
CREATE VIEW view_b as SELECT Address, SUM(Fees) AS Total_Fees FROM patient GROUP BY Address;
select * FROM view_b;
CREATE VIEW view_c AS SELECT * FROM patient where LENGTH(Pname)=4;
SELECT * FROM view_c;
ALTER TABLE patient MODIFY Pname VARCHAR(60);
SELECT * FROM patient;
DESCRIBE patient;
SELECT * FROM patient WHERE `Address`='Kampala' AND Fees > 15000;
SELECT * FROM patient WHERE Fees >= 20000;
SELECT * FROM patient WHERE `Address`IN ('Kampala','Entebbe');
SELECT COUNT(*) AS total_patients, AVG(fees) AS Average_fees FROM patient;
CREATE TABLE Doctor (
    Doctor_ID VARCHAR(10) PRIMARY KEY,
    Doctor_Name VARCHAR(50) NOT NULL
);
ALTER TABLE patient ADD CONSTRAINT fk_Doctor FOREIGN KEY (Doctor_ID) REFERENCES doctor(Doctor_ID);
DESCRIBE patient;
DESCRIBE Doctor;
ALTER TABLE doctor RENAME TO Doc;
DESCRIBE Doc;
SELECT DISTINCT Address FROM patient;
