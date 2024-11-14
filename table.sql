CREATE TABLE Patient(
    PID VARCHAR(5),
    Pname VARCHAR(45),
    Address VARCHAR(45),
    Fees INT,
    PRIMARY KEY (PID)
);

INSERT INTO Patient VALUES('P001','Tom','Kampala','40000'),('P002','Agaba','Entebbe','16000');

INSERT INTO Patient VALUES('P003',",'Kampala','20000'),
('P004','Timo',",'40000'),('P005','Simon','Entebbe','60000');

alter TABLE Patient add Doctor_ID VARCHAR(5);

create view view_a as SELECT * FROM Patient where Address = 'Kampala';
create view view_b as SELECT sum(fees) from Patient;
select sum(fees) from Patient where 'Address' = 'Kampala';
CREATE view view_c as SELECT* from Patient where  'Pname' LIKE'_';
alter table Patient MODIFY column Pname  VARCHAR(60);
SELECT*FROM Patient where Pname like 'T%' or Pname like 'A%';
SELECT*FROM Patient where fees BETWEEN 20000 and 60000;
SELECT*FROM Patient where Address in ('Kampala','Entebbe');
select AVG(fees) from Patient;
CREATE TABLE Doctor(Doctor_ID VARCHAR(5),Dname VARCHAR(45),Speciality VARCHAR(45),PRIMARY KEY(Doctor_ID));
ALTER TABLE Patient ADD FOREIGN KEY (Doctor_ID) REFERENCES doctor(Doctor_ID);




