INSERT INTO Enemy VALUES
	(1, 'Shamel', 'Not very evil'),
	(2, 'Moawya', 'Cant harm you'),
	(3,'Karam', 'Very dangerous'),
	(4, 'Mohammed','Cute'),
	(5, 'yagami light', 'Make sure you dont give him your name')
;

INSERT INTO Author VALUES
	(11, 'Ahmad'),
	(12, 'Sameer'),
	(13, 'Loay'),
	(14, 'Qamar'),
	(15, 'Yahia')
;

INSERT INTO Companion VALUES
	(21,'Leonard', 'moon'),
	(22,'John', 'Earth'),
	(23,'Mark', 'Sun'),
	(24,'Bill', 'Mars'),
	(25,'Nolan', 'Uranus')
;
INSERT INTO Doctor VALUES
	(55, 1, 'Amal', '01/01/2000', '01/01/2009', '01/01/2020'),
	(56, 2, 'Sausan', '01/01/2008', '01/01/2006', '01/01/2023'),
	(57, 3, 'Nadia', '01/01/1980', '01/01/2010', '01/01/2024'),
	(58, 4, 'Yasmeen', '01/01/1970', '01/01/2011', '01/01/2025'),
	(59, 5, 'Jamal', '01/01/1999', '01/01/2012', '01/01/2026')
;
INSERT INTO Episode VALUES
	(1, 1, 1, 'Horror','first ep','01-01-2020',11,55,'none'),
	(2, 2, 2, 'Horror','second ep','01-01-2009',12,56,'none'),
	(3, 3, 3, 'Horror','thrid ep','01-01-2010',13,57,'none'),
	(4, 4, 4, 'Horror','fourth ep','01-01-2011',14,58,'none'),
	(5, 5, 5, 'Horror','fifth ep','01-01-2012',15,59,'none')
;

INSERT INTO EpisodeCompanion VALUES
	(1, 1, 21),
	(2, 2, 22),
	(3, 3, 23),
	(4, 4, 24),
	(5, 5, 25)
;

INSERT INTO EpisodeEnemy VALUES
	(1, 1, 1),
	(2, 2, 2),
	(3, 3, 3),
	(4, 4, 4),
	(5, 5, 5)
;
