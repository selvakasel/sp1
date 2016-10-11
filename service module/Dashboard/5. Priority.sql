ALTER PROCEDURE sp_prioritychart -- sp_prioritychart 1
	(@clientid BIGINT)
AS
BEGIN
	SELECT Priority
		,count(*) AS count
	FROM CallRegister
	WHERE ClientId = @clientid
		AND Activeflag = 1
		AND Priority != '---Select---'
	GROUP BY Priority
END
