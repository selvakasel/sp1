ALTER PROCEDURE ssrs_org_call_reg --- ssrs_org_call_reg '','','1','Deepam Hespital'
	(
	@Fromdate VARCHAR(max) = ''
	,@Todate VARCHAR(max) = ''
	,@clientid BIGINT
	,@OrganisationName VARCHAR(150)
	)
AS
BEGIN
	IF (
			@Fromdate = ''
			AND @Todate = ''
			)
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
	ELSE
	BEGIN
		SELECT c.Description
			,c.Priority
			,c.EquipmentName
			,c.PartNo AS ModelNo
			,c.SerialNo
			,cs.CreatedDate AS Dateoforgin
		FROM CallRegisterDetail c
		INNER JOIN callregister CR ON CR.CRID = c.CRID
		INNER JOIN customer CS ON CS.Id = CR.CompanyID
		WHERE cr.Activeflag = 1
			AND convert(DATE, cr.CreatedDate, 103) BETWEEN @Fromdate
				AND convert(VARCHAR, @Todate, 103)
			AND cr.ClientID = @clientid
			AND cs.customerName = @OrganisationName
	END
END
	--ALTER PROCEDURE ssrs_org_call_reg ---- ssrs_org_call_reg '2015-11-11','2016-11-11',1,'Biomedics Intl'
	--	(
	--	@Fromdate VARCHAR(max) = ''
	--	,@Todate VARCHAR(max) = ''
	--	,@clientid BIGINT
	--	,@customerName VARCHAR(150)
	--	)
	--AS
	--BEGIN
	--	IF (
	--			@Fromdate = ''
	--			AND @Todate = ''
	--			)
	--	BEGIN
	--		SELECT a.CompanyID
	--			,a.Calledby
	--			,b.customerName
	--			,b.CreatedDate
	--		FROM callregister a
	--		INNER JOIN Customer b ON a.Activeflag = b.ActiveFlag
	--		WHERE a.ClientId = @clientid
	--			AND b.ClientID = @clientid
	--			AND b.customerName = @customerName
	--	END
	--	ELSE
	--	BEGIN
	--		SELECT a.CompanyID
	--			,a.Calledby
	--			,b.customerName
	--			,b.CreatedDate
	--		FROM callregister a
	--		INNER JOIN Customer b ON a.Activeflag = b.ActiveFlag
	--		WHERE a.ClientId = @clientid
	--			AND b.ClientID = @clientid
	--			AND b.CreatedDate BETWEEN @Fromdate
	--				AND @Todate
	--			AND b.customerName = @customerName
	--	END
	--END
	--SELECT *
	--FROM callregister
	--SELECT *
	--FROM Customer
	--sp_helptext ssrs_callreg_user
	--SELECT a.CompanyID
	--			,a.Calledby
	--			,b.customerName
	--			,b.CreatedDate
	--		FROM callregister a
	--		INNER JOIN Customer b 
	--		ON a.Activeflag = b.ActiveFlag
	--		WHERE a.ClientId = 1
	--			AND b.ClientID = 1
	--			AND customerName = 'Biomedics Intl'
