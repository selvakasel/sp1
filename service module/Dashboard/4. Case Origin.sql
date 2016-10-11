ALTER PROCEDURE sp_caseoriginchart -- sp_caseoriginchart '1'
	(@clientid BIGINT)
AS
BEGIN
	SELECT caseorigin
		,count(*) AS count
	FROM CallRegister
	WHERE ClientId = @clientid
		AND Activeflag = 1
	GROUP BY Caseorigin
END
