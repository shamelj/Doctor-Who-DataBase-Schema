CREATE PROCEDURE spSummariseEpisodes
AS
BEGIN	
	SELECT TOP 3 CompanionId, COUNT(*) AS Count
	FROM EpisodeCompanion
	GROUP BY CompanionId
	ORDER BY COUNT(*) DESC

	SELECT TOP 3 EnemyId, COUNT(*) AS Count
	FROM EpisodeEnemy
	GROUP BY EnemyId
	ORDER BY COUNT(*) DESC

END;