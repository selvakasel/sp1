ALTER PROCEDURE sp_workassin --  sp_workassin '' , '','1' 
	(
	@Fromdate VARCHAR(max) = ''
	,@Todate VARCHAR(max) = ''
	,@ClientId BIGINT
	)
AS
BEGIN
	IF (
			@Fromdate = ''
			AND @Todate = ''
			)
	BEGIN
		SELECT TOP 5 count(*) AS Dates
			,b.UserName
		FROM WorkAssingService AS a
		INNER JOIN Users AS b ON a.AssignedTO = b.UserId
		WHERE a.Activeflag = 1
			AND b.Activeflag = 1
			AND a.ClientId = @ClientId
		GROUP BY UserName
	END
	ELSE
	BEGIN
		SELECT TOP 5 count(*) AS Dates
			,b.UserName
		FROM WorkAssingService AS a
		INNER JOIN Users AS b ON a.AssignedTO = b.UserId
			AND convert(DATE, a.CreatedDate, 103) BETWEEN convert(DATE, @Fromdate, 103)
				AND convert(DATE, @Todate, 103)
			AND a.Activeflag = 1
			AND b.Activeflag = 1
			AND a.ClientId = @ClientId
			AND b.ClientId = @ClientId
		GROUP BY UserName
	END
END
