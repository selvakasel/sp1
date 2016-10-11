select * from Customer
select * from callregisterdetail
select * from Users

alter PROCEDURE ssrs_callreg_user --- ssrs_callreg_user '1','hari'
	(
	@clientid BIGINT
	,@username VARCHAR(150)
	)
AS
BEGIN
	SELECT a.customerName
		,b.EquipmentName
		,b.WarrantyStartDate
		,b.WarrantyEndDate
		,c.UserName
	FROM Customer a
	INNER JOIN callregisterdetail b ON a.ActiveFlag = b.Activeflag
	INNER JOIN Users c ON c.Activeflag = b.Activeflag
	WHERE a.ClientId = @clientid
		AND b.ClientId = @clientid
		AND c.ClientId = @clientid
		AND c.UserName = @username
END
