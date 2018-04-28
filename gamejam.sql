/*source D:/wamp/www/gamejam.sql;*/
Use lugamejam;
DROP TABLE IF EXISTS PersonGame;
DROP TABLE IF EXISTS Person;
DROP TABLE IF EXISTS Picture;
DROP TABLE IF EXISTS Game;
DROP TABLE IF EXISTS Jam;


CREATE TABLE Jam(
	JamID	int unsigned	NOT NULL auto_increment,
	Theme		nvarchar(255)	NOT NULL,
	StartDate	date		NOT NULL,
	EndDate		date		NOT NULL,
	PRIMARY KEY (JamID)
);

CREATE TABLE Person(
	PersonID	int unsigned	NOT NULL auto_increment,
	FirstName	nvarchar(255)	NOT NULL,
	LastName	nvarchar(255)	NOT NULL,
	PRIMARY KEY (PersonID)
);
CREATE TABLE Game(
	GameID		int unsigned	NOT NULL auto_increment,
	GameName	nvarchar(255)	NOT NULL,
	JamID		int unsigned	NOT NULL,
	Notes		text,
	Place		int,
	PRIMARY KEY (GameID),
	FOREIGN KEY (JamID) REFERENCES Jam(JamID)
);
CREATE TABLE PersonGame(
	PersonID	int unsigned	NOT NULL,
	GameID		int unsigned	NOT NULL,
	FOREIGN KEY (PersonID) REFERENCES Person(PersonID),
	FOREIGN KEY (GameID) REFERENCES Game(GameID)
);
CREATE TABLE Picture(
	PictureID	int unsigned	NOT NULL auto_increment,
	GameID		int unsigned	NOT NULL,
	Picture		varchar(255),
	Description	text,
	PRIMARY KEY (PictureID),
	FOREIGN KEY (GameID) REFERENCES Game(GameID)
);


INSERT INTO PERSON VALUES(NULL,"Devin","Equitz");
INSERT INTO PERSON VALUES(NULL,"Dan","Koerber");
INSERT INTO PERSON VALUES(NULL,"Nick","Koerber");
INSERT INTO PERSON VALUES(NULL,"Ranger","Rossway");
INSERT INTO PERSON VALUES(NULL,"Mitch","Connor");
INSERT INTO PERSON VALUES(NULL,"Isaiah","Richards");
INSERT INTO PERSON VALUES(NULL,"Disappear","Alex");

INSERT INTO Jam VALUES(NULL,"You are the enemy",'2017-05-01','2017-05-08');
INSERT INTO Jam VALUES(NULL,"The end is the beginning",'2017-05-01','2017-05-08');
INSERT INTO Jam VALUES(NULL,"Multi-Tasking",'2017-05-01','2017-05-08');
INSERT INTO Jam VALUES(NULL,"Exploration",'2017-05-01','2017-05-08');

INSERT INTO game VALUES(NULL, "Anti-Bullet Hell",0,"Reverse Galaga. You would buy ships and spawn them on the enemy.",1);

INSERT INTO game VALUES(NULL, "Border Hack",1,"2D side scroller platformer. Parkour, big sword, good story.",1);
INSERT INTO game VALUES(NULL, "Disappear Alex's Alien game",1,"disappear to win",2);
INSERT INTO game VALUES(NULL, "Home for Dinner",1,"Golf Simulator",4);

INSERT INTO game VALUES(NULL, "2D Side Scroller Dan game",2,"stuff",2);
INSERT INTO game VALUES(NULL, "3D ball game",2,"stuff",1);
INSERT INTO game VALUES(NULL, "Office game",2,"Sit in office and click on stuff",3);

INSERT INTO game VALUES(NULL, "Anti-Bullet Hell v2",3,"stuff",1);
INSERT INTO game VALUES(NULL, "Unity game",3,"stuff",2);
INSERT INTO game VALUES(NULL, "Astroids Ranger",3,"stuff",3);


INSERT INTO game VALUES(1,0);
INSERT INTO game VALUES(1,1);
INSERT INTO game VALUES(1,4);
INSERT INTO game VALUES(1,1);
INSERT INTO game VALUES(2,7);
INSERT INTO game VALUES(2,5);
INSERT INTO game VALUES(2,8);
INSERT INTO game VALUES(3,6);
INSERT INTO game VALUES(3,9);
INSERT INTO game VALUES(4,6);
INSERT INTO game VALUES(5,3);
INSERT INTO game VALUES(6,2);
