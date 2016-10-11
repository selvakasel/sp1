ALTER PROCEDURE sp_LastSevenandone -- sp_LastSevenandone '1' 
	(@ClientId BIGINT)
AS
BEGIN
	DECLARE @listOfID TABLE (
		CountVal BIGINT
		,NAME VARCHAR(20)
		)

	INSERT INTO @listOfID (
		CountVal
		,NAME
		)
	VALUES (
		(
			SELECT DISTINCT count(*) AS Daycount
			FROM callregister cr
			WHERE convert(DATE, CreatedDate, 103) BETWEEN DATEADD(day, - 7, convert(DATE, getdate(), 103))
					AND convert(DATE, convert(DATE, getdate(), 103), 103)
				AND cr.ActiveFlag = 1
				AND cr.ClientId = @ClientId
			)
		,'Last Seven Days'
		)

	INSERT INTO @listOfID (
		CountVal
		,NAME
		)
	VALUES (
		(
			SELECT DISTINCT count(*) AS DayCount2
			FROM callregister cr
			WHERE convert(DATE, CreatedDate, 103) BETWEEN DATEADD(day, - 1, convert(DATE, getdate(), 103))
					AND convert(DATE, convert(DATE, getdate(), 103), 103)
				AND cr.ActiveFlag = 1
				AND cr.ClientId = @ClientId
			)
		,'Less than One Day'
		)

	SELECT *
	FROM @listOfID
END
	--ALTER PROCEDURE sp_LastSevenandone -- sp_LastSevenandone '1'
	--	(@ClientId BIGINT)
	--AS
	--BEGIN
	--	DECLARE @inputdate VARCHAR(max);
	--	DECLARE @count1 BIGINT;
	--	DECLARE @count2 BIGINT;
	--	SET @inputdate = getdate();
	--	DECLARE @coninputdate DATE;
	--	SET @coninputdate = convert(DATE, @inputdate, 103);
	--	DECLARE @addsevendays DATE;
	--	DECLARE @addsevendays2 DATE;
	--	SET @addsevendays = DATEADD(day, - 7, @coninputdate);
	--	PRINT @addsevendays
	--	SET @count1 = (
	--			SELECT DISTINCT count(*) AS Daycount
	--			FROM callregister cr
	--			WHERE convert(DATE, CreatedDate, 103) BETWEEN @addsevendays
	--					AND convert(DATE, @coninputdate, 103)
	--				AND cr.ActiveFlag = 1
	--				AND cr.ClientId = @ClientId
	--			)
	--	SET @addsevendays2 = DATEADD(day, - 1, @coninputdate);
	--	PRINT @addsevendays2
	--	SET @count2 = (
	--			SELECT DISTINCT count(*) AS DayCount2
	--			FROM callregister cr
	--			WHERE convert(DATE, CreatedDate, 103) BETWEEN @addsevendays2
	--					AND convert(DATE, @coninputdate, 103)
	--				AND cr.ActiveFlag = 1
	--				AND cr.ClientId = @ClientId
	--			)
	--	CREATE TABLE temptable (
	--		firstvalue VARCHAR(max)
	--		,secvalue BIGINT
	--		)
	--	INSERT INTO temptable (
	--		firstvalue
	--		,secvalue
	--		)
	--	VALUES (
	--		'Last Seven Days'
	--		,NULL
	--		)
	--	INSERT INTO temptable (
	--		firstvalue
	--		,secvalue
	--		)
	--	VALUES (
	--		'Less than One Day'
	--		,NULL
	--		)
	--	UPDATE temptable
	--	SET secvalue = @count1
	--	WHERE firstvalue = 'Last Seven Days'
	--	UPDATE temptable
	--	SET secvalue = @count2
	--	WHERE firstvalue = 'Less than One Day'
	--	SELECT *
	--	FROM temptable
	--	DROP TABLE temptable
	--END
