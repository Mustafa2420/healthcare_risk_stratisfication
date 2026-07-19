create database Healthcare;
use Healthcare;

create table Diagnoses(
DiagnosisID int primary key,
DiagnosisNAME varchar(255)
);

create table Outcomes(
OutcomeID int primary key,
OutcomeName varchar(255)
);

create table Patients(
PatientID int primary key,
NAME varchar(255),
Age int,
Gender char(1),
DiagnosisID int,
AdmissionDate Date,
DischargeDate date,
OutcomeID int,
TreatmentCost decimal(10,2),
foreign key (DiagnosisID) references Diagnoses(DiagnosisID),
foreign key(OutcomeID) references Outcomes(OutcomeID)
);

create table Labs(
LabID int primary key,
PatientID int,
TestName varchar(255),
Result decimal(10,2),
Normalrange varchar(255),
foreign key(patientID) references Patients(PatientID)
);


select * from patients;
select * from outcomes;
select * from labs;
select * from diagnoses;


-- Retreive Detailed Patient lab History
select p.patientID,p.NAME,d.DiagnosisNAME,o.OutcomeName,l.TestName,l.Result,l.Normalrange
from patients as p
join diagnoses as d
on p.DiagnosisID=d.DiagnosisID
join outcomes as o 
on o.OutcomeID=p.OutcomeID
join labs as l
on p.PatientID=l.PatientID
order by p.PatientID,l.TestName
;

-- Average Lab Results by Diagnosis
select diagnosisNAME,l.TestName,avg(Result) from labs as l
join Patients as p
on l.PatientID=p.PatientID
join Diagnoses as d
on d.DiagnosisID=p.DiagnosisID
group by diagnosisNAME,TestName;


-- Count of Abnormal lab results
SELECT 
    p.PatientID, p.NAME, COUNT(*) AS Abnormal_count
FROM
    patients AS p
        JOIN
    labs AS l ON l.PatientID = p.PatientID
WHERE
    (TestName = 'BloodSugar'
        AND l.result > 120)
        OR (TestName = 'Cholestrol'
        AND l.result > 200)
        OR (TestName = 'Haemoglobin'
        AND l.result < 13)
GROUP BY p.PatientID , p.NAME
ORDER BY Abnormal_count desc;

select * from patients;
select * from outcomes;
select * from labs;
select * from diagnoses;

-- Diagnosis with highest treatment cost

SELECT 
    diagnosisNAME, SUM(TreatmentCost) AS totalCost
FROM
    patients AS p
        JOIN
    diagnoses AS d ON p.DiagnosisID = d.DiagnosisID
GROUP BY diagnosisNAME
ORDER BY totalCost DESC;

-- patients at risk by age and gender

select p.patientID,p.name,p.age,DiagnosisName,OutcomeName from patients as p
join outcomes as o
on p.OutcomeID=o.OutcomeID
join diagnoses as d
on p.DiagnosisID=d.DiagnosisID
where p.age>65 and OutcomeName!="Recovered";


-- Lab trendsover time for a specific patient

SELECT
    l.TestName,
    l.Result,
    p.AdmissionDate
FROM patients AS p
JOIN labs AS l
ON l.PatientID = p.PatientID
WHERE p.PatientID in (2,3,4,5,6,8,10)
ORDER BY p.AdmissionDate;

-- Distribution of outcomes by dignosis

select d.DiagnosisNAME,o.OutcomeName,count(*) as Outocme_count
from patients as p
join diagnoses as d
on p.DiagnosisID=d.DiagnosisID
join outcomes as o
on p.outcomeID=o.outcomeID
group by d.diagnosisNAME,o.OutcomeName
order by d.diagnosisNAME,o.OutcomeName desc;

