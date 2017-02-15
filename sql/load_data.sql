INSERT INTO User (username, firstname, lastname, password, email)
VALUES ("sportslover", "Paul", "Walker", "sha512$344ef9bdac174275a32f90e3416c5a94$550ee018a2540f7325a4b18ad9e91d8aedb93b9e8e6643e632d5d9983483f1a3d2f31f03472bf52a6bab7e67f3d09ab08720edfc48d1863c89097cd47f570a13", "sportslover@hotmail.com");

INSERT INTO User (username, firstname, lastname, password, email)
VALUES ("traveler", "Rebecca", "Travolta", "sha512$4475d22e999646ea9b0177de62458e12$7cd6662e3564dabf36226dfb48ddedfe31d93a56c2d701c29b0bef55686d8f4b3e2f3b09ddc606f72012fad8d9dcfb02e1b5075c23db719666a0b1737ef6cb4b", "rebt@explorer.org");

INSERT INTO User (username, firstname, lastname, password, email)
VALUES ("spacejunkie", "Bob", "Spacey", "sha512$abe881feb60d43379c166d6e196e707e$8679b22ae9f05e630db713d679851a367155fdaf7bd0ca6df3415ab9471b79f26beac2d8fd10ae6bce53090d92aca77ab83d129c0a4d608cec34d0d22bb0f8fd", "bspace@spacejunkies.net");


INSERT INTO Album (title, created, lastupdated, username, access)
VALUES ("I love sports", NOW(), NOW(), "sportslover", 'public');

INSERT INTO Album (title, created, lastupdated, username, access)
VALUES ("I love football", NOW(), NOW(), "sportslover", 'private');

INSERT INTO Album (title, created, lastupdated, username, access)
VALUES ("Around The World", NOW(), NOW(), "traveler", 'public');

INSERT INTO Album (title, created, lastupdated, username, access)
VALUES ("Cool Space Shots", NOW(), NOW(), "spacejunkie", 'private');


INSERT INTO Contain (albumid, picid, caption)
VALUES (2, '001025dd643b0eb0661e359de86e3ea9', "");
INSERT INTO Photo (picid, format, date)
VALUES ('001025dd643b0eb0661e359de86e3ea9', 'jpg', NOW());

INSERT INTO Contain (albumid, picid, caption)
VALUES (2, '9a0a7d25af4f7a73f67dde74e8e54cff', "");
INSERT INTO Photo (picid, format, date)
VALUES ('9a0a7d25af4f7a73f67dde74e8e54cff', 'jpg', NOW());

INSERT INTO Contain (albumid, picid, caption)
VALUES (2, 'c8e60100f13ffe374d59e39dc4b6a318', "");
INSERT INTO Photo (picid, format, date)
VALUES ('c8e60100f13ffe374d59e39dc4b6a318', 'jpg', NOW());

INSERT INTO Contain (albumid, picid, caption)
VALUES (2, '5e8b6207f007338243d3e29d6b82acab', "");
INSERT INTO Photo (picid, format, date)
VALUES ('5e8b6207f007338243d3e29d6b82acab', 'jpg', NOW());

INSERT INTO Contain (albumid, picid, caption)
VALUES (4, '4ddba6e2f905e9778c6b6a48b6fc8e03', "");
INSERT INTO Photo (picid, format, date)
VALUES ('4ddba6e2f905e9778c6b6a48b6fc8e03', 'jpg', NOW());

INSERT INTO Contain (albumid, picid, caption)
VALUES (4, '09d8a979fa638125b02ae1578eb943fa', "");
INSERT INTO Photo (picid, format, date)
VALUES ('09d8a979fa638125b02ae1578eb943fa', 'jpg', NOW());

INSERT INTO Contain (albumid, picid, caption)
VALUES (4, '143ba34cb5c7e8f12420be1b576bda1a', "");
INSERT INTO Photo (picid, format, date)
VALUES ('143ba34cb5c7e8f12420be1b576bda1a', 'jpg', NOW());

INSERT INTO Contain (albumid, picid, caption)
VALUES (4, 'e615a10fc4222ede59ca3316c3fb751c', "");
INSERT INTO Photo (picid, format, date)
VALUES ('e615a10fc4222ede59ca3316c3fb751c', 'jpg', NOW());

INSERT INTO Contain (albumid, picid, caption)
VALUES (4, '65fb1e2aa4977d9414d1b3a7e4a3badd', "");
INSERT INTO Photo (picid, format, date)
VALUES ('65fb1e2aa4977d9414d1b3a7e4a3badd', 'jpg', NOW());

INSERT INTO Contain (albumid, picid, caption)
VALUES (1, 'b94f256c23dec8a2c0da546849058d9e', "");
INSERT INTO Photo (picid, format, date)
VALUES ('b94f256c23dec8a2c0da546849058d9e', 'jpg', NOW());

INSERT INTO Contain (albumid, picid, caption)
VALUES (1, '01e37cbdd55913df563f527860b364e8', "");
INSERT INTO Photo (picid, format, date)
VALUES ('01e37cbdd55913df563f527860b364e8', 'jpg', NOW());

INSERT INTO Contain (albumid, picid, caption)
VALUES (1, '8d554cd1d8bb7b49ca798381d1fc171b', "");
INSERT INTO Photo (picid, format, date)
VALUES ('8d554cd1d8bb7b49ca798381d1fc171b', 'jpg', NOW());

INSERT INTO Contain (albumid, picid, caption)
VALUES (1, '2e9e69e19342b98141789925e5f87f60', "");
INSERT INTO Photo (picid, format, date)
VALUES ('2e9e69e19342b98141789925e5f87f60', 'jpg', NOW());

INSERT INTO Contain (albumid, picid, caption)
VALUES (1, '298e8943ef1942159ef88be21c4619c9', "");
INSERT INTO Photo (picid, format, date)
VALUES ('298e8943ef1942159ef88be21c4619c9', 'jpg', NOW());

INSERT INTO Contain (albumid, picid, caption)
VALUES (1, 'cefe45eaeaeb599256dda325c2e972da', "");
INSERT INTO Photo (picid, format, date)
VALUES ('cefe45eaeaeb599256dda325c2e972da', 'jpg', NOW());

INSERT INTO Contain (albumid, picid, caption)
VALUES (1, 'bf755d13bb78e1deb59ef66b6d5c6a70', "");
INSERT INTO Photo (picid, format, date)
VALUES ('bf755d13bb78e1deb59ef66b6d5c6a70', 'jpg', NOW());

INSERT INTO Contain (albumid, picid, caption)
VALUES (1, '5f8d7957874f1303d8300e50f17e46d6', "");
INSERT INTO Photo (picid, format, date)
VALUES ('5f8d7957874f1303d8300e50f17e46d6', 'jpg', NOW());

INSERT INTO Contain (albumid, picid, caption)
VALUES (3, 'bac4fca50bed35b9a5646f632bf4c2e8', "");
INSERT INTO Photo (picid, format, date)
VALUES ('bac4fca50bed35b9a5646f632bf4c2e8', 'jpg', NOW());

INSERT INTO Contain (albumid, picid, caption)
VALUES (3, 'f5b57bd7a2c962c54d55b5ddece37158', "");
INSERT INTO Photo (picid, format, date)
VALUES ('f5b57bd7a2c962c54d55b5ddece37158', 'jpg', NOW());

INSERT INTO Contain (albumid, picid, caption)
VALUES (3, 'b7d833dd3aae203ca618759fc6f4fc01', "");
INSERT INTO Photo (picid, format, date)
VALUES ('b7d833dd3aae203ca618759fc6f4fc01', 'jpg', NOW());

INSERT INTO Contain (albumid, picid, caption)
VALUES (3, 'faa20c04097d40cb10793a19246f2754', "");
INSERT INTO Photo (picid, format, date)
VALUES ('faa20c04097d40cb10793a19246f2754', 'jpg', NOW());

INSERT INTO Contain (albumid, picid, caption)
VALUES (3, 'aaaadd578c78d21defaa73e7d1f08235', "");
INSERT INTO Photo (picid, format, date)
VALUES ('aaaadd578c78d21defaa73e7d1f08235', 'jpg', NOW());

INSERT INTO Contain (albumid, picid, caption)
VALUES (3, 'adb5c3af19664129141268feda90a275', "");
INSERT INTO Photo (picid, format, date)
VALUES ('adb5c3af19664129141268feda90a275', 'jpg', NOW());

INSERT INTO Contain (albumid, picid, caption)
VALUES (3, 'abf97ffd1f964f42790fb358e5258e8d', "");
INSERT INTO Photo (picid, format, date)
VALUES ('abf97ffd1f964f42790fb358e5258e8d', 'jpg', NOW());

INSERT INTO Contain (albumid, picid, caption)
VALUES (3, 'ea2db8b970671856e43dd011d7df5fad', "");
INSERT INTO Photo (picid, format, date)
VALUES ('ea2db8b970671856e43dd011d7df5fad', 'jpg', NOW());

INSERT INTO Contain (albumid, picid, caption)
VALUES (3, '76d79b81b9073a2323f0790965b00a68', "");
INSERT INTO Photo (picid, format, date)
VALUES ('76d79b81b9073a2323f0790965b00a68', 'jpg', NOW());

INSERT INTO Contain (albumid, picid, caption)
VALUES (3, '6510a4add59ef655ae3f0b6cdb24e140', "");
INSERT INTO Photo (picid, format, date)
VALUES ('6510a4add59ef655ae3f0b6cdb24e140', 'jpg', NOW());

INSERT INTO Contain (albumid, picid, caption)
VALUES (3, '28d38afca913a728b2a6bcf01aa011cd', "");
INSERT INTO Photo (picid, format, date)
VALUES ('28d38afca913a728b2a6bcf01aa011cd', 'jpg', NOW());

INSERT INTO Contain (albumid, picid, caption)
VALUES (3, '5fb04eb11cbf99429a05c12ce2f50615', "");
INSERT INTO Photo (picid, format, date)
VALUES ('5fb04eb11cbf99429a05c12ce2f50615', 'jpg', NOW());

INSERT INTO Contain (albumid, picid, caption)
VALUES (3, '39ee267d13ccd32b50c1de7c2ece54d6', "");
INSERT INTO Photo (picid, format, date)
VALUES ('39ee267d13ccd32b50c1de7c2ece54d6', 'jpg', NOW());

