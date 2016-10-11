CREATE PROCEDURE Sp_NewDoctorStatistics --   Sp_NewDoctorStatistics '2016'
	(@Fromdate VARCHAR(max) = '')
AS
BEGIN
	DECLARE @listOfIDs TABLE (
		Doctor BIGINT
		,Months VARCHAR(20)
		)

	IF (@Fromdate = '')
	BEGIN
		INSERT INTO @listOfIDs (
			Doctor
			,Months
			)
		VALUES (
			(
				SELECT count(doctorid)
				FROM Invoice
				WHERE (
						MONTH(CreatedDate) = 1
						AND YEAR(CreatedDate) = YEAR(GETDATE())
						)
				)
			,'Jan'
			)

		INSERT INTO @listOfIDs (
			Doctor
			,Months
			)
		VALUES (
			(
				SELECT count(doctorid)
				FROM Invoice
				WHERE (
						MONTH(CreatedDate) = 2
						AND YEAR(CreatedDate) = YEAR(GETDATE())
						)
				)
			,'Feb'
			)

		INSERT INTO @listOfIDs (
			Doctor
			,Months
			)
		VALUES (
			(
				SELECT count(doctorid)
				FROM Invoice
				WHERE (
						MONTH(CreatedDate) = 3
						AND YEAR(CreatedDate) = YEAR(GETDATE())
						)
				)
			,'Mar'
			)

		INSERT INTO @listOfIDs (
			Doctor
			,Months
			)
		VALUES (
			(
				SELECT count(doctorid)
				FROM Invoice
				WHERE (
						MONTH(CreatedDate) = 4
						AND YEAR(CreatedDate) = YEAR(GETDATE())
						)
				)
			,'Apr'
			)

		INSERT INTO @listOfIDs (
			Doctor
			,Months
			)
		VALUES (
			(
				SELECT count(doctorid)
				FROM Invoice
				WHERE (
						MONTH(CreatedDate) = 5
						AND YEAR(CreatedDate) = YEAR(GETDATE())
						)
				)
			,'May'
			)

		INSERT INTO @listOfIDs (
			Doctor
			,Months
			)
		VALUES (
			(
				SELECT count(doctorid)
				FROM Invoice
				WHERE (
						MONTH(CreatedDate) = 6
						AND YEAR(CreatedDate) = YEAR(GETDATE())
						)
				)
			,'Jun'
			)

		INSERT INTO @listOfIDs (
			Doctor
			,Months
			)
		VALUES (
			(
				SELECT count(doctorid)
				FROM Invoice
				WHERE (
						MONTH(CreatedDate) = 7
						AND YEAR(CreatedDate) = YEAR(GETDATE())
						)
				)
			,'Jul'
			)

		INSERT INTO @listOfIDs (
			Doctor
			,Months
			)
		VALUES (
			(
				SELECT count(doctorid)
				FROM Invoice
				WHERE (
						MONTH(CreatedDate) = 8
						AND YEAR(CreatedDate) = YEAR(GETDATE())
						)
				)
			,'Aug'
			)

		INSERT INTO @listOfIDs (
			Doctor
			,Months
			)
		VALUES (
			(
				SELECT count(doctorid)
				FROM Invoice
				WHERE (
						MONTH(CreatedDate) = 9
						AND YEAR(CreatedDate) = YEAR(GETDATE())
						)
				)
			,'Sep'
			)

		INSERT INTO @listOfIDs (
			Doctor
			,Months
			)
		VALUES (
			(
				SELECT count(doctorid)
				FROM Invoice
				WHERE (
						MONTH(CreatedDate) = 10
						AND YEAR(CreatedDate) = YEAR(GETDATE())
						)
				)
			,'Oct'
			)

		INSERT INTO @listOfIDs (
			Doctor
			,Months
			)
		VALUES (
			(
				SELECT count(doctorid)
				FROM Invoice
				WHERE (
						MONTH(CreatedDate) = 11
						AND YEAR(CreatedDate) = YEAR(GETDATE())
						)
				)
			,'Nov'
			)

		INSERT INTO @listOfIDs (
			Doctor
			,Months
			)
		VALUES (
			(
				SELECT count(doctorid)
				FROM Invoice
				WHERE (
						MONTH(CreatedDate) = 12
						AND YEAR(CreatedDate) = YEAR(GETDATE())
						)
				)
			,'Dec'
			)

		SELECT *
		FROM @listOfIDs
	END
	ELSE
	BEGIN
		INSERT INTO @listOfIDs (
			Doctor
			,Months
			)
		VALUES (
			(
				SELECT count(doctorid)
				FROM Invoice
				WHERE (
						MONTH(CreatedDate) = 1
						AND YEAR(CreatedDate) = YEAR(@Fromdate)
						)
				)
			,'Jan'
			)

		INSERT INTO @listOfIDs (
			Doctor
			,Months
			)
		VALUES (
			(
				SELECT count(doctorid)
				FROM Invoice
				WHERE (
						MONTH(CreatedDate) = 2
						AND YEAR(CreatedDate) = YEAR(@Fromdate)
						)
				)
			,'Feb'
			)

		INSERT INTO @listOfIDs (
			Doctor
			,Months
			)
		VALUES (
			(
				SELECT count(doctorid)
				FROM Invoice
				WHERE (
						MONTH(CreatedDate) = 3
						AND YEAR(CreatedDate) = YEAR(@Fromdate)
						)
				)
			,'Mar'
			)

		INSERT INTO @listOfIDs (
			Doctor
			,Months
			)
		VALUES (
			(
				SELECT count(doctorid)
				FROM Invoice
				WHERE (
						MONTH(CreatedDate) = 4
						AND YEAR(CreatedDate) = YEAR(@Fromdate)
						)
				)
			,'Apr'
			)

		INSERT INTO @listOfIDs (
			Doctor
			,Months
			)
		VALUES (
			(
				SELECT count(doctorid)
				FROM Invoice
				WHERE (
						MONTH(CreatedDate) = 5
						AND YEAR(CreatedDate) = YEAR(@Fromdate)
						)
				)
			,'May'
			)

		INSERT INTO @listOfIDs (
			Doctor
			,Months
			)
		VALUES (
			(
				SELECT count(doctorid)
				FROM Invoice
				WHERE (
						MONTH(CreatedDate) = 6
						AND YEAR(CreatedDate) = YEAR(@Fromdate)
						)
				)
			,'Jun'
			)

		INSERT INTO @listOfIDs (
			Doctor
			,Months
			)
		VALUES (
			(
				SELECT count(doctorid)
				FROM Invoice
				WHERE (
						MONTH(CreatedDate) = 7
						AND YEAR(CreatedDate) = YEAR(@Fromdate)
						)
				)
			,'Jul'
			)

		INSERT INTO @listOfIDs (
			Doctor
			,Months
			)
		VALUES (
			(
				SELECT count(doctorid)
				FROM Invoice
				WHERE (
						MONTH(CreatedDate) = 8
						AND YEAR(CreatedDate) = YEAR(@Fromdate)
						)
				)
			,'Aug'
			)

		INSERT INTO @listOfIDs (
			Doctor
			,Months
			)
		VALUES (
			(
				SELECT count(doctorid)
				FROM Invoice
				WHERE (
						MONTH(CreatedDate) = 9
						AND YEAR(CreatedDate) = YEAR(@Fromdate)
						)
				)
			,'Sep'
			)

		INSERT INTO @listOfIDs (
			Doctor
			,Months
			)
		VALUES (
			(
				SELECT count(doctorid)
				FROM Invoice
				WHERE (
						MONTH(CreatedDate) = 10
						AND YEAR(CreatedDate) = YEAR(@Fromdate)
						)
				)
			,'Oct'
			)

		INSERT INTO @listOfIDs (
			Doctor
			,Months
			)
		VALUES (
			(
				SELECT count(doctorid)
				FROM Invoice
				WHERE (
						MONTH(CreatedDate) = 11
						AND YEAR(CreatedDate) = YEAR(@Fromdate)
						)
				)
			,'Nov'
			)

		INSERT INTO @listOfIDs (
			Doctor
			,Months
			)
		VALUES (
			(
				SELECT count(doctorid)
				FROM Invoice
				WHERE (
						MONTH(CreatedDate) = 12
						AND YEAR(CreatedDate) = YEAR(@Fromdate)
						)
				)
			,'Dec'
			)

		SELECT *
		FROM @listOfIDs
	END
END
	--Create procedure Sp_NewDoctorStatistics
	--As 
	--Begin
	--SELECT   DoctorName,count(PatientID)as patient FROM Invoice
	--WHERE DATEPART(month, CreatedDate) = DATEPART(month, DATEADD(month, 0, getdate()))
	--AND DATEPART(year, CreatedDate) = DATEPART(year, DATEADD(month, 0, getdate())) group by DoctorName
	--END
