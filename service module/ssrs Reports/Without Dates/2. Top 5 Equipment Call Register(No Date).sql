ALTER PROCEDURE equipement_rpt_outd --- equipement_rpt_outd '1','CTG Fetal Monitor'
	(
	@clientid BIGINT
	,@EquipmentName VARCHAR(150)
	)
AS
BEGIN
	SELECT c.Description
		,c.Priority
		,cs.customerName AS OrganizationName
		,c.CreatedDate AS Dateoforgin
	FROM CallRegisterDetail c
	INNER JOIN callregister CR ON CR.CRID = c.CRID
	INNER JOIN customer CS ON CS.Id = CR.CompanyID
	WHERE c.ClientID = @clientid
		AND c.Activeflag = 1 
		AND c.EquipmentName IS NOT NULL
		AND c.EquipmentName = @EquipmentName
END
