ALTER PROCEDURE equipement_rpt --- equipement_rpt '','','1','flower'
	(
	@Fromdate VARCHAR(max) = ''
	,@Todate VARCHAR(max) = ''
	,@clientid BIGINT
	,@EquipmentName VARCHAR(150)
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
			,cs.customerName AS OrganizationName
			,c.CreatedDate AS Dateoforgin
		FROM CallRegisterDetail c
		INNER JOIN callregister CR ON CR.CRID = c.CRID
		INNER JOIN customer CS ON CS.Id = CR.CompanyID
		WHERE c.ClientID = @clientid
			AND c.EquipmentName IS NOT NULL
			AND c.EquipmentName = @EquipmentName
	END
	ELSE
	BEGIN
		SELECT c.Description
			,c.Priority
			,cs.customerName AS OrganizationName
			,c.CreatedDate AS Dateoforgin
		FROM CallRegisterDetail c
		INNER JOIN callregister CR ON CR.CRID = c.CRID
		INNER JOIN customer CS ON CS.Id = CR.CompanyID
		WHERE c.ClientID = @clientid
			AND c.EquipmentName = @EquipmentName
			AND c.Activeflag = 1
			AND convert(DATE, c.CreatedDate, 103) BETWEEN @Fromdate
				AND convert(VARCHAR, @Todate, 103)
					-- AND a.CreatedDate BETWEEN @Fromdate		AND @Todate
	END
END
	--Alter PROCEDURE equipement_rpt --- equipement_rpt '2015-01-01','2016-08-01','1','CTG Fetal Monitor'
	--	(
	--	@Fromdate VARCHAR(max) = ''
	--	,@Todate VARCHAR(max) = ''	
	--	,@clientid bigint
	--	,@EquipmentName VARCHAR(150)
	--	)
	--AS
	--BEGIN
	--	IF (
	--			@Fromdate = ''
	--			AND @Todate = ''
	--			)
	--	BEGIN
	--		SELECT CRID
	--			,EquipmentName
	--			,PartNo
	--			,OverWarranty
	--			,CreatedDate
	--		FROM CallRegisterDetail
	--		WHERE ClientId=@clientid
	--		and  EquipmentName = @EquipmentName
	--	END
	--	ELSE
	--	BEGIN
	--		SELECT CRID
	--			,EquipmentName
	--			,PartNo
	--			,OverWarranty
	--			,CreatedDate
	--		FROM CallRegisterDetail
	--		WHERE  convert(datetime, CreatedDate, 103) BETWEEN @Fromdate	AND convert(varchar, @Todate, 103)
	--		-- CreatedDate BETWEEN @Fromdate AND @Todate
	--			AND  ClientId=@clientid
	--			and  EquipmentName = @EquipmentName
	--	END
	--END
	--SELECT *
	--FROM CallRegisterDetail
	--SELECT CRID
	--	,EquipmentName
	--	,PartNo
	--	,OverWarranty
	--	,CreatedDate
	--FROM CallRegisterDetail sp_helptext equipement_rpt
