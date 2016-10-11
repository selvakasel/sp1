ALTER PROCEDURE sp_equipment -- sp_equipment '' ,'' , '1'
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
			,EquipmentName
		FROM CallRegisterDetail
		WHERE ActiveFlag = 1
			AND ClientId = @ClientId
			AND EquipmentName IS NOT NULL
		GROUP BY EquipmentName
	END
	ELSE
	BEGIN
		SELECT TOP 5 count(CreatedDate) AS Dates
			,EquipmentName
		FROM CallRegisterDetail
		WHERE convert(DATE, CreatedDate, 103) BETWEEN convert(DATE, @Fromdate, 103)
				AND convert(DATE, @Todate, 103)
			AND ActiveFlag = 1
			AND ClientId = @ClientId
			AND EquipmentName IS NOT NULL
		GROUP BY EquipmentName
	END
END
