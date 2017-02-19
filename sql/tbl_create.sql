DROP TABLE IF EXISTS Docs;
DROP TABLE IF EXISTS Clipboard;


CREATE TABLE Docs
(
text VARCHAR(2000) NOT NULL,
title VARCHAR(100) NOT NULL DEFAULT "",
PRIMARY KEY (text)
);


CREATE TABLE Clipboard
(
text VARCHAR(2000) NOT NULL,
PRIMARY KEY (text)
);

INSERT INTO Clipboard (text) VALUES ('Record or paste to put text in this box!');