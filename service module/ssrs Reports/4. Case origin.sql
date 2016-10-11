ALTER PROCEDURE rtp_caseorgin --- rtp_caseorgin 1,'phone'
	@clientid BIGINT
	,@caseorigin VARCHAR(150)
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
		AND cr.ClientId = @clientid
		AND cr.Caseorigin = @caseorigin
END

