ALTER PROCEDURE ssrs_issue --- ssrs_issue 'Wheel Chair', '','',1,0
	(
	@Name VARCHAR(200)
	,@Fromdate VARCHAR(max) = ''
	,@Todate VARCHAR(max) = ''
	,@clientid VARCHAR(50)
	,@issue VARCHAR(50)
	)
AS
BEGIN
	IF (
			@Fromdate = ''
			AND @Todate = ''
			)
	BEGIN
		SELECT cs.customerName AS OrganizationName
			,c.Description
			,cr.CreatedDate AS DateOfOrgin
			,c.warrantyenddate AS DateOfClose
		FROM CallRegisterDetail c
		INNER JOIN callregister CR ON CR.CRID = c.CRID
		INNER JOIN customer CS ON CS.Id = CR.CompanyID
		WHERE cr.issue = @issue
			AND c.EquipmentName = @Name
			AND cr.clientid = @clientid
			AND cr.issue IS NOT NULL
	END
	ELSE
	BEGIN
		SELECT cs.customerName AS OrganizationName
			,c.Description
			,cr.CreatedDate AS DateOfOrgin
			,c.warrantyenddate AS DateOfClose
		FROM CallRegisterDetail c
		INNER JOIN callregister CR ON CR.CRID = c.CRID
		INNER JOIN customer CS ON CS.Id = CR.CompanyID
		WHERE cr.issue = @issue
			AND c.EquipmentName = @Name
			AND cr.clientid = @clientid
			AND cr.issue IS NOT NULL
			AND convert(DATETIME, cr.CreatedDate, 103) BETWEEN @Fromdate
				AND convert(VARCHAR, @Todate, 103)
					-- CreatedDate BETWEEN @Fromdate	AND @Todate
	END
END
	--SELECT *
	--FROM callregister
	--SELECT CRID
	--	,CreatedDate
	--	,Calledby
	--	,Priority
	--	,issue
	--FROM callregister
	--WHERE issue = issue
	--	AND issue IS NOT NULL
