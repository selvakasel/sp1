CREATE PROCEDURE sp_repairstatus (
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
		SELECT TOP 5 count(DueDate) AS Dates
			,STATUS
		FROM WorkAssingService
		WHERE Activeflag = 1
			AND ClientId = @ClientId
		GROUP BY STATUS
	END
	ELSE
	BEGIN
		SELECT TOP 5 count(DueDate) AS Dates
			,STATUS
		FROM WorkAssingService
		WHERE convert(DATE, DueDate, 103) BETWEEN convert(DATE, @Fromdate, 103)
				AND convert(DATE, @Todate, 103)
			AND Activeflag = 1
			AND ClientId = @ClientId
		GROUP BY STATUS
	END
END
