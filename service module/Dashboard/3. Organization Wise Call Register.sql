ALTER PROCEDURE sp_organizationscall -- sp_organizationscall '','','1'
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
			,b.customerName
		FROM callregister AS a
		INNER JOIN Customer AS b ON a.CompanyID = b.Id
		WHERE a.Activeflag = 1
			-- AND b.ActiveFlag = 1 
			AND a.ClientId = @ClientId
		--AND b.ClientID = @ClientId 
		GROUP BY customerName
	END
	ELSE
	BEGIN
		SELECT TOP 5 count(*) AS Dates
			,b.customerName
		FROM callregister AS a
		INNER JOIN Customer AS b ON a.CompanyID = b.Id
		WHERE convert(DATE, a.CreatedDate, 103) BETWEEN convert(DATE, @Fromdate, 103)
				AND convert(DATE, @Todate, 103)
			AND a.Activeflag = 1
			-- AND b.ActiveFlag = 1 
			AND a.ClientId = @ClientId
		-- AND b.ClientID = @ClientId 
		GROUP BY customerName
	END
END
