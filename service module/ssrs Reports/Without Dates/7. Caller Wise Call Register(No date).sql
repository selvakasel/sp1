alter PROCEDURE ssrs_caller_wise_reg_outd --- ssrs_caller_wise_reg_outd '1','Bharathi'
	(
	@clientid BIGINT
	,@calledby VARCHAR(150)
	)
AS
BEGIN
	SELECT cs.customerName AS OrganizationName
		,c.EquipmentName
		,c.PartNo AS ModelNo
		,c.SerialNo
		,c.Description
		,cr.CreatedDate AS DateOfOrgin
	FROM CallRegisterDetail c
	INNER JOIN callregister CR ON CR.CRID = c.CRID
	INNER JOIN customer CS ON CS.Id = CR.CompanyID
	WHERE cr.ClientId = @clientid 
	and cr.Activeflag = 1  
		AND cr.Calledby = @calledby
END
