CREATE FUNCTION fnCompanions (@Episodeid int)
RETURNS varchar(255)
AS
BEGIN
DECLARE @Companions VARCHAR(MAX)
SELECT @Companions = COALESCE(@Companions + ', ', '') + C.CompanionName
FROM EpisodeCompanion E JOIN Companion C 
	ON E.CompanionId = C.CompanionId
WHERE E.EpisodeId = @Episodeid;

RETURN @Companions;
end;
