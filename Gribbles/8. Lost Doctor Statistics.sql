CREATE PROCEDURE Sp_LostDoctorStatistics --   Sp_LostDoctorStatistics '2015'
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
				SELECT count(DoctorID)
				FROM Invoice
				WHERE CreatedDate < DATEADD(mm, DATEDIFF(mm, 0, GETDATE()), 0)
					AND (
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
				SELECT count(DoctorID)
				FROM Invoice
				WHERE CreatedDate < DATEADD(mm, DATEDIFF(mm, 0, GETDATE()), 0)
					AND (
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
				SELECT count(DoctorID)
				FROM Invoice
				WHERE CreatedDate < DATEADD(mm, DATEDIFF(mm, 0, GETDATE()), 0)
					AND (
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
				SELECT count(DoctorID)
				FROM Invoice
				WHERE CreatedDate < DATEADD(mm, DATEDIFF(mm, 0, GETDATE()), 0)
					AND (
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
				SELECT count(DoctorID)
				FROM Invoice
				WHERE CreatedDate < DATEADD(mm, DATEDIFF(mm, 0, GETDATE()), 0)
					AND (
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
				SELECT count(DoctorID)
				FROM Invoice
				WHERE CreatedDate < DATEADD(mm, DATEDIFF(mm, 0, GETDATE()), 0)
					AND (
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
				SELECT count(DoctorID)
				FROM Invoice
				WHERE CreatedDate < DATEADD(mm, DATEDIFF(mm, 0, GETDATE()), 0)
					AND (
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
				SELECT count(DoctorID)
				FROM Invoice
				WHERE CreatedDate < DATEADD(mm, DATEDIFF(mm, 0, GETDATE()), 0)
					AND (
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
				SELECT count(DoctorID)
				FROM Invoice
				WHERE CreatedDate < DATEADD(mm, DATEDIFF(mm, 0, GETDATE()), 0)
					AND (
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
				SELECT count(DoctorID)
				FROM Invoice
				WHERE CreatedDate < DATEADD(mm, DATEDIFF(mm, 0, GETDATE()), 0)
					AND (
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
				SELECT count(DoctorID)
				FROM Invoice
				WHERE CreatedDate < DATEADD(mm, DATEDIFF(mm, 0, GETDATE()), 0)
					AND (
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
				SELECT count(DoctorID)
				FROM Invoice
				WHERE CreatedDate < DATEADD(mm, DATEDIFF(mm, 0, GETDATE()), 0)
					AND (
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
				SELECT count(DoctorID)
				FROM Invoice
				WHERE CreatedDate < DATEADD(mm, DATEDIFF(mm, 0, GETDATE()), 0)
					AND (
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
				SELECT count(DoctorID)
				FROM Invoice
				WHERE CreatedDate < DATEADD(mm, DATEDIFF(mm, 0, GETDATE()), 0)
					AND (
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
				SELECT count(DoctorID)
				FROM Invoice
				WHERE CreatedDate < DATEADD(mm, DATEDIFF(mm, 0, GETDATE()), 0)
					AND (
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
				SELECT count(DoctorID)
				FROM Invoice
				WHERE CreatedDate < DATEADD(mm, DATEDIFF(mm, 0, GETDATE()), 0)
					AND (
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
				SELECT count(DoctorID)
				FROM Invoice
				WHERE CreatedDate < DATEADD(mm, DATEDIFF(mm, 0, GETDATE()), 0)
					AND (
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
				SELECT count(DoctorID)
				FROM Invoice
				WHERE CreatedDate < DATEADD(mm, DATEDIFF(mm, 0, GETDATE()), 0)
					AND (
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
				SELECT count(DoctorID)
				FROM Invoice
				WHERE CreatedDate < DATEADD(mm, DATEDIFF(mm, 0, GETDATE()), 0)
					AND (
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
				SELECT count(DoctorID)
				FROM Invoice
				WHERE CreatedDate < DATEADD(mm, DATEDIFF(mm, 0, GETDATE()), 0)
					AND (
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
				SELECT count(DoctorID)
				FROM Invoice
				WHERE CreatedDate < DATEADD(mm, DATEDIFF(mm, 0, GETDATE()), 0)
					AND (
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
				SELECT count(DoctorID)
				FROM Invoice
				WHERE CreatedDate < DATEADD(mm, DATEDIFF(mm, 0, GETDATE()), 0)
					AND (
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
				SELECT count(DoctorID)
				FROM Invoice
				WHERE CreatedDate < DATEADD(mm, DATEDIFF(mm, 0, GETDATE()), 0)
					AND (
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
				SELECT count(DoctorID)
				FROM Invoice
				WHERE CreatedDate < DATEADD(mm, DATEDIFF(mm, 0, GETDATE()), 0)
					AND (
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
	--Create procedure Sp_LostDoctorStatistics
	--(	@Fromdate VARCHAR(max) = ''
	--,@Todate VARCHAR(max) = ''
	--)
	--As 
	--Begin
	--IF (@Fromdate = ''AND @Todate = '')
	--BEGIN
	--SELECT top 10  DoctorName,count(PatientID)as patient FROM Invoice where CreatedDate < DATEADD(mm,DATEDIFF(mm,0,GETDATE()),0) 
	--group by DoctorName
	--END
	--ELSE
	--BEGIN
	--SELECT top 10  DoctorName,count(PatientID)as patient FROM Invoice where CreatedDate < DATEADD(mm,DATEDIFF(mm,0,GETDATE()),0) 
	--And (CreatedDate BETWEEN @Fromdate	AND @Todate)  group by DoctorName
	--END
	--END
