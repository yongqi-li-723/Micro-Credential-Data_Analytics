/* 1. Videos table. Create one table to keep track of the videos. This table should include a unique ID,
the title of the video, the length in minutes, and the URL. Populate the table with at least three
related videos from YouTube or other publicly available resources */

CREATE TABLE Videos
(
    VideoID integer NOT NULL,
    Title varchar(255) NULL,
	VideoLength smallint NOT NULL,
    URL varchar(255) NULL,
    CONSTRAINT PK_Videos PRIMARY KEY (VideoID)
)

INSERT INTO Videos VALUES ('1', 'Heroku Tutorial For Beginners', '4', 'https://www.youtube.com/watch?v=aUW5GAFhu6s&feature=youtu.be'),
						  ('2', 'Build & Deploy A Python Web App', '53', 'https://www.youtube.com/watch?v=w25ea_I89iM&feature=youtu.be'),
						  ('3', '12 Beginner Python Projects', '180', 'https://www.youtube.com/watch?v=8ext9G7xspg')

SELECT * FROM VIDEOS


/* 2. Create and populate Reviewers table. Create a second table that provides at least two user
reviews for each of at least two of the videos. These should be imaginary reviews that include
columns for the user’s name (“Asher”, “John”, etc.), the rating (which could be NULL, or a
number between 0 and 5), and a short text review (“Loved it!”). There should be a column that
links back to the ID column in the table of videos. */

CREATE TABLE Reviewers
(
    ReviewerID integer NOT NULL,
	FirstName varchar(50) NULL,
	LastName varchar(50) NULL,
	VideoID integer NOT NULL,
	Rate smallint NOT NULL,
    Review varchar(255) NULL,
    CONSTRAINT PK_Reviewers PRIMARY KEY (ReviewerID),
	CONSTRAINT FK_Reviewers Foreign KEY (VideoID) REFERENCES VIDEOS(VideoID) 
)

INSERT INTO Reviewers VALUES ('1', 'Jane', 'Smith', '3', '5', 'Love it!'),
							 ('2', 'Raymond', 'Scott', '1', '3', 'Just ok.'),
							 ('3', 'Alan', 'Dawn', '1', '4', 'Not bad.'),
							 ('4', 'Anna', 'Swift', '2', '1', 'Waste of my time !!!'),
							 ('5', 'Tom', 'Joseph', '3', '2', 'Not enjoying.')

SELECT * FROM REVIEWERS


-- 3. Report on Video Reviews. Write a JOIN statement that shows information from both tables.
SELECT V.VIDEOID, V.TITLE, V.VIDEOLENGTH, V.URL, R.REVIEWERID, R.FIRSTNAME, R.LASTNAME, R.RATE, R.REVIEW
FROM VIDEOS V
JOIN REVIEWERS R
ON V.VIDEOID = R.VIDEOID



