 
-- Lost Doctor Statistics 
 
 SELECT top 10  DoctorName,count(PatientID)as patient FROM Invoice 
where CreatedDate < DATEADD(mm,DATEDIFF(mm,0,GETDATE()),0)  group by DoctorName

-- New Doctors Activated

SELECT   DoctorName,count(PatientID)as patient FROM Invoice
WHERE DATEPART(month, CreatedDate) = DATEPART(month, DATEADD(month, 0, getdate()))
AND DATEPART(year, CreatedDate) = DATEPART(year, DATEADD(month, 0, getdate())) group by DoctorName





