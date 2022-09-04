CREATE TABLE Enemy(
	EnemyId INT PRIMARY KEY,
	EnemyName VARCHAR(255) NOT NULL,
	Description VARCHAR(255)
);

CREATE TABLE Author(
	AuthorId INT PRIMARY KEY,
	AuthorName VARCHAR(255) NOT NULL,
);

CREATE TABLE Doctor(
	DoctorId INT PRIMARY KEY,
	DoctorNumber INT NOT NULL,
	DoctorName VARCHAR(255) NOT NULL,
	BirthDate DATE,
	FirstEpisodeDate DATE,
	LastEpisodeDate DATE,
);

CREATE TABLE Companion(
	CompanionId INT PRIMARY KEY,
	CompanionName VARCHAR(255) NOT NULL,
	WhoPlayed VARCHAR(255)
);
CREATE TABLE Episode(
	EpisodeId INT PRIMARY KEY,
	SeriesNumber INT NOT NULL,
	EpisodeNumber INT NOT NULL,
	EpisodeType VARCHAR(255),
	Title VARCHAR(255),
	EpisodeDate Date,
	AuthorId int FOREIGN KEY REFERENCES Author(AuthorId),
	DoctorId int FOREIGN KEY REFERENCES Doctor(DoctorId),
	Notes VARCHAR(255)
);

CREATE TABLE EpisodeCompanion(
	EpisodeCompanionId INT PRIMARY KEY,
	EpisodeId INT FOREIGN KEY REFERENCES Episode(EpisodeId),
	CompanionId INT FOREIGN KEY REFERENCES Companion(CompanionId) 
);

CREATE TABLE EpisodeEnemy(
	EpisodeEnemyId INT PRIMARY KEY,
	EpisodeId INT FOREIGN KEY REFERENCES Episode(EpisodeId),
	EnemyId INT FOREIGN KEY REFERENCES Enemy(EnemyId)
);