
Alter PROCEDURE Sp_Allpatientdetailslocations   -- Sp_Allpatientdetailslocations '2016-01-01' , '2016-07-01'

(
	@Fromdate varchar(max)
	,@Todate varchar(max)
	)
AS
BEGIN
	DECLARE @listOfIDs TABLE (
		CountVal BIGINT
		,NAME VARCHAR(20)
		)
	INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(*)	FROM Patient INNER JOIN Client ON Patient.ClientId = Client.ClientId
   INNER JOIN Area ON Patient.AreaID = Area.AreaID INNER JOIN City ON City.CityID = Area.CityID
   WHERE Patient.ActiveFlag = 1	AND City.CityName = 'Simpang' AND (Patient.CreatedDate BETWEEN @Fromdate AND @Todate)
				)
			,'Simpang'
			)

		--INSERT INTO @listOfIDs (
		--	CountVal
		--	,NAME
		--	)
		--VALUES (
		--	(
		--		SELECT count(*)	FROM RptPatientDetail_V	WHERE CityName = 'Petaling Jaya'AND (CreatedDate BETWEEN @Fromdate AND @Todate)
		--		)
		--	,'Petaling Jaya'
		--	)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(*)	FROM Patient INNER JOIN Client ON Patient.ClientId = Client.ClientId
   INNER JOIN Area ON Patient.AreaID = Area.AreaID INNER JOIN City ON City.CityID = Area.CityID
   WHERE Patient.ActiveFlag = 1	AND City.CityName = 'Permatang Pauh' AND (Patient.CreatedDate BETWEEN @Fromdate AND @Todate)
				)
			,'Permatang Pauh'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(*)	FROM Patient INNER JOIN Client ON Patient.ClientId = Client.ClientId
   INNER JOIN Area ON Patient.AreaID = Area.AreaID INNER JOIN City ON City.CityID = Area.CityID
   WHERE Patient.ActiveFlag = 1	AND City.CityName = 'Klang' AND (Patient.CreatedDate BETWEEN @Fromdate AND @Todate)
				)
			,'Klang'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(*)	FROM Patient INNER JOIN Client ON Patient.ClientId = Client.ClientId
   INNER JOIN Area ON Patient.AreaID = Area.AreaID INNER JOIN City ON City.CityID = Area.CityID
   WHERE Patient.ActiveFlag = 1	AND City.CityName = 'Kuala Kangsar' AND (Patient.CreatedDate BETWEEN @Fromdate AND @Todate)
				)
			,'Kuala Kangsar'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(*)	FROM Patient INNER JOIN Client ON Patient.ClientId = Client.ClientId
   INNER JOIN Area ON Patient.AreaID = Area.AreaID INNER JOIN City ON City.CityID = Area.CityID
   WHERE Patient.ActiveFlag = 1	AND City.CityName = 'Gopeng' AND (Patient.CreatedDate BETWEEN @Fromdate AND @Todate)
				)
			,'Gopeng'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(*)	FROM Patient INNER JOIN Client ON Patient.ClientId = Client.ClientId
   INNER JOIN Area ON Patient.AreaID = Area.AreaID INNER JOIN City ON City.CityID = Area.CityID
   WHERE Patient.ActiveFlag = 1	AND City.CityName = 'Changkat Keruing' AND (Patient.CreatedDate BETWEEN @Fromdate AND @Todate)
				)
			,'Changkat Keruing'
			)

		SELECT *
		FROM @listOfIDs
	END


