ALTER PROCEDURE ssrs_workassing --- ssrs_workassing '','','1','sunny'
	(
	@Fromdate VARCHAR(max) = ''
	,@Todate VARCHAR(max) = ''
	,@clientid BIGINT
	,@username VARCHAR(150)
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
	ELSE
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
			AND w.CreatedDate BETWEEN @Fromdate
				AND @Todate
	END
END
	--alter PROCEDURE ssrs_workassing --- ssrs_workassing '2015-06-15','2016-06-15','1','sunny'
	--	(
	--	@Fromdate VARCHAR(max) = ''
	--	,@Todate VARCHAR(max) = ''
	--	,@clientid BIGINT
	--	,@username VARCHAR(150)
	--	)
	--AS
	--BEGIN
	--	IF (
	--			@Fromdate = ''
	--			AND @Todate = ''
	--			)
	--	BEGIN
	--		SELECT a.CreatedDate
	--			,a.DueDate AS Dates
	--			,b.UserName
	--			,b.UserId
	--		FROM WorkAssingService AS a
	--		INNER JOIN Users AS b ON a.AssignedTO = b.UserId
	--		WHERE a.Activeflag = 1
	--			AND b.Activeflag = 1
	--			AND a.ClientId = @clientid
	--			AND b.ClientId = @clientid
	--			AND b.UserName = @username
	--	END
	--	ELSE
	--	BEGIN
	--		SELECT a.CreatedDate
	--			,a.DueDate AS Dates
	--			,b.UserName
	--			,b.UserId
	--		FROM WorkAssingService AS a
	--		INNER JOIN Users AS b ON a.AssignedTO = b.UserId
	--		WHERE a.Activeflag = 1
	--			AND b.Activeflag = 1
	--			AND a.ClientId = @clientid
	--			AND b.ClientId = @clientid
	--			AND a.CreatedDate BETWEEN @Fromdate
	--				AND @Todate
	--			AND b.UserName = @username
	--	END
	--END
	--SELECT *
	--FROM WorkAssingService
	--SELECT *
	--FROM Users
	--SELECT *
	--FROM CallRegisterDetail 
