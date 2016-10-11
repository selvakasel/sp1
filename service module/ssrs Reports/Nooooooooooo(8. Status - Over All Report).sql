

ALTER PROCEDURE ssrs_overall_report --- ssrs_overall_report '2015-07-15','2016-07-15',1,'opened'
	(
	@Fromdate VARCHAR(max) = ''
	,@Todate VARCHAR(max) = ''
	,@clientid BIGINT
	,@status VARCHAR(150)
	)
AS
BEGIN
	IF (
			@Fromdate = ''
			AND @todate = ''
			)
	BEGIN
		SELECT AssignedID
			,AssignedTO
			,STATUS
			,CreatedDate
		FROM WorkAssingService
		WHERE ClientId = @clientid
			AND STATUS = @status
	END
	ELSE
	BEGIN
		SELECT AssignedID
			,AssignedTO
			,STATUS
			,CreatedDate
		FROM WorkAssingService
		WHERE ClientId = @clientid
			AND CreatedDate BETWEEN @Fromdate
				AND @Todate
			AND STATUS = @status
	END
END


--SELECT *
--FROM WorkAssingService

--SELECT *
--FROM Users

--SELECT AssignedID
--	,AssignedTO
--	,STATUS
--	,CreatedDate
--FROM WorkAssingService