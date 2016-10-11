CREATE PROCEDURE Sp_Departmentdetails   --  Sp_Departmentdetails '2013-07-04' , '2016-07-13','RADIOLOGIST'
(
	 @Fromdate VARCHAR(max)  
	,@Todate VARCHAR(max) 
	,@department varchar(max)
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
				select count(*) from registration r inner join patient p on r.PatientID=p.PatientID inner join doctordepartment d
				on r.DoctorDepartmentID=d.DoctorDepartmentID
                Where r.PatientID IN (SELECT r.PatientID FROM registration r GROUP BY r.PatientID HAVING COUNT(r.PatientID) = 1)
                and Sex = 'Male' and IsPanel != 0 
				And (r.CreatedDate BETWEEN @Fromdate AND @Todate) and d.DepartmentName = @department					
				)					
			,(select count(*) from registration r inner join patient p on r.PatientID=p.PatientID inner join doctordepartment d
				on r.DoctorDepartmentID=d.DoctorDepartmentID
                Where r.PatientID IN (SELECT r.PatientID FROM registration r GROUP BY r.PatientID HAVING COUNT(r.PatientID) = 1)
                and Sex = 'Female' and IsPanel != 0 
				And (r.CreatedDate BETWEEN @Fromdate AND @Todate) and d.DepartmentName = @department)	
			
			,'Panel' 
			)
			

		INSERT INTO @listOfID (
			 Maleval
			,Femaleval			
		    ,Categoriesname 
			)
		VALUES (
			(
				select count(*) from registration r inner join patient p on r.PatientID=p.PatientID inner join doctordepartment d
				on r.DoctorDepartmentID=d.DoctorDepartmentID
                Where r.PatientID IN (SELECT r.PatientID FROM registration r GROUP BY r.PatientID HAVING COUNT(r.PatientID) = 1)
                and Sex = 'Male' and IsPanel = 0 
				And (r.CreatedDate BETWEEN @Fromdate AND @Todate)  and d.DepartmentName = @department						
				)					
			,(
			  select count(*) from registration r inner join patient p on r.PatientID=p.PatientID inner join doctordepartment d
				on r.DoctorDepartmentID=d.DoctorDepartmentID
                Where r.PatientID IN (SELECT r.PatientID FROM registration r GROUP BY r.PatientID HAVING COUNT(r.PatientID) = 1)
                and Sex = 'Female' and IsPanel = 0 
				And (r.CreatedDate BETWEEN @Fromdate AND @Todate) and d.DepartmentName = @department)	
			
			,'General' 
			)

	
		SELECT *
		FROM @listOfID
	END
END