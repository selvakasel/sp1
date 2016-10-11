


CREATE PROCEDURE Sp_Duedetails --  Sp_Duedetails  '2016-06-01', '2016-07-11'

(
	@Fromdate VARCHAR(max) = ''
	,@Todate VARCHAR(max) = ''
	)
AS
BEGIN
	DECLARE @listOfIDs TABLE (
		CountVal BIGINT
		,NAME VARCHAR(20)
		)

	
	BEGIN
		

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT sum(DueAmount) FROM OPFinalBilling WHERE Billdate BETWEEN @Fromdate AND @Todate
				)
			,'Due Amount'
			)

		SELECT *
		FROM @listOfIDs
	END
END

