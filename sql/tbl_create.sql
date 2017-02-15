DROP TABLE IF EXISTS User, Album, Contain, Photo, AlbumAccess;


CREATE TABLE User
(
username VARCHAR(20) NOT NULL,
firstname VARCHAR(20) NOT NULL,
lastname VARCHAR(20) NOT NULL,
password VARCHAR(256) NOT NULL,
email VARCHAR(40) NOT NULL,
PRIMARY KEY (username)
);


CREATE TABLE Album
(
albumid int AUTO_INCREMENT,
title VARCHAR(50) NOT NULL,
created TIMESTAMP DEFAULT NOW(),
lastupdated TIMESTAMP DEFAULT NOW(),
username varchar(20) NOT NULL,
access ENUM('public', 'private') DEFAULT 'private',
PRIMARY KEY (albumid)
);


CREATE TABLE Contain
(
sequencenum int,
albumid int,
picid VARCHAR(40),
caption VARCHAR(255) NOT NULL,
PRIMARY KEY (sequencenum)
);
delimiter //
CREATE TRIGGER sequencenum BEFORE INSERT ON Contain FOR EACH ROW IF (SELECT COUNT(sequencenum) FROM Contain) = 0 THEN SET NEW.sequencenum = 0;
ELSE SET NEW.sequencenum = (SELECT MAX(sequencenum) FROM Contain) + 1; END IF;//
delimiter ;


CREATE TABLE Photo
(
picid VARCHAR(40),
format CHARACTER(3),
date TIMESTAMP DEFAULT NOW(),
PRIMARY KEY (picid)
);


CREATE TABLE AlbumAccess
(
albumid int,
username varchar(20) NOT NULL
);
