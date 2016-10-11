ALTER PROCEDURE Sp_gribbles_Dept_test -- Sp_gribbles_Dept_test ' 2016-01-29' ,  '2016-03-29'
	(
	@Fromdate VARCHAR(max) = ''
	,@Todate VARCHAR(max) = ''
	)
AS
BEGIN
	DECLARE @listOfID TABLE (
		countval BIGINT
		,DepartmentName VARCHAR(20)
		)

	IF (
			@Fromdate = ''
			AND @Todate = ''
			)
	BEGIN
		INSERT INTO @listOfID (
			countval
			,DepartmentName
			)
		VALUES (
			(
				SELECT count(a.PatientID) AS countval
				FROM invoice a
				INNER JOIN invoicedetail b ON a.invoiceid = b.invoiceid
				INNER JOIN labDepartment c ON b.DepartmentID = c.departmentid
				WHERE c.Activeflag = 1
					AND c.DepartmentName = 'HAEMATOLOGY'
				GROUP BY c.DepartmentName
				)
			,'HAEMATOLOGY'
			)

		INSERT INTO @listOfID (
			countval
			,DepartmentName
			)
		VALUES (
			(
				SELECT count(a.PatientID) AS countval
				FROM invoice a
				INNER JOIN invoicedetail b ON a.invoiceid = b.invoiceid
				INNER JOIN labDepartment c ON b.DepartmentID = c.departmentid
				WHERE c.Activeflag = 1
					AND c.DepartmentName = 'IMMUNOLOGY '
				GROUP BY c.DepartmentName
				)
			,'IMMUNOLOGY'
			)

		INSERT INTO @listOfID (
			countval
			,DepartmentName
			)
		VALUES (
			(
				SELECT count(a.PatientID) AS countval
				FROM invoice a
				INNER JOIN invoicedetail b ON a.invoiceid = b.invoiceid
				INNER JOIN labDepartment c ON b.DepartmentID = c.departmentid
				WHERE c.Activeflag = 1
					AND c.DepartmentName = 'BIOCHEMISTRY'
				GROUP BY c.DepartmentName
				)
			,'BIOCHEMISTRY'
			)

		INSERT INTO @listOfID (
			countval
			,DepartmentName
			)
		VALUES (
			(
				SELECT count(a.PatientID) AS countval
				FROM invoice a
				INNER JOIN invoicedetail b ON a.invoiceid = b.invoiceid
				INNER JOIN labDepartment c ON b.DepartmentID = c.departmentid
				WHERE c.Activeflag = 1
					AND c.DepartmentName = 'MICROBIOLOGY'
				GROUP BY c.DepartmentName
				)
			,'MICROBIOLOGY'
			)

		INSERT INTO @listOfID (
			countval
			,DepartmentName
			)
		VALUES (
			(
				SELECT count(a.PatientID) AS countval
				FROM invoice a
				INNER JOIN invoicedetail b ON a.invoiceid = b.invoiceid
				INNER JOIN labDepartment c ON b.DepartmentID = c.departmentid
				WHERE c.Activeflag = 1
					AND c.DepartmentName = 'PATHOLOGY'
				GROUP BY c.DepartmentName
				)
			,'PATHOLOGY'
			)

		INSERT INTO @listOfID (
			countval
			,DepartmentName
			)
		VALUES (
			(
				SELECT count(a.PatientID) AS countval
				FROM invoice a
				INNER JOIN invoicedetail b ON a.invoiceid = b.invoiceid
				INNER JOIN labDepartment c ON b.DepartmentID = c.departmentid
				WHERE c.Activeflag = 1
					AND c.DepartmentName = 'HYSTOPHATOLOGY'
				GROUP BY c.DepartmentName
				)
			,'HYSTOPHATOLOGY'
			)

		INSERT INTO @listOfID (
			countval
			,DepartmentName
			)
		VALUES (
			(
				SELECT count(a.PatientID) AS countval
				FROM invoice a
				INNER JOIN invoicedetail b ON a.invoiceid = b.invoiceid
				INNER JOIN labDepartment c ON b.DepartmentID = c.departmentid
				WHERE c.Activeflag = 1
					AND c.DepartmentName = 'RADIOLOGY'
				GROUP BY c.DepartmentName
				)
			,'RADIOLOGY'
			)

		SELECT *
		FROM @listOfID
	END
	ELSE
	BEGIN
		INSERT INTO @listOfID (
			countval
			,DepartmentName
			)
		VALUES (
			(
				SELECT count(a.PatientID) AS countval
				FROM invoice a
				INNER JOIN invoicedetail b ON a.invoiceid = b.invoiceid
				INNER JOIN labDepartment c ON b.DepartmentID = c.departmentid
				WHERE c.Activeflag = 1
					AND a.CreatedDate BETWEEN @Fromdate
						AND @Todate
					AND c.DepartmentName = 'HAEMATOLOGY'
				GROUP BY c.DepartmentName
				)
			,'HAEMATOLOGY'
			)

		INSERT INTO @listOfID (
			countval
			,DepartmentName
			)
		VALUES (
			(
				SELECT count(a.PatientID) AS countval
				FROM invoice a
				INNER JOIN invoicedetail b ON a.invoiceid = b.invoiceid
				INNER JOIN labDepartment c ON b.DepartmentID = c.departmentid
				WHERE c.Activeflag = 1
					AND c.DepartmentName = 'IMMUNOLOGY '
					AND a.CreatedDate BETWEEN @Fromdate
						AND @Todate
				GROUP BY c.DepartmentName
				)
			,'IMMUNOLOGY'
			)

		INSERT INTO @listOfID (
			countval
			,DepartmentName
			)
		VALUES (
			(
				SELECT count(a.PatientID) AS countval
				FROM invoice a
				INNER JOIN invoicedetail b ON a.invoiceid = b.invoiceid
				INNER JOIN labDepartment c ON b.DepartmentID = c.departmentid
				WHERE c.Activeflag = 1
					AND c.DepartmentName = 'BIOCHEMISTRY'
					AND a.CreatedDate BETWEEN @Fromdate
						AND @Todate
				GROUP BY c.DepartmentName
				)
			,'BIOCHEMISTRY'
			)

		INSERT INTO @listOfID (
			countval
			,DepartmentName
			)
		VALUES (
			(
				SELECT count(a.PatientID) AS countval
				FROM invoice a
				INNER JOIN invoicedetail b ON a.invoiceid = b.invoiceid
				INNER JOIN labDepartment c ON b.DepartmentID = c.departmentid
				WHERE c.Activeflag = 1
					AND c.DepartmentName = 'MICROBIOLOGY'
					AND a.CreatedDate BETWEEN @Fromdate
						AND @Todate
				GROUP BY c.DepartmentName
				)
			,'MICROBIOLOGY'
			)

		INSERT INTO @listOfID (
			countval
			,DepartmentName
			)
		VALUES (
			(
				SELECT count(a.PatientID) AS countval
				FROM invoice a
				INNER JOIN invoicedetail b ON a.invoiceid = b.invoiceid
				INNER JOIN labDepartment c ON b.DepartmentID = c.departmentid
				WHERE c.Activeflag = 1
					AND c.DepartmentName = 'PATHOLOGY'
					AND a.CreatedDate BETWEEN @Fromdate
						AND @Todate
				GROUP BY c.DepartmentName
				)
			,'PATHOLOGY'
			)

		INSERT INTO @listOfID (
			countval
			,DepartmentName
			)
		VALUES (
			(
				SELECT count(a.PatientID) AS countval
				FROM invoice a
				INNER JOIN invoicedetail b ON a.invoiceid = b.invoiceid
				INNER JOIN labDepartment c ON b.DepartmentID = c.departmentid
				WHERE c.Activeflag = 1
					AND c.DepartmentName = 'HYSTOPHATOLOGY'
					AND a.CreatedDate BETWEEN @Fromdate
						AND @Todate
				GROUP BY c.DepartmentName
				)
			,'HYSTOPHATOLOGY'
			)

		INSERT INTO @listOfID (
			countval
			,DepartmentName
			)
		VALUES (
			(
				SELECT count(a.PatientID) AS countval
				FROM invoice a
				INNER JOIN invoicedetail b ON a.invoiceid = b.invoiceid
				INNER JOIN labDepartment c ON b.DepartmentID = c.departmentid
				WHERE c.Activeflag = 1
					AND c.DepartmentName = 'RADIOLOGY'
					AND a.CreatedDate BETWEEN @Fromdate
						AND @Todate
				GROUP BY c.DepartmentName
				)
			,'RADIOLOGY'
			)

		SELECT *
		FROM @listOfID
	END
END
	--select * from DoctorDepartment
	--select * from invoice 
	--select * from Doctors 
