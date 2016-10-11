CREATE PROCEDURE ssrs_workassing_outd --- ssrs_workassing_outd '1','sunny'
	(
	@clientid BIGINT
	,@username VARCHAR(150)
	)
AS
BEGIN
	SELECT cs.customerName AS OrganizationName
		,c.EquipmentName
		,c.PartNo AS ModelNo
		,c.SerialNo
		,c.Description
		,w.CreatedDate AS DateOfOrgin
		,c.WarrantyEndDate
	FROM WorkAssingService w
	INNER JOIN users u ON u.UserId = w.AssignedTO
	INNER JOIN CallRegisterDetail c ON c.CRDetailId = w.CRDDetailID
	--inner join asset a on a.SerialNo = c.SerialNo
	INNER JOIN callregister CR ON CR.CRID = c.CRID
	INNER JOIN customer CS ON CS.Id = CR.CompanyID
	WHERE w.Activeflag = 1
		AND w.ClientId = @clientid
		AND u.UserName = @username
END
