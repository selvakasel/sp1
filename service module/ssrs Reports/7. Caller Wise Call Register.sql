ALTER PROCEDURE ssrs_caller_wise_reg --- ssrs_caller_wise_reg '','','1','Bharathi' -- ssrs_caller_wise_reg '2011-01-01','2017-01-01','1','Bharathi'
	(
	@Fromdate VARCHAR(150) = ''
	,@Todate VARCHAR(150) = ''
	,@clientid BIGINT
	,@calledby VARCHAR(150)
	)
AS
BEGIN
	IF (
			@Fromdate = ''
			AND @Todate = ''
			)
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
			AND cr.Calledby = @calledby
	END
	ELSE
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
			AND cr.Calledby = @calledby
			AND convert(DATE, cr.CreatedDate, 103) BETWEEN @Fromdate
				AND convert(VARCHAR, @Todate, 103)
	END
END
