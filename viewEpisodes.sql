CREATE VIEW viewEpisodes AS
SELECT EpisodeId,
	Title,
	AuthorName,
	DoctorName,
	dbo.fnCompanions(EpisodeId) AS Companions,
	dbo.fnEnemies(EpisodeId) AS Enemies
FROM Episode
JOIN Doctor ON Episode.DoctorId = Doctor.DoctorId
JOIN Author ON Episode.AuthorId = Author.AuthorId