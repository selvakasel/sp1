
Alter PROCEDURE Sp_OpcollectionsDateWise   --  Sp_OpcollectionsDateWise '2016-08-01' , '2016-08-10'
(
	 @Fromdate VARCHAR(max)  
	,@Todate VARCHAR(max) 
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
				select count(*) from [NewRegistration_V] Where Sex = 'Male' and IsPanel != 0
				And (RegistrationDate BETWEEN @Fromdate AND @Todate)					
				)					
			,(select count(*) from [NewRegistration_V] Where Sex = 'Female' and IsPanel != 0
				And (RegistrationDate BETWEEN @Fromdate AND @Todate))	
			
			,'Panel' 
			)
			

		INSERT INTO @listOfID (
			 Maleval
			,Femaleval			
		    ,Categoriesname 
			)
		VALUES (
			(
				select count(*) from [NewRegistration_V] Where Sex = 'Male' and IsPanel = 0 
				And (RegistrationDate BETWEEN @Fromdate AND @Todate)					
				)					
			,(
			 select count(*) from [NewRegistration_V] Where Sex = 'Female' and IsPanel = 0 
				And (RegistrationDate BETWEEN @Fromdate AND @Todate))	
			
			,'General' 
			)

	
		SELECT *
		FROM @listOfID
	END
END

--CREATE PROCEDURE Sp_OpcollectionsDateWise   --  Sp_OpcollectionsDateWise '2016-06-01' , '2016-06-10'
--(
--	 @Fromdate VARCHAR(max)  
--	,@Todate VARCHAR(max) 
--	)
--AS
--BEGIN
--	DECLARE @listOfID TABLE (
--		 Maleval BIGINT
--		,Femaleval BIGINT		
--		,Categoriesname VARCHAR(20)
--		)

	
--	BEGIN
	
--		INSERT INTO @listOfID (
--			 Maleval
--			,Femaleval			
--		    ,Categoriesname 
--			)
--		VALUES (
--			(
--				select count(*) from registration r inner join patient p on r.PatientID=p.PatientID
--                Where r.PatientID IN (SELECT r.PatientID FROM registration r GROUP BY r.PatientID HAVING COUNT(r.PatientID) = 1)
--                and Sex = 'Male' and IsPanel != 0 
--				And (r.CreatedDate BETWEEN @Fromdate AND @Todate)					
--				)					
--			,(select count(*) from registration r inner join patient p on r.PatientID=p.PatientID
--                Where r.PatientID IN (SELECT r.PatientID FROM registration r GROUP BY r.PatientID HAVING COUNT(r.PatientID) = 1)
--                and Sex = 'Female' and IsPanel != 0 
--				And (r.CreatedDate BETWEEN @Fromdate AND @Todate))	
			
--			,'Panel' 
--			)
			

--		INSERT INTO @listOfID (
--			 Maleval
--			,Femaleval			
--		    ,Categoriesname 
--			)
--		VALUES (
--			(
--				select count(*) from registration r inner join patient p on r.PatientID=p.PatientID
--                Where r.PatientID IN (SELECT r.PatientID FROM registration r GROUP BY r.PatientID HAVING COUNT(r.PatientID) = 1)
--                and Sex = 'Male' and IsPanel = 0 
--				And (r.CreatedDate BETWEEN @Fromdate AND @Todate)					
--				)					
--			,(
--			  select count(*) from registration r inner join patient p on r.PatientID=p.PatientID
--                Where r.PatientID IN (SELECT r.PatientID FROM registration r GROUP BY r.PatientID HAVING COUNT(r.PatientID) = 1)
--                and Sex = 'Female' and IsPanel = 0 
--				And (r.CreatedDate BETWEEN @Fromdate AND @Todate))	
			
--			,'General' 
--			)

	
--		SELECT *
--		FROM @listOfID
--	END
--END






























