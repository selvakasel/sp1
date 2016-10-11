


--CREATE PROCEDURE Sp_Segmentation --  Sp_Segmentation  '2016-06-01', '2016-07-11'

--(
--	@Fromdate VARCHAR(max) = ''
--	,@Todate VARCHAR(max) = ''
--	)
--AS
--BEGIN
--	DECLARE @listOfIDs TABLE (
--		CountVal BIGINT
--		,NAME VARCHAR(20)
--		)

	
--	BEGIN
		

--		INSERT INTO @listOfIDs (
--			CountVal
--			,NAME
--			)
--		VALUES (
--			(
--				SELECT sum(DueAmount) FROM OPFinalBilling WHERE Billdate BETWEEN @Fromdate AND @Todate
--				)
--			,'Due Amount'
--			)

--		SELECT *
--		FROM @listOfIDs
--	END
--END




select sum(a.ChargeAmount + a.Doctorcharge) AS ChargeAmount, ChargeName from  Charges a WHERE Activeflag = 1
and CreatedDate



select * from Charges