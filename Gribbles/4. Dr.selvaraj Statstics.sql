CREATE PROCEDURE SP_labonedoctor_Statstics_gribbles --   SP_labonedoctor_Statstics_gribbles '2016-12-10 00:00:00.000'
	(@Fromdate VARCHAR(max) = '')
AS
BEGIN
	DECLARE @listOfIDs TABLE (
		CountVal BIGINT
		,NAME VARCHAR(20)
		)

	IF (@Fromdate = '')
	BEGIN
		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(c.PatientID)
				FROM DoctorDepartment a
				INNER JOIN Doctors b ON a.doctordepartmentid = b.doctordepartmentid
				INNER JOIN Invoice c ON b.DoctorID = c.DoctorID
				WHERE DoctorName = 'MARK YONG LEONG'
					AND (
						MONTH(c.CreatedDate) = 1
						AND YEAR(c.CreatedDate) = YEAR(GETDATE())
						)
				)
			,'Jan'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(c.PatientID)
				FROM DoctorDepartment a
				INNER JOIN Doctors b ON a.doctordepartmentid = b.doctordepartmentid
				INNER JOIN Invoice c ON b.DoctorID = c.DoctorID
				WHERE DoctorName = 'MARK YONG LEONG'
					AND (
						MONTH(c.CreatedDate) = 2
						AND YEAR(c.CreatedDate) = YEAR(GETDATE())
						)
				)
			,'Feb'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(c.PatientID)
				FROM DoctorDepartment a
				INNER JOIN Doctors b ON a.doctordepartmentid = b.doctordepartmentid
				INNER JOIN Invoice c ON b.DoctorID = c.DoctorID
				WHERE DoctorName = 'MARK YONG LEONG'
					AND (
						MONTH(c.CreatedDate) = 3
						AND YEAR(c.CreatedDate) = YEAR(GETDATE())
						)
				)
			,'Mar'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(c.PatientID)
				FROM DoctorDepartment a
				INNER JOIN Doctors b ON a.doctordepartmentid = b.doctordepartmentid
				INNER JOIN Invoice c ON b.DoctorID = c.DoctorID
				WHERE DoctorName = 'MARK YONG LEONG'
					AND (
						MONTH(c.CreatedDate) = 4
						AND YEAR(c.CreatedDate) = YEAR(GETDATE())
						)
				)
			,'Apr'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(c.PatientID)
				FROM DoctorDepartment a
				INNER JOIN Doctors b ON a.doctordepartmentid = b.doctordepartmentid
				INNER JOIN Invoice c ON b.DoctorID = c.DoctorID
				WHERE DoctorName = 'MARK YONG LEONG'
					AND (
						MONTH(c.CreatedDate) = 5
						AND YEAR(c.CreatedDate) = YEAR(GETDATE())
						)
				)
			,'May'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(c.PatientID)
				FROM DoctorDepartment a
				INNER JOIN Doctors b ON a.doctordepartmentid = b.doctordepartmentid
				INNER JOIN Invoice c ON b.DoctorID = c.DoctorID
				WHERE DoctorName = 'MARK YONG LEONG'
					AND (
						MONTH(c.CreatedDate) = 6
						AND YEAR(c.CreatedDate) = YEAR(GETDATE())
						)
				)
			,'Jun'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(c.PatientID)
				FROM DoctorDepartment a
				INNER JOIN Doctors b ON a.doctordepartmentid = b.doctordepartmentid
				INNER JOIN Invoice c ON b.DoctorID = c.DoctorID
				WHERE DoctorName = 'MARK YONG LEONG'
					AND (
						MONTH(c.CreatedDate) = 7
						AND YEAR(c.CreatedDate) = YEAR(GETDATE())
						)
				)
			,'Jul'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(c.PatientID)
				FROM DoctorDepartment a
				INNER JOIN Doctors b ON a.doctordepartmentid = b.doctordepartmentid
				INNER JOIN Invoice c ON b.DoctorID = c.DoctorID
				WHERE DoctorName = 'MARK YONG LEONG'
					AND (
						MONTH(c.CreatedDate) = 8
						AND YEAR(c.CreatedDate) = YEAR(GETDATE())
						)
				)
			,'Aug'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(c.PatientID)
				FROM DoctorDepartment a
				INNER JOIN Doctors b ON a.doctordepartmentid = b.doctordepartmentid
				INNER JOIN Invoice c ON b.DoctorID = c.DoctorID
				WHERE DoctorName = 'MARK YONG LEONG'
					AND (
						MONTH(c.CreatedDate) = 9
						AND YEAR(c.CreatedDate) = YEAR(GETDATE())
						)
				)
			,'Sep'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(c.PatientID)
				FROM DoctorDepartment a
				INNER JOIN Doctors b ON a.doctordepartmentid = b.doctordepartmentid
				INNER JOIN Invoice c ON b.DoctorID = c.DoctorID
				WHERE DoctorName = 'MARK YONG LEONG'
					AND (
						MONTH(c.CreatedDate) = 10
						AND YEAR(c.CreatedDate) = YEAR(GETDATE())
						)
				)
			,'Oct'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(c.PatientID)
				FROM DoctorDepartment a
				INNER JOIN Doctors b ON a.doctordepartmentid = b.doctordepartmentid
				INNER JOIN Invoice c ON b.DoctorID = c.DoctorID
				WHERE DoctorName = 'MARK YONG LEONG'
					AND (
						MONTH(c.CreatedDate) = 12
						AND YEAR(c.CreatedDate) = YEAR(GETDATE())
						)
				)
			,'Nov'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(c.PatientID)
				FROM DoctorDepartment a
				INNER JOIN Doctors b ON a.doctordepartmentid = b.doctordepartmentid
				INNER JOIN Invoice c ON b.DoctorID = c.DoctorID
				WHERE DoctorName = 'MARK YONG LEONG'
					AND (
						MONTH(c.CreatedDate) = 12
						AND YEAR(c.CreatedDate) = YEAR(GETDATE())
						)
				)
			,'Dec'
			)

		SELECT *
		FROM @listOfIDs
	END
	ELSE
	BEGIN
		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(c.PatientID)
				FROM DoctorDepartment a
				INNER JOIN Doctors b ON a.doctordepartmentid = b.doctordepartmentid
				INNER JOIN Invoice c ON b.DoctorID = c.DoctorID
				WHERE DoctorName = 'MARK YONG LEONG'
					AND (
						MONTH(c.CreatedDate) = 1
						AND YEAR(c.CreatedDate) = YEAR(@Fromdate)
						)
				)
			,'Jan'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(c.PatientID)
				FROM DoctorDepartment a
				INNER JOIN Doctors b ON a.doctordepartmentid = b.doctordepartmentid
				INNER JOIN Invoice c ON b.DoctorID = c.DoctorID
				WHERE DoctorName = 'MARK YONG LEONG'
					AND (
						MONTH(c.CreatedDate) = 2
						AND YEAR(c.CreatedDate) = YEAR(@Fromdate)
						)
				)
			,'Feb'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(c.PatientID)
				FROM DoctorDepartment a
				INNER JOIN Doctors b ON a.doctordepartmentid = b.doctordepartmentid
				INNER JOIN Invoice c ON b.DoctorID = c.DoctorID
				WHERE DoctorName = 'MARK YONG LEONG'
					AND (
						MONTH(c.CreatedDate) = 3
						AND YEAR(c.CreatedDate) = YEAR(@Fromdate)
						)
				)
			,'Mar'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(c.PatientID)
				FROM DoctorDepartment a
				INNER JOIN Doctors b ON a.doctordepartmentid = b.doctordepartmentid
				INNER JOIN Invoice c ON b.DoctorID = c.DoctorID
				WHERE DoctorName = 'MARK YONG LEONG'
					AND (
						MONTH(c.CreatedDate) = 4
						AND YEAR(c.CreatedDate) = YEAR(@Fromdate)
						)
				)
			,'Apr'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(c.PatientID)
				FROM DoctorDepartment a
				INNER JOIN Doctors b ON a.doctordepartmentid = b.doctordepartmentid
				INNER JOIN Invoice c ON b.DoctorID = c.DoctorID
				WHERE DoctorName = 'MARK YONG LEONG'
					AND (
						MONTH(c.CreatedDate) = 5
						AND YEAR(c.CreatedDate) = YEAR(@Fromdate)
						)
				)
			,'May'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(c.PatientID)
				FROM DoctorDepartment a
				INNER JOIN Doctors b ON a.doctordepartmentid = b.doctordepartmentid
				INNER JOIN Invoice c ON b.DoctorID = c.DoctorID
				WHERE DoctorName = 'MARK YONG LEONG'
					AND (
						MONTH(c.CreatedDate) = 6
						AND YEAR(c.CreatedDate) = YEAR(@Fromdate)
						)
				)
			,'Jun'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(c.PatientID)
				FROM DoctorDepartment a
				INNER JOIN Doctors b ON a.doctordepartmentid = b.doctordepartmentid
				INNER JOIN Invoice c ON b.DoctorID = c.DoctorID
				WHERE DoctorName = 'MARK YONG LEONG'
					AND (
						MONTH(c.CreatedDate) = 7
						AND YEAR(c.CreatedDate) = YEAR(@Fromdate)
						)
				)
			,'Jul'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(c.PatientID)
				FROM DoctorDepartment a
				INNER JOIN Doctors b ON a.doctordepartmentid = b.doctordepartmentid
				INNER JOIN Invoice c ON b.DoctorID = c.DoctorID
				WHERE DoctorName = 'MARK YONG LEONG'
					AND (
						MONTH(c.CreatedDate) = 8
						AND YEAR(c.CreatedDate) = YEAR(@Fromdate)
						)
				)
			,'Aug'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(c.PatientID)
				FROM DoctorDepartment a
				INNER JOIN Doctors b ON a.doctordepartmentid = b.doctordepartmentid
				INNER JOIN Invoice c ON b.DoctorID = c.DoctorID
				WHERE DoctorName = 'MARK YONG LEONG'
					AND (
						MONTH(c.CreatedDate) = 9
						AND YEAR(c.CreatedDate) = YEAR(@Fromdate)
						)
				)
			,'Sep'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(c.PatientID)
				FROM DoctorDepartment a
				INNER JOIN Doctors b ON a.doctordepartmentid = b.doctordepartmentid
				INNER JOIN Invoice c ON b.DoctorID = c.DoctorID
				WHERE DoctorName = 'MARK YONG LEONG'
					AND (
						MONTH(c.CreatedDate) = 10
						AND YEAR(c.CreatedDate) = YEAR(@Fromdate)
						)
				)
			,'Oct'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(c.PatientID)
				FROM DoctorDepartment a
				INNER JOIN Doctors b ON a.doctordepartmentid = b.doctordepartmentid
				INNER JOIN Invoice c ON b.DoctorID = c.DoctorID
				WHERE DoctorName = 'MARK YONG LEONG'
					AND (
						MONTH(c.CreatedDate) = 11
						AND YEAR(c.CreatedDate) = YEAR(@Fromdate)
						)
				)
			,'Nov'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(c.PatientID)
				FROM DoctorDepartment a
				INNER JOIN Doctors b ON a.doctordepartmentid = b.doctordepartmentid
				INNER JOIN Invoice c ON b.DoctorID = c.DoctorID
				WHERE DoctorName = 'MARK YONG LEONG'
					AND (
						MONTH(c.CreatedDate) = 12
						AND YEAR(c.CreatedDate) = YEAR(@Fromdate)
						)
				)
			,'Dec'
			)

		SELECT *
		FROM @listOfIDs
	END
END
