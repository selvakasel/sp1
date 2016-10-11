ALTER PROCEDURE sp_dashboarddemo -- sp_dashboarddemo '','','1'
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
			,Calledby
		FROM callregister
		WHERE Activeflag = 1
			AND ClientId = @ClientId
		GROUP BY Calledby
	END
	ELSE
	BEGIN
		SELECT TOP 5 count(*) AS Dates
			,Calledby
		FROM callregister
		WHERE convert(DATE, CreatedDate, 103) BETWEEN convert(DATE, @Fromdate, 103)
				AND convert(DATE, @Todate, 103)
			AND Activeflag = 1
			AND ClientId = @ClientId
		GROUP BY Calledby
	END
END
