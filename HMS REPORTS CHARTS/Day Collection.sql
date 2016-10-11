




CREATE PROCEDURE Sp_Daycollection --  Sp_Daycollection  '2016-06-01'

(
	@Fromdate VARCHAR(max) = ''
	
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
				SELECT sum(TotalAmount) FROM OPFinalBilling WHERE Billdate = @Fromdate
						
				)
			,'Total Amount'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT sum(AmountReceived) FROM OPFinalBilling WHERE Billdate = @Fromdate 
				)
			,'Amount Received'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT sum(DueAmount) FROM OPFinalBilling WHERE Billdate = @Fromdate 
				)
			,'Due Amount'
			)

		SELECT *
		FROM @listOfIDs
	END
END













