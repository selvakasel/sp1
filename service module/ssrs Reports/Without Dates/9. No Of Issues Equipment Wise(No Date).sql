ALTER PROCEDURE ssrs_issue_outd --- ssrs_issue_outd 'Wheel Chair',1,1
	(
	@Name VARCHAR(200)
	,@clientid VARCHAR(50)
	,@issue VARCHAR(50)
	)
AS
BEGIN
	SELECT CASE cr.issue
			WHEN 1
				THEN 'Repeated Issue'
			WHEN 0
				THEN 'New Issue'
			END AS issue
		,--selva
		cs.customerName AS OrganizationName
		,c.Description
		,cr.CreatedDate AS DateOfOrgin
		,c.warrantyenddate AS DateOfClose
	FROM CallRegisterDetail c
	INNER JOIN callregister CR ON CR.CRID = c.CRID
	INNER JOIN customer CS ON CS.Id = CR.CompanyID
	WHERE cr.issue = @issue
		AND cr.Issue IS NOT NULL --selva
		AND c.EquipmentName = @Name
		AND cr.clientid = @clientid
		AND cr.issue IS NOT NULL
		and cr.Activeflag=1 -- selva
END
