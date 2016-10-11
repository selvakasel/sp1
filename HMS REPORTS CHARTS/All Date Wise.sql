
ALTER PROCEDURE Sp_AllDatewise    -- Sp_AllDatewise '2016-01-01' , '2016-07-20'

(
	@Fromdate varchar(max)
	,@Todate varchar(max)
	)
AS
BEGIN
	DECLARE @listOfIDs TABLE (
		CountVal BIGINT
		,NAME VARCHAR(20)
		)
		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(*)	FROM patient p inner join Registration r on p.PatientID = r.PatientID  
WHERE (year(r.RegistrationDate) - year(p.DateofBirth)) > 0  AND (year(r.RegistrationDate) - year(p.DateofBirth)) <= 10
					AND (r.RegistrationDate BETWEEN @Fromdate	AND @Todate)
				)
			,'0-10'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(*)	FROM patient p inner join Registration r on p.PatientID = r.PatientID  
WHERE (year(r.RegistrationDate) - year(p.DateofBirth)) > 11  AND (year(r.RegistrationDate) - year(p.DateofBirth)) <= 20
					AND (r.RegistrationDate BETWEEN @Fromdate	AND @Todate)
				)
			,'11-20'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(*)	FROM patient p inner join Registration r on p.PatientID = r.PatientID  
WHERE (year(r.RegistrationDate) - year(p.DateofBirth)) > 21  AND (year(r.RegistrationDate) - year(p.DateofBirth)) <= 30
					AND (r.RegistrationDate BETWEEN @Fromdate	AND @Todate)
				)
			,'21-30'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(*)	FROM patient p inner join Registration r on p.PatientID = r.PatientID  
WHERE (year(r.RegistrationDate) - year(p.DateofBirth)) > 31  AND (year(r.RegistrationDate) - year(p.DateofBirth)) <= 40
					AND (r.RegistrationDate BETWEEN @Fromdate	AND @Todate)
				)
			,'31-40'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(*)	FROM patient p inner join Registration r on p.PatientID = r.PatientID  
WHERE (year(r.RegistrationDate) - year(p.DateofBirth)) > 41  AND (year(r.RegistrationDate) - year(p.DateofBirth)) <= 50
					AND (r.RegistrationDate BETWEEN @Fromdate	AND @Todate)
				)
			,'41-50'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(*)	FROM patient p inner join Registration r on p.PatientID = r.PatientID  
WHERE (year(r.RegistrationDate) - year(p.DateofBirth)) > 51  AND (year(r.RegistrationDate) - year(p.DateofBirth)) <= 60
					AND (r.RegistrationDate BETWEEN @Fromdate	AND @Todate)
				)
			,'51-60'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(*)	FROM patient p inner join Registration r on p.PatientID = r.PatientID  
WHERE (year(r.RegistrationDate) - year(p.DateofBirth)) > 61  AND (year(r.RegistrationDate) - year(p.DateofBirth)) <= 70
					AND (r.RegistrationDate BETWEEN @Fromdate	AND @Todate)
				)
			,'61-70'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(*)	FROM patient p inner join Registration r on p.PatientID = r.PatientID  
WHERE (year(r.RegistrationDate) - year(p.DateofBirth)) > 71  AND (year(r.RegistrationDate) - year(p.DateofBirth)) <= 80
					AND (r.RegistrationDate BETWEEN @Fromdate	AND @Todate)
				)
			,'71-80'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(*)	FROM patient p inner join Registration r on p.PatientID = r.PatientID  
WHERE (year(r.RegistrationDate) - year(p.DateofBirth)) > 81  AND (year(r.RegistrationDate) - year(p.DateofBirth)) <= 90
					AND (r.RegistrationDate BETWEEN @Fromdate	AND @Todate)
				)
			,'81-90'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(*)	FROM patient p inner join Registration r on p.PatientID = r.PatientID  
WHERE (year(r.RegistrationDate) - year(p.DateofBirth)) > 91  AND (year(r.RegistrationDate) - year(p.DateofBirth)) <= 100
					AND (r.RegistrationDate BETWEEN @Fromdate	AND @Todate)
				)
			,'91-100'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(*)	FROM patient p inner join Registration r on p.PatientID = r.PatientID  
WHERE (year(r.RegistrationDate) - year(p.DateofBirth)) > 100  
					AND (r.RegistrationDate BETWEEN @Fromdate	AND @Todate)
				)
			,'100+'
			)

		SELECT *
		FROM @listOfIDs
	END


