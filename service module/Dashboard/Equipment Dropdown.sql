ALTER PROCEDURE Equipmentname_drop
AS
BEGIN
	SELECT DISTINCT EquipmentName
	FROM CallRegisterDetail
	WHERE Activeflag = 1
		AND EquipmentName IS NOT NULL
END
