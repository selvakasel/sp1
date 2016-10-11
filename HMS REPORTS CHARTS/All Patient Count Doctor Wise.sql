
ALter PROCEDURE Sp_AllPatientCountDoctorWiseage  -- Sp_AllPatientCountDoctorWiseage '2015-01-01' , '2016-08-01'
(
	@Fromdate varchar(max)
	,@Todate varchar(max)
	)
AS
BEGIN
	SELECT TOP 10 count(*) AS patient
		,DepartmentName
	FROM IpTraDoctorWiseConFees 
	WHERE (
			CreatedDate BETWEEN @Fromdate
				AND @Todate
			) And DepartmentName !='ambulance' 
	GROUP BY DepartmentName
END
