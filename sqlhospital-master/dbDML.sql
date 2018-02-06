

insert into patient(p_name,weight,age,sex,address,phno,disease,doctor_id) values('John', 90, 25, 'M', 'Dallas', 999999999, 'Cancer', 'D1234');

insert into patient(p_name,weight,age,sex,address,phno,disease,doctor_id) values('Tom', 120, 47, 'M', 'Plano', 214547896, 'Alzheimers', 'D1222');

insert into patient(p_name,weight,age,sex,address,phno,disease,doctor_id) values('Katie', 105, 20, 'F', 'Bedford', 678252452, 'Migraine', 'D5646');

insert into patient(p_name,weight,age,sex,address,phno,disease,doctor_id) values('Amie', 198, 32, 'F', 'Richardson', 785694125, 'Kidney failure', 'D5687');

insert into patient(p_name,weight,age,sex,address,phno,disease,doctor_id) values('Tyson', 165, 33, 'M', 'Fortworth', 256894569, 'Heart stroke', 'D4598');

insert into patient(p_name,weight,age,sex,address,phno,disease,doctor_id) values('Adam', 168, 29, 'M', 'Southlake', 259786450, 'Allergy', 'D5688');

insert into patient(p_name,weight,age,sex,address,phno,disease,doctor_id) values('Ben', 102, 16, 'M', 'Plano', 654986325, 'Alzheimers', 'D5646');

insert into patient(p_name,weight,age,sex,address,phno,disease,doctor_id) values('Grace', 95, 30, 'F', 'Southlake', 785631485, 'Allergy', 'D5688');

insert into patient(p_name,weight,age,sex,address,phno,disease,doctor_id) values('Jessica', 100, 28, 'F', 'Irving', 796854318, 'Allergy', 'D5987');

insert into patient(p_name,weight,age,sex,address,phno,disease,doctor_id) values('Joseph', 126, 27, 'M', 'Denton', 785631485, 'Casual checkup', 'D5688');

insert into patient(p_name,weight,age,sex,address,phno,disease,doctor_id) values('Linda', 90, 35, 'F', 'Garland', 785631485, 'Sinus', 'D5688');

insert into patient(p_name,weight,age,sex,address,phno,disease,doctor_id) values('Daniel', 167, 53, 'M', 'Addison', 785631485, 'Hypothyroid', 'D5688');

insert into patient(p_name,weight,age,sex,address,phno,disease,doctor_id) values('Sarah', 143, 22, 'F', 'Carrollton', 785631485, 'Fracture', 'D5688');

insert into patient(p_name,weight,age,sex,address,phno,disease,doctor_id) values('Paul', 112, 60, 'M', 'Flower Mound', 785631485, 'Abdominal pain', 'D5688');



insert into doctor values('D7896', 'James', 'ENT', 'southlake', 999999999);

insert into doctor values('D5687', 'Robert', 'Nephrology', 'southlake', 888888888);

insert into doctor values('D5978', 'Michael', 'Radiology', 'dallas', 214456789);

insert into doctor values('D5646', 'Charles', 'Neurology', 'fortworth', 546879587);

insert into doctor values('D1234', 'Richard', 'oncology', 'southlake', 548785968);

insert into doctor values('D5688', 'Mary', 'dermatology', 'plano', 789654123);

insert into doctor values('D1222', 'Jennifer', 'neurology', 'irving', 456123789);

insert into doctor values('D5987', 'Laura', 'Dermatology', 'grapevine', 45216398);

insert into doctor values('D4589', 'Michelle', 'endocrinology', 'southlake', 456782194);

insert into doctor values('D4598', 'Helen', 'cardiology', 'richardson', 452178987);


insert into labreport values(123, 154, 1111, 'D1234', 200, 'CT Scan', '2016/05/01');

insert into labreport values(151, 215, 1115, 'D7869', 450, 'MRI', '2016/12/21');

insert into labreport values(257, 786, 1119, 'D5646', 100, 'General checkup', '2016/04/05');

insert into labreport values(478, 444, 1112, 'D1234', 2100, 'Angiography', '2016/05/01');

insert into labreport values(355, 187, 1113, 'D5978', 500, 'Thyroid scan', '2016/05/01');

insert into labreport values(213, 247, 1111, 'D5688', 290, 'X-Ray', '2016/05/01');

insert into labreport values(313, 289, 1112, 'D5646', 450, 'Ultrasound', '2016/05/01');

insert into labreport values(878, 987, 1114, 'D4598', 256, 'CTscan', '2016/05/01');


/*insert into room(p_id, p_name) values(1111, 'John');

insert into room(p_id, p_name) values(1112, 'John');  

*/

insert into drug values(1111, 'D1234', 1985, 'Advil', 10);

insert into drug values(1115, 'D5646', 2004, 'Tylenol', 9.95);

insert into drug values(1117, 'D7896', 1796, 'Dayquil', 6);

insert into drug values(1112, 'D5688', 4569, 'Benadryl', 8);

insert into drug values(1117, 'D1222', 9832, 'Motrin', 9);

insert into drug values(1117, 'D4589', 7855, 'Aspirin', 15);

insert into drug values(1116, 'D4598', 7777, 'Aleve', 6);

insert into drug values(1118, 'D1234', 1791, 'Nyquil', 6);


insert into inpatient values(1111, 'John', 90, 25, 'M', 'Dallas', 999999999, 'Cancer', 'D1234', '2016/01/02', '2016/02/02');

insert into inpatient values(1112, 'Tom', 120, 47, 'M', 'Plano', 214547896, 'Alzheimers', 'D1222', '2016/03/15', '2016/03/30');

insert into inpatient values(1113, 'Katie', 105, 20, 'F', 'Bedford', 678252452, 'Migraine', 'D5646', '2016/01/30', '2016/03/30');

insert into inpatient values(1114, 'Amie', 198, 32, 'F', 'Richardson', 785694125, 'Kidney failure', 'D5687', '2016/04/15', '2016/06/24');

insert into inpatient values(1115, 'Tyson', 165, 33, 'M', 'Fortworth', 256894569, 'Heart stroke', 'D4598', '2016/05/15', '2016/07/30');

insert into inpatient values(1116, 'Adam', 168, 29, 'M', 'Southlake', 259786450, 'Cancer', 'D1234', '2016/01/01', '2016/03/30');

insert into inpatient values(1117, 'Ben', 102, 16, 'M', 'Plano', 654986325, 'Alzheimers', 'D5646', '2016/01/01', '2016/07/24');


insert into outpatient values(1118, 'Grace', 95, 30, 'F', 'Southlake', 785631485, 'Allergy', 'D5688', 123, '2016/02/28');

insert into outpatient values(1119, 'Jessica', 100, 28, 'F', 'Irving', 796854318, 'Allergy', 'D5987', 151, '2016/01/08');

insert into outpatient values(1120, 'Joseph', 126, 27, 'M', 'Denton', 785631485, 'Casual checkup', 'D5688', 257, '2016/07/24');

insert into outpatient values(1121, 'Linda', 90, 35, 'F', 'Garland', 785631485, 'Sinus', 'D5688', 151, '2016/05/19');

insert into outpatient values(1122, 'Daniel', 167, 53, 'M', 'Addison', 785631485, 'Hypothyroid', 'D5688', 355, '2016/03/16');

insert into outpatient values(1123, 'Sarah', 143, 22, 'F', 'Carrollton', 785631485, 'Fracture', 'D5688', 213, '2016/04/01');

insert into outpatient values(1124, 'Paul', 112, 60, 'M', 'Flower Mound', 785631485, 'Abdominal pain', 'D5688', 313, '2016/06/17');


insert into mgmt_staff values(12345, 'George', 'Addison', 2142859678);

insert into mgmt_staff values(13215, 'Donald', 'Irving', 687542147);

insert into mgmt_staff values(32189, 'Steven', 'Addison', 214987653);

insert into mgmt_staff values(89654, 'Matthew', 'Dallas', 786542019);

insert into mgmt_staff values(65478, 'Kevin', 'Frisco', 321987654);

insert into mgmt_staff values(69852, 'Jason', 'Plano', 321644987);

insert into mgmt_staff values(32147, 'Eric', 'Coppell', 12345678);

insert into mgmt_staff values(99999, 'Morgan', 'Irving', 852741963);


insert into bill values(12348, 1116, 'Inpatient', 500, 1500, 100, 2945, 88, 5045);

insert into bill values(12654, 1111, 'Inpatient', 200, 1350, 600, 1154, 30, 3304);

insert into bill values(12789, 1119, 'Outpatient', 100, 900, 250, 0, 0, 1250);

insert into bill values(12987, 1112, 'Inpatient', 150, 1700, 150, 945, 15, 2945);

insert into bill values(13546, 1122, 'Outpatient', 125, 860, 290, 0, 0,1275 );

insert into bill values(13987, 1120, 'Outpatient', 265, 600, 300, 0, 0, 1165);

insert into bill values(14569, 1113, 'Inpatient', 105, 1560, 900, 1548, 58, 4113);

insert into bill values(14698, 1114, 'Inpatient', 200, 1200, 650, 1796, 69, 3846);

insert into bill values(15555, 1124, 'Outpatient', 400, 1300, 120, 0, 0, 1820);

