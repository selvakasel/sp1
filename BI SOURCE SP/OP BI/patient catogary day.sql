sp_helptext sp_Get_Panel_Cash_count

CREATE PROCEDURE sp_op_panal (
	@Fromdate VARCHAR(max) = ''
	
	)
AS
BEGIN
	DECLARE @listOfIDs TABLE (
		CountVal BIGINT
		,NAME VARCHAR(20)
		)

	IF (
			@Fromdate = ''
			
			)
	BEGIN
		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(ispanel)
				FROM registration
				WHERE IsPanel = 0
				AND (CreatedDate = getdate())
				)
			,'General'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(ispanel)
				FROM registration
				WHERE IsPanel != 0
				AND (CreatedDate = getdate())
				)
			,'Panel'
			)

		

		SELECT *
		FROM @listOfIDs
	END
	ELSE
	BEGIN
		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(ispanel)
				FROM registration
				WHERE IsPanel = 0
					AND (CreatedDate = @Fromdate)
				)
			,'General'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(ispanel)
				FROM registration
				WHERE IsPanel != 0
					AND (CreatedDate = @Fromdate)
				)
			,'Panel'
			)

		

		SELECT *
		FROM @listOfIDs
	END
END
