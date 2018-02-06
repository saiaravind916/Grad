/***1.How many people were infected by the disease cancer?***/

SELECT COUNT(patient_id) as NUM_OF_PATIENTS
FROM patient
WHERE disease='cancer'
GROUP BY patient_id;

/***2.Retrieve the ID's of the patients who were diagnosed by atleast 2 doctors.***/

SELECT patient_id, COUNT(doctor_id) AS num_of_doctors
FROM patient
GROUP BY doctor_id
HAVING COUNT(doctor_id)>=2;

/***3.Arrange the people in ascending order between the ages 40 and 50 according to their diseases.***/

SELECT p_name, disease
FROM patient
WHERE age BETWEEN 40 AND 50
ORDER BY age DESC;

/***4.How many patients are using the drug named "Advil"?***/

SELECT COUNT(patient_id), drug_name
FROM patient
INNER JOIN drug
ON patient.patient_id=drug.p_id
WHERE drug_name='Advil';

/***5.The below selected patient(Katie) has been in the hospital for how long?***/

SELECT p_name,no_of_days
FROM patient
INNER JOIN bill
ON patient.patient_id=bill.pid
WHERE p_name='Katie';


/***6.What is the id and name of the doctor who diagnosed the patient *** and prescribed the drug *** ?***/


select doctor_id,d_name
FROM doctor
where doctor_id IN
	(select doctor_id
from patient
where patient.doctor_id = doctor.doctor_id and p_name='john')

OR

doctor_id IN 
(select doctor_id 
from drug
where doctor.doctor_id = drug.doctor_id and drug_name = 'Advil'); 

/***EXPECTED OUTPUT
+-----------+---------+
| doctor_id | d_name  |
+-----------+---------+
| D1234     | Richard |
+-----------+---------+***/

/***7. retrieve the name and id of the patient who took a test on 05/01/2016 or whose bill id is 12987.***/

select patient_id,p_name
from patient
where patient_id IN
(select patientid
from labreport
where patient.patient_id=labreport.patientid
and date='2016/05/01')
OR
patient_id in
(select pid
from bill
where patient.patient_id=bill.pid
and bill_id='12987');

/***EXPECTED OUTPUT
+------------+--------+
| patient_id | p_name |
+------------+--------+
|       1112 | Tom    |
|       1113 | Katie  |
|       1114 | Amie   |
+------------+--------+***/

/***8. Retrieve the name and address of the patient whose has the same address as that of the doctor.***/
select p_name, address
FRom patient
where exists
(select *
from doctor
where patient.address=doctor.address);

/***EXPECTED OUTPUT
+---------+------------+
| p_name  | address    |
+---------+------------+
| Tom     | Plano      |
| Amie    | Richardson |
| Tyson   | Fortworth  |
| Adam    | Southlake  |
| Ben     | Plano      |
| Grace   | Southlake  |
| Jessica | Irving     |
+---------+------------+***/

/***9.Retrieve the category of the test taken by the patient named Katie.***/
select category 
from labreport 
where patientid in 
(select patient_id 
from patient 
where labreport.patientid=patient.patient_id and p_name='Katie');

/***EXPECTED OUTPUT
+--------------+
| category     |
+--------------+
| Thyroid scan |
+--------------+***/

/***10.Retrieve the name of the patient who was admitted on date 01/01/2016.***/
SELECT p_name
FROM inpatient
WHERE date_of_admission='2016/01/01';

/***EXPECTED OUTPUT
+--------+
| p_name |
+--------+
| Adam   |
| Ben    |
+--------+***/