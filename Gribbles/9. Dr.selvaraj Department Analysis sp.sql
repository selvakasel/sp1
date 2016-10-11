ALTER PROCEDURE Sp_Dr_Dept_analysis -- Sp_Dr_Dept_analysis ' 2016-01-29' ,  '2016-03-29'
	(
	@Fromdate VARCHAR(max) = ''
	,@Todate VARCHAR(max) = ''
	)
AS
BEGIN
	IF (
			@Fromdate = ''
			AND @Todate = ''
			)
	BEGIN
		SELECT TOP 5 count(a.PatientID) AS patient
			,c.DepartmentName
		FROM Invoice a
		INNER JOIN InvoiceDetail b ON a.InvoiceID = b.InvoiceID
		INNER JOIN labDepartment c ON b.DepartmentID = c.DepartmentID
		INNER JOIN doctors d ON a.DoctorID = d.DoctorID
		WHERE a.InvoiceID = b.InvoiceID
			AND d.DoctorID = a.DoctorID
			AND d.firstname = 'MARK YONG LEONG'
		GROUP BY c.DepartmentName
	END
	ELSE
	BEGIN
		SELECT TOP 5 count(a.PatientID) AS patient
			,c.DepartmentName
		FROM Invoice a
		INNER JOIN InvoiceDetail b ON a.InvoiceID = b.InvoiceID
		INNER JOIN labDepartment c ON b.DepartmentID = c.DepartmentID
		INNER JOIN doctors d ON a.DoctorID = d.DoctorID
		WHERE a.InvoiceID = b.InvoiceID
			AND d.DoctorID = a.DoctorID
			AND d.firstname = 'MARK YONG LEONG'
			AND (
				a.CreatedDate BETWEEN @Fromdate
					AND @Todate
				)
		GROUP BY c.DepartmentName
	END
END
	--select * from  Invoice
	--select * from  InvoiceDetail
	--select * from  labDepartment
	--select * from  doctors
