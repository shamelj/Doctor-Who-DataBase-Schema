CREATE FUNCTION fnEnemies (@Episodeid int)
RETURNS varchar(255)
AS
BEGIN
	DECLARE @Enemies VARCHAR(MAX)
	SELECT @Enemies = COALESCE(@Enemies + ', ', '') + Enemy.EnemyName
	FROM EpisodeEnemy JOIN Enemy 
		ON EpisodeEnemy.EnemyId = Enemy.EnemyId
	WHERE EpisodeEnemy.EpisodeId = @Episodeid;
	RETURN @Enemies;
end;