ALTER PROCEDURE sp_repeatedIssues -- sp_repeatedIssues  'UV Therapy System', '' , '','1' 
	(
	@Name VARCHAR(200)
	,@Fromdate VARCHAR(50) = ''
	,@Todate VARCHAR(50) = ''
	,@ClientId BIGINT
	)
AS
BEGIN
	IF (
			@Fromdate = ''
			AND @Todate = ''
			)
	BEGIN
		SELECT count(*) AS Dates
			,c.issue
		FROM callregister c
		INNER JOIN CallRegisterDetail cr ON c.CRID = cr.CRID
		WHERE c.ActiveFlag = 1
			AND cr.EquipmentName = @Name
			AND c.ClientId = @ClientId
			AND issue IS NOT NULL
		GROUP BY issue
	END
	ELSE
	BEGIN
		SELECT count(*) AS Dates
			,c.issue
		FROM callregister c
		INNER JOIN CallRegisterDetail cr ON c.CRID = cr.CRID
		WHERE cr.EquipmentName = @Name
			AND convert(DATE, cr.CreatedDate, 103) BETWEEN convert(DATE, @Fromdate, 103)
				AND convert(DATE, @Todate, 103)
			AND c.ActiveFlag = 1
			AND c.ClientId = @ClientId
			AND issue IS NOT NULL
		GROUP BY issue
	END
END
	--AND convert(DATE, c.CreatedDate, 103) BETWEEN convert(VARCHAR(50), @Fromdate, 103)	AND convert(VARCHAR(50), @Todate, 103)
	-- select EquipmentName from CallRegisterDetail where equipmentname is not null
	-- Ultrasound System
	-- CTG Fetal Monitor
	-- Ultrasound System
	-- CTG Fetal Monitor
	-- Ultrasound System
	-- Wheel Chair
	-- Keyboard
	-- Flower
	-- Light
