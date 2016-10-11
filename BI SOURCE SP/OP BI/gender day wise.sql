

ALTER PROCEDURE sp_opgenderday   --  sp_opgenderday '2016-08-19 13:12:38.853'
 (
	@Fromdate datetime = ''	
	)
AS
BEGIN
	DECLARE @listOfID TABLE (
		CountVal BIGINT
		,NAME VARCHAR(20)
		)

	IF (
			@Fromdate = ''
			
			)
	BEGIN
		INSERT INTO @listOfID (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(Sex) FROM Patient p inner join  Admission a on a.PatientId=p.PatientID
				WHERE Sex = 'Male' and a.AdmissionStatus = 0
				)
			,'Male'
			)

		INSERT INTO @listOfID (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(Sex) FROM Patient p inner join  Admission a on a.PatientId=p.PatientID
				WHERE Sex = 'Female' and a.AdmissionStatus = 0
				)
			,'Female'
			)

	

		SELECT *
		FROM @listOfID
	END
	ELSE
	BEGIN
		INSERT INTO @listOfID (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(Sex) FROM Patient p inner join  Admission a on a.PatientId=p.PatientID
				WHERE (
						p.CreatedDate = @Fromdate
							
						)
					AND Sex = 'Male'
				)
			,'Male'
			)

		INSERT INTO @listOfID (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(Sex) FROM Patient p inner join  Admission a on a.PatientId=p.PatientID
				WHERE (
						p.CreatedDate = @Fromdate
							
						)
					AND Sex = 'Female'
				)
			,'Female'
			)

		

		SELECT *
		FROM @listOfID
	END
END

