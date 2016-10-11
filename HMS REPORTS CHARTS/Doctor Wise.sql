CREATE PROCEDURE Sp_Doctorwise   --  Sp_Doctorwise '2016-01-01' , '2016-07-13','MARK YONG LEONG'
(
	 @Fromdate VARCHAR(max)  
	,@Todate VARCHAR(max) 
	,@Doctorname varchar(max)
	)
AS
BEGIN
	DECLARE @listOfID TABLE (
		 Maleval BIGINT
		,Femaleval BIGINT		
		,Categoriesname VARCHAR(20)
		)

	
	BEGIN
	
		INSERT INTO @listOfID (
			 Maleval
			,Femaleval			
		    ,Categoriesname 
			)
		VALUES (
			(
				select count(*) from registration r inner join patient p on r.PatientID=p.PatientID inner join doctors d
				on r.DoctorID=d.DoctorID
                Where r.PatientID IN (SELECT r.PatientID FROM registration r GROUP BY r.PatientID HAVING COUNT(r.PatientID) = 1)
                and p.Sex = 'Male' and IsPanel != 0 
				And (r.CreatedDate BETWEEN @Fromdate AND @Todate) and d.FirstName + ' ' + d.MiddleName + ' ' + d.LastName = @Doctorname					
				)					
			,(select count(*) from registration r inner join patient p on r.PatientID=p.PatientID inner join doctors d
				on r.DoctorID=d.DoctorID
                Where r.PatientID IN (SELECT r.PatientID FROM registration r GROUP BY r.PatientID HAVING COUNT(r.PatientID) = 1)
                and p.Sex = 'Female' and IsPanel != 0 
				And (r.CreatedDate BETWEEN @Fromdate AND @Todate) and d.FirstName + ' ' + d.MiddleName + ' ' + d.LastName = @Doctorname	)	
			
			,'Panel' 
			)
			

		INSERT INTO @listOfID (
			 Maleval
			,Femaleval			
		    ,Categoriesname 
			)
		VALUES (
			(
				select count(*) from registration r inner join patient p on r.PatientID=p.PatientID inner join doctors d
				on r.DoctorID=d.DoctorID
                Where r.PatientID IN (SELECT r.PatientID FROM registration r GROUP BY r.PatientID HAVING COUNT(r.PatientID) = 1)
                and p.Sex = 'Male' and IsPanel = 0 
				And (r.CreatedDate BETWEEN @Fromdate AND @Todate)  and d.FirstName + ' ' + d.MiddleName + ' ' + d.LastName = @Doctorname						
				)					
			,(
			  select count(*) from registration r inner join patient p on r.PatientID=p.PatientID inner join doctors d
				on r.DoctorID=d.DoctorID
                Where r.PatientID IN (SELECT r.PatientID FROM registration r GROUP BY r.PatientID HAVING COUNT(r.PatientID) = 1)
                and p.Sex = 'Female' and IsPanel = 0 
				And (r.CreatedDate BETWEEN @Fromdate AND @Todate) and  d.FirstName + ' ' + d.MiddleName + ' ' + d.LastName = @Doctorname)	
			
			,'General' 
			)

	
		SELECT *
		FROM @listOfID
	END
END