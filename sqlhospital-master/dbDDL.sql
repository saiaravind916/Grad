 
create table patient(
patient_id int(10) NOT NULL AUTO_INCREMENT,
p_name varchar(20),
weight int(2),
age int(2),
sex varchar(7),
address varchar(30),
phno int(11),
disease varchar(15),
doctor_id varchar(10) NOT NULL,
PRIMARY KEY (patient_id)
);

alter table patient AUTO_INCREMENT=1111;

create table doctor(
doctor_id varchar(10) NOT NULL,
d_name varchar(10),
dept varchar(30),
address varchar(30),
phno int(10),
PRIMARY KEY (doctor_id)
);

create table labreport(
lab_no int(5),
report_no int(10) NOT NULL,
patient_id varchar(10),
doctor_id varchar(10),
lab_charge int(5),
category varchar(20),
date date,
PRIMARY KEY (report_no)
);

/*create table room(
room_no int(10) NOT NULL AUTO_INCREMENT,
p_id varchar(10),
p_name varchar(20),
PRIMARY KEY (room_no)
);

alter table room AUTO_INCREMENT=100;*/

create table drug(
p_id int(10),
doctor_id varchar(10),
drug_id int(5),
drug_name varchar(20),
drug_amount int(3),
PRIMARY KEY (drug_id)
);

create table inpatient(
patient_id int(10),
p_name varchar(20),
weight int(3),
age int(2),
sex varchar(7),
address varchar(30),
phno int(10),
disease varchar(20),
doctor_id varchar(10),
date_of_admission date,
date_of_discharge date,
FOREIGN KEY (patient_id) REFERENCES patient(patient_id)
);

create table outpatient(
patient_id int(10),
p_name varchar(20),
weight int(3),
age int(2),
sex varchar(7),
address varchar(30),
phno int(10),
disease varchar(20),
doctor_id varchar(10),
lab_no int(5),
date date,
FOREIGN KEY (patient_id) REFERENCES patient(patient_id)
);

create table mgmt_staff(
staff_id int(10),
s_name varchar(20),
address varchar(30),
phno int(10),
PRIMARY KEY (staff_id)
);

create table bill(
bill_id int(10),
pid int(10),
patient_type varchar(20),
lab_charge int(5),
doctor_charge int(5),
drug_amount int(5),
room_charge int(5),
no_of_days int(3),
total_amount int(5),
PRIMARY KEY (bill_id)
);

