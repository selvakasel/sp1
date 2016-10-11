ALTER PROCEDURE rtp_priority --- rtp_priority 'Low',1
	(
	@Priority VARCHAR(150)
	,@clientid BIGINT
	)
AS
BEGIN
	SELECT DISTINCT cs.customerName AS OrganisationName
		,c.EquipmentName
		,c.Priority
		,c.PartNo AS ModelNo
		,c.SerialNo
		,cr.CreatedDate AS Dateoforgin
	FROM CallRegisterDetail c
	INNER JOIN callregister CR ON CR.CRID = c.CRID
	INNER JOIN customer CS ON CS.Id = CR.CompanyID
	WHERE cr.Activeflag = 1
		AND cr.clientid = @clientid
		AND cr.Priority = @Priority
END
