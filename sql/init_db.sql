DROP TABLE IF EXISTS Docs;
DROP TABLE IF EXISTS Clipboard;


CREATE TABLE Docs
(
created DATETIME DEFAULT NOW(),
text VARCHAR(2000) NOT NULL,
title VARCHAR(100) NOT NULL DEFAULT "",
PRIMARY KEY (created)
);


CREATE TABLE Clipboard
(
created DATETIME DEFAULT NOW(),
text VARCHAR(2000) NOT NULL,
PRIMARY KEY (created)
);

INSERT INTO Clipboard (text) VALUES ('Record or paste to put text in this box!');