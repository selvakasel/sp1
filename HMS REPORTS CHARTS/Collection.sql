


ALTER PROCEDURE Sp_Collection --  Sp_Collection  '2016-06-01', '2016-07-11'

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
				SELECT sum(BillAmount) FROM OPFinalBilling WHERE Billdate BETWEEN @Fromdate AND @Todate
						
				)
			,'Bill Amount'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT sum(AmountReceived) FROM OPFinalBilling WHERE Billdate BETWEEN @Fromdate AND @Todate
				)
			,'Amount Received'
			)

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

