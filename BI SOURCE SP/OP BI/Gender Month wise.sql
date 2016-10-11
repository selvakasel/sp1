
alter PROCEDURE sp_gendermonth --   sp_gendermonth '2016'
	(
	@Fromdate VARCHAR(max) = ''
	--	,@Todate VARCHAR(max)
	--	,@year varchar(max)
	)
AS
BEGIN
	DECLARE @listOfIDs TABLE (
		Countmale BIGINT
	 ,Countfemale BIGINT
		,NAME VARCHAR(20)
		)

	IF (@Fromdate = '')
	BEGIN
		INSERT INTO @listOfIDs (
			Countmale
			,Countfemale
			,NAME
			)
		VALUES (
			(
				SELECT count(Sex) FROM Patient p inner join  Admission a on a.PatientId=p.PatientID
				WHERE Sex = 'Male' and a.AdmissionStatus = 0
				
					AND (MONTH(p.CreatedDate) = 1)
					AND (YEAR(p.CreatedDate) = YEAR(GETDATE()))
				)
				,
				(
				SELECT count(Sex) FROM Patient p inner join  Admission a on a.PatientId=p.PatientID
				WHERE Sex = 'Female' and a.AdmissionStatus = 0
				
					AND (MONTH(p.CreatedDate) = 1)
					AND (YEAR(p.CreatedDate) = YEAR(GETDATE()))
				)
			,'Jan'
			)

		INSERT INTO @listOfIDs (
			Countmale
			,Countfemale
			,NAME
			)
		VALUES (
			(
				SELECT count(Sex) FROM Patient p inner join  Admission a on a.PatientId=p.PatientID
				WHERE Sex = 'Male' and a.AdmissionStatus = 0
					AND (MONTH(p.CreatedDate) = 2)
					AND (YEAR(p.CreatedDate) = YEAR(GETDATE()))
				),
				(
				SELECT count(Sex) FROM Patient p inner join  Admission a on a.PatientId=p.PatientID
				WHERE Sex = 'Female' and a.AdmissionStatus = 0
				
					AND (MONTH(p.CreatedDate) = 2)
					AND (YEAR(p.CreatedDate) = YEAR(GETDATE()))
				)
			,'Feb'
			)

		INSERT INTO @listOfIDs (
			Countmale
			,Countfemale
			,NAME
			)
		VALUES (
			(
				SELECT count(Sex) FROM Patient p inner join  Admission a on a.PatientId=p.PatientID
				WHERE Sex = 'Male' and a.AdmissionStatus = 0
					AND (MONTH(p.CreatedDate) = 3)
					AND (YEAR(p.CreatedDate) = YEAR(GETDATE()))
				),
				(
				SELECT count(Sex) FROM Patient p inner join  Admission a on a.PatientId=p.PatientID
				WHERE Sex = 'Female' and a.AdmissionStatus = 0
				
					AND (MONTH(p.CreatedDate) = 3)
					AND (YEAR(p.CreatedDate) = YEAR(GETDATE()))
				)
			,'Mar'
			)

		INSERT INTO @listOfIDs (
			Countmale
			,Countfemale
			,NAME
			)
		VALUES (
			(
				SELECT count(Sex) FROM Patient p inner join  Admission a on a.PatientId=p.PatientID
				WHERE Sex = 'Male' and a.AdmissionStatus = 0
					AND (MONTH(p.CreatedDate) = 4)
					AND (YEAR(p.CreatedDate) = YEAR(GETDATE()))
				),
				(
				SELECT count(Sex) FROM Patient p inner join  Admission a on a.PatientId=p.PatientID
				WHERE Sex = 'Female' and a.AdmissionStatus = 0
				
					AND (MONTH(p.CreatedDate) = 4)
					AND (YEAR(p.CreatedDate) = YEAR(GETDATE()))
				)
			,'Apr'
			)

		INSERT INTO @listOfIDs (
			Countmale
			,Countfemale
			,NAME
			)
		VALUES (
			(
				SELECT count(Sex) FROM Patient p inner join  Admission a on a.PatientId=p.PatientID
				WHERE Sex = 'Male' and a.AdmissionStatus = 0
					AND (MONTH(p.CreatedDate) = 5)
					AND (YEAR(p.CreatedDate) = YEAR(GETDATE()))
				),
				(
				SELECT count(Sex) FROM Patient p inner join  Admission a on a.PatientId=p.PatientID
				WHERE Sex = 'Female' and a.AdmissionStatus = 0
				
					AND (MONTH(p.CreatedDate) = 5)
					AND (YEAR(p.CreatedDate) = YEAR(GETDATE()))
				)
			,'May'
			)

		INSERT INTO @listOfIDs (
			Countmale
			,Countfemale
			,NAME
			)
		VALUES (
			(
				SELECT count(Sex) FROM Patient p inner join  Admission a on a.PatientId=p.PatientID
				WHERE Sex = 'Male' and a.AdmissionStatus = 0
					AND (MONTH(p.CreatedDate) = 6)
					AND (YEAR(p.CreatedDate) = YEAR(GETDATE()))
				),
				(
				SELECT count(Sex) FROM Patient p inner join  Admission a on a.PatientId=p.PatientID
				WHERE Sex = 'Female' and a.AdmissionStatus = 0
				
					AND (MONTH(p.CreatedDate) = 6)
					AND (YEAR(p.CreatedDate) = YEAR(GETDATE()))
				)
			,'Jun'
			)

		INSERT INTO @listOfIDs (
			Countmale
			,Countfemale
			,NAME
			)
		VALUES (
			(
				SELECT count(Sex) FROM Patient p inner join  Admission a on a.PatientId=p.PatientID
				WHERE Sex = 'Male' and a.AdmissionStatus = 0
					AND (MONTH(p.CreatedDate) = 7)
					AND (YEAR(p.CreatedDate) = YEAR(GETDATE()))
				),
				(
				SELECT count(Sex) FROM Patient p inner join  Admission a on a.PatientId=p.PatientID
				WHERE Sex = 'Female' and a.AdmissionStatus = 0
				
					AND (MONTH(p.CreatedDate) = 7)
					AND (YEAR(p.CreatedDate) = YEAR(GETDATE()))
				)
			,'Jul'
			)

		INSERT INTO @listOfIDs (
			Countmale
			,Countfemale
			,NAME
			)
		VALUES (
			(
				SELECT count(Sex) FROM Patient p inner join  Admission a on a.PatientId=p.PatientID
				WHERE Sex = 'Male' and a.AdmissionStatus = 0
					AND (MONTH(p.CreatedDate) = 8)
					AND (YEAR(p.CreatedDate) = YEAR(GETDATE()))
				),
				(
				SELECT count(Sex) FROM Patient p inner join  Admission a on a.PatientId=p.PatientID
				WHERE Sex = 'Female' and a.AdmissionStatus = 0
				
					AND (MONTH(p.CreatedDate) = 8)
					AND (YEAR(p.CreatedDate) = YEAR(GETDATE()))
				)
			,'Aug'
			)

		INSERT INTO @listOfIDs (
			Countmale
			,Countfemale
			,NAME
			)
		VALUES (
			(
				SELECT count(Sex) FROM Patient p inner join  Admission a on a.PatientId=p.PatientID
				WHERE Sex = 'Male' and a.AdmissionStatus = 0
					AND (MONTH(p.CreatedDate) = 9)
					AND (YEAR(p.CreatedDate) = YEAR(GETDATE()))
				),
				(
				SELECT count(Sex) FROM Patient p inner join  Admission a on a.PatientId=p.PatientID
				WHERE Sex = 'Female' and a.AdmissionStatus = 0
				
					AND (MONTH(p.CreatedDate) = 9)
					AND (YEAR(p.CreatedDate) = YEAR(GETDATE()))
				)
			,'Sep'
			)

		INSERT INTO @listOfIDs (
			Countmale
			,Countfemale
			,NAME
			)
		VALUES (
			(
				SELECT count(Sex) FROM Patient p inner join  Admission a on a.PatientId=p.PatientID
				WHERE Sex = 'Male' and a.AdmissionStatus = 0
					AND (MONTH(p.CreatedDate) = 10)
					AND (YEAR(p.CreatedDate) = YEAR(GETDATE()))
				),
				(
				SELECT count(Sex) FROM Patient p inner join  Admission a on a.PatientId=p.PatientID
				WHERE Sex = 'Female' and a.AdmissionStatus = 0
				
					AND (MONTH(p.CreatedDate) = 10)
					AND (YEAR(p.CreatedDate) = YEAR(GETDATE()))
				)
			,'Oct'
			)

		INSERT INTO @listOfIDs (
			Countmale
			,Countfemale
			,NAME
			)
		VALUES (
			(
			
			SELECT count(Sex) FROM Patient p inner join  Admission a on a.PatientId=p.PatientID
				WHERE Sex = 'Male' and a.AdmissionStatus = 0
					AND (MONTH(p.CreatedDate) = 11)
					AND (YEAR(p.CreatedDate) = YEAR(GETDATE()))
				),
				(
				SELECT count(Sex) FROM Patient p inner join  Admission a on a.PatientId=p.PatientID
				WHERE Sex = 'Female' and a.AdmissionStatus = 0
				
					AND (MONTH(p.CreatedDate) = 11)
					AND (YEAR(p.CreatedDate) = YEAR(GETDATE()))
				)
			,'Nov'
			)

		INSERT INTO @listOfIDs (
			Countmale
			,Countfemale
			,NAME
			)
		VALUES (
			(
				SELECT count(Sex) FROM Patient p inner join  Admission a on a.PatientId=p.PatientID
				WHERE Sex = 'Male' and a.AdmissionStatus = 0
					AND (MONTH(p.CreatedDate) = 12)
					AND (YEAR(p.CreatedDate) = YEAR(GETDATE()))
				),
				(
				SELECT count(Sex) FROM Patient p inner join  Admission a on a.PatientId=p.PatientID
				WHERE Sex = 'Female' and a.AdmissionStatus = 0
				
					AND (MONTH(p.CreatedDate) = 12)
					AND (YEAR(p.CreatedDate) = YEAR(GETDATE()))
				)
			,'Dec'
			)

		SELECT *
		FROM @listOfIDs
	END
	ELSE
	BEGIN
		INSERT INTO @listOfIDs (
			Countmale
			,Countfemale
			,NAME
			)
		VALUES (
			(
				SELECT count(Sex) FROM Patient p inner join  Admission a on a.PatientId=p.PatientID
				WHERE Sex = 'Male' and a.AdmissionStatus = 0
					AND (MONTH(p.CreatedDate) = 1)
					AND (YEAR(p.CreatedDate) = YEAR(@Fromdate))
				),
				(
				SELECT count(Sex) FROM Patient p inner join  Admission a on a.PatientId=p.PatientID
				WHERE Sex = 'Female' and a.AdmissionStatus = 0
				
					AND (MONTH(p.CreatedDate) = 1)
					AND (YEAR(p.CreatedDate) = YEAR(@Fromdate))
				)
			,'Jan'
			)

		INSERT INTO @listOfIDs (
			Countmale
			,Countfemale
			,NAME
			)
		VALUES (
			(
				SELECT count(Sex) FROM Patient p inner join  Admission a on a.PatientId=p.PatientID
				WHERE Sex = 'Male' and a.AdmissionStatus = 0
					AND (MONTH(p.CreatedDate) = 2)
					AND (YEAR(p.CreatedDate) = YEAR(@Fromdate))
				),
				(
				SELECT count(Sex) FROM Patient p inner join  Admission a on a.PatientId=p.PatientID
				WHERE Sex = 'Female' and a.AdmissionStatus = 0
				
					AND (MONTH(p.CreatedDate) = 2)
					AND (YEAR(p.CreatedDate) = YEAR(@Fromdate)))
			,'Feb'
			)

		INSERT INTO @listOfIDs (
			Countmale
			,Countfemale
			,NAME
			)
		VALUES (
			(
				SELECT count(Sex) FROM Patient p inner join  Admission a on a.PatientId=p.PatientID
				WHERE Sex = 'Male' and a.AdmissionStatus = 0
					AND (MONTH(p.CreatedDate) = 3)
					AND (YEAR(p.CreatedDate) = YEAR(@Fromdate))
				),
				(
				SELECT count(Sex) FROM Patient p inner join  Admission a on a.PatientId=p.PatientID
				WHERE Sex = 'Female' and a.AdmissionStatus = 0
				
					AND (MONTH(p.CreatedDate) = 3)
					AND (YEAR(p.CreatedDate) = YEAR(@Fromdate)))
			,'Mar'
			)

		INSERT INTO @listOfIDs (
			Countmale
			,Countfemale
			,NAME
			)
		VALUES (
			(
				SELECT count(Sex) FROM Patient p inner join  Admission a on a.PatientId=p.PatientID
				WHERE Sex = 'Male' and a.AdmissionStatus = 0
					AND (MONTH(p.CreatedDate) = 4)
					AND (YEAR(p.CreatedDate) = YEAR(@Fromdate))
				),
				(
				SELECT count(Sex) FROM Patient p inner join  Admission a on a.PatientId=p.PatientID
				WHERE Sex = 'Female' and a.AdmissionStatus = 0
				
					AND (MONTH(p.CreatedDate) = 4)
					AND (YEAR(p.CreatedDate) = YEAR(@Fromdate)))
			,'Apr'
			)

		INSERT INTO @listOfIDs (
			Countmale
			,Countfemale
			,NAME
			)
		VALUES (
			(
				SELECT count(Sex) FROM Patient p inner join  Admission a on a.PatientId=p.PatientID
				WHERE Sex = 'Male' and a.AdmissionStatus = 0
					AND (MONTH(p.CreatedDate) = 5)
					AND (YEAR(p.CreatedDate) = YEAR(@Fromdate))
				),
				(
				SELECT count(Sex) FROM Patient p inner join  Admission a on a.PatientId=p.PatientID
				WHERE Sex = 'Female' and a.AdmissionStatus = 0
				
					AND (MONTH(p.CreatedDate) = 5)
					AND (YEAR(p.CreatedDate) = YEAR(@Fromdate)))
			,'May'
			)

		INSERT INTO @listOfIDs (
			Countmale
			,Countfemale
			,NAME
			)
		VALUES (
			(
				SELECT count(Sex) FROM Patient p inner join  Admission a on a.PatientId=p.PatientID
				WHERE Sex = 'Male' and a.AdmissionStatus = 0
					AND (MONTH(p.CreatedDate) = 6)
					AND (YEAR(p.CreatedDate) = YEAR(@Fromdate))
				),
				(
				SELECT count(Sex) FROM Patient p inner join  Admission a on a.PatientId=p.PatientID
				WHERE Sex = 'Female' and a.AdmissionStatus = 0
				
					AND (MONTH(p.CreatedDate) = 6)
					AND (YEAR(p.CreatedDate) = YEAR(@Fromdate)))
			,'Jun'
			)

		INSERT INTO @listOfIDs (
			Countmale
			,Countfemale
			,NAME
			)
		VALUES (
			(
				SELECT count(Sex) FROM Patient p inner join  Admission a on a.PatientId=p.PatientID
				WHERE Sex = 'Male' and a.AdmissionStatus = 0
					AND (MONTH(p.CreatedDate) = 7)
					AND (YEAR(p.CreatedDate) = YEAR(@Fromdate))
				),
				(
				SELECT count(Sex) FROM Patient p inner join  Admission a on a.PatientId=p.PatientID
				WHERE Sex = 'Female' and a.AdmissionStatus = 0
				
					AND (MONTH(p.CreatedDate) = 7)
					AND (YEAR(p.CreatedDate) = YEAR(@Fromdate)))
			,'Jul'
			)

		INSERT INTO @listOfIDs (
			Countmale
			,Countfemale
			,NAME
			)
		VALUES (
			(
				SELECT count(Sex) FROM Patient p inner join  Admission a on a.PatientId=p.PatientID
				WHERE Sex = 'Male' and a.AdmissionStatus = 0
					AND (MONTH(p.CreatedDate) = 8)
					AND (YEAR(p.CreatedDate) = YEAR(@Fromdate))
				),
				(
				SELECT count(Sex) FROM Patient p inner join  Admission a on a.PatientId=p.PatientID
				WHERE Sex = 'Female' and a.AdmissionStatus = 0
				
					AND (MONTH(p.CreatedDate) = 8)
					AND (YEAR(p.CreatedDate) = YEAR(@Fromdate)))
			,'Aug'
			)

		INSERT INTO @listOfIDs (
			Countmale
			,Countfemale
			,NAME
			)
		VALUES (
			(
				SELECT count(Sex) FROM Patient p inner join  Admission a on a.PatientId=p.PatientID
				WHERE Sex = 'Male' and a.AdmissionStatus = 0
					AND (MONTH(p.CreatedDate) = 9)
					AND (YEAR(p.CreatedDate) = YEAR(@Fromdate))
				),
				(
				SELECT count(Sex) FROM Patient p inner join  Admission a on a.PatientId=p.PatientID
				WHERE Sex = 'Female' and a.AdmissionStatus = 0
				
					AND (MONTH(p.CreatedDate) = 9)
					AND (YEAR(p.CreatedDate) = YEAR(@Fromdate)))
			,'Sep'
			)

		INSERT INTO @listOfIDs (
			Countmale
			,Countfemale
			,NAME
			)
		VALUES (
			(
				SELECT count(Sex) FROM Patient p inner join  Admission a on a.PatientId=p.PatientID
				WHERE Sex = 'Male' and a.AdmissionStatus = 0
					AND (MONTH(p.CreatedDate) = 10)
					AND (YEAR(p.CreatedDate) = YEAR(@Fromdate))
				),
				(
				SELECT count(Sex) FROM Patient p inner join  Admission a on a.PatientId=p.PatientID
				WHERE Sex = 'Female' and a.AdmissionStatus = 0
				
					AND (MONTH(p.CreatedDate) = 10)
					AND (YEAR(p.CreatedDate) = YEAR(@Fromdate)))
			,'Oct'
			)

		INSERT INTO @listOfIDs (
			Countmale
			,Countfemale
			,NAME
			)
		VALUES (
			(
				SELECT count(Sex) FROM Patient p inner join  Admission a on a.PatientId=p.PatientID
				WHERE Sex = 'Male' and a.AdmissionStatus = 0
					AND (MONTH(p.CreatedDate) = 11)
					AND (YEAR(p.CreatedDate) = YEAR(@Fromdate))
				),
				(
				SELECT count(Sex) FROM Patient p inner join  Admission a on a.PatientId=p.PatientID
				WHERE Sex = 'Female' and a.AdmissionStatus = 0
				
					AND (MONTH(p.CreatedDate) = 11)
					AND (YEAR(p.CreatedDate) = YEAR(@Fromdate)))
			,'Nov'
			)

		INSERT INTO @listOfIDs (
			Countmale
			,Countfemale
			,NAME
			)
		VALUES (
			(
				SELECT count(Sex) FROM Patient p inner join  Admission a on a.PatientId=p.PatientID
				WHERE Sex = 'Male' and a.AdmissionStatus = 0
					AND (MONTH(p.CreatedDate) = 12)
					AND (YEAR(p.CreatedDate) = YEAR(@Fromdate))
				),
				(
				SELECT count(Sex) FROM Patient p inner join  Admission a on a.PatientId=p.PatientID
				WHERE Sex = 'Female' and a.AdmissionStatus = 0
				
					AND (MONTH(p.CreatedDate) = 12)
					AND (YEAR(p.CreatedDate) = YEAR(@Fromdate)))
			,'Dec'
			)

		SELECT *
		FROM @listOfIDs
	END
END

