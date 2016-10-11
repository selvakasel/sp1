ALTER PROCEDURE ssrs_org_call_reg_outd --- ssrs_org_call_reg_outd '1','Bharat Hospital'
	(
	@clientid BIGINT
	,@OrganisationName VARCHAR(150)
	)
AS
BEGIN
	SELECT c.Description
		,c.Priority
		,c.EquipmentName
		,c.PartNo AS ModelNo
		,c.SerialNo
		,cr.CreatedDate AS Dateoforgin
	FROM CallRegisterDetail c
	INNER JOIN callregister CR ON CR.CRID = c.CRID
	INNER JOIN customer CS ON CS.Id = CR.CompanyID
	WHERE cr.ClientID = @clientid
		AND cr.Activeflag = 1
		AND cs.customerName = @OrganisationName
END
