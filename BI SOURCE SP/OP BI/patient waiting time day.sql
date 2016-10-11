sp_helptext patient_waiting_time_day





ALTER PROCEDURE patient_waiting_time_day 
(@Fromdate VARCHAR(max) = '')
AS
BEGIN
	IF (@Fromdate = '')
	BEGIN
		SELECT ROW_NUMBER() OVER (
				ORDER BY ClientID
				) AS Patient
			,DateDiff(minute, RegistrationDate, Visteddate) AS Minutes
		FROM registration
		WHERE Visitedby = 1
			AND (CreatedDate = getdate())
	END
	ELSE
	BEGIN
		SELECT ROW_NUMBER() OVER (
				ORDER BY ClientID
				) AS Patient
			,DateDiff(minute, RegistrationDate, Visteddate) AS Minutes
		FROM registration
		WHERE Visitedby = 1
			AND (CreatedDate = @Fromdate)
	END
END
