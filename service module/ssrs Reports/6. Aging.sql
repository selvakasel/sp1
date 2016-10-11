
ALTER PROCEDURE sp_LastSevenandone_reports --  sp_LastSevenandone_reports '1','Less than One Day'
	(
	@clientid BIGINT
	,@Aging VARCHAR(max)
	)
AS
BEGIN
	IF (@Aging = 'Last Seven Days')
	BEGIN
		SELECT cs.customerName AS OrganizationName
			,c.EquipmentName
			,c.PartNo AS ModelNo
			,c.SerialNo
			,c.priority
			,cr.Caseorigin
			,c.warrantyenddate
		FROM callregister cr
		INNER JOIN CallRegisterDetail c ON c.CRID = cr.crid
		INNER JOIN customer CS ON CS.Id = CR.CompanyID
		--WHERE convert(DATE, cr.CreatedDate, 103) BETWEEN DATEADD(day, - 7, getdate())	AND convert(DATE, getdate(), 103) -- selva
		WHERE convert(DATE, cr.CreatedDate, 103) BETWEEN DATEADD(day, - 7, convert(DATE, getdate(), 103))	AND convert(DATE, convert(DATE, getdate(), 103), 103)--selva
			AND cr.ActiveFlag = 1
			AND cr.ClientId = @clientid
	END
	ELSE
		IF (@Aging = 'Less than One Day')
		BEGIN
			SELECT cs.customerName AS OrganizationName
				,c.EquipmentName
				,c.PartNo AS ModelNo
				,c.SerialNo
				,c.priority
				,cr.Caseorigin
				,c.warrantyenddate
				,cr.Calledby
			FROM callregister cr
			INNER JOIN CallRegisterDetail c ON c.CRID = cr.crid
			INNER JOIN customer CS ON CS.Id = CR.CompanyID
			--WHERE convert(DATE, cr.CreatedDate, 103) BETWEEN DATEADD(day, - 1, getdate()) AND convert(DATE, getdate(), 103)-- selva
			WHERE convert(DATE, cr.CreatedDate, 103) BETWEEN DATEADD(day, - 1, convert(DATE, getdate(), 103))	AND convert(DATE, convert(DATE, getdate(), 103), 103) --selva
				AND cr.ActiveFlag = 1
				AND cr.ClientId = 1
		END
END