--Заполнение таблицы implementers

INSERT INTO Implementers(name)
VALUES('Philip Kirkorov');

INSERT INTO Implementers(name)
VALUES('Nikolay Baskov');

INSERT INTO Implementers(name)
VALUES('Louis Armstrong');

INSERT INTO Implementers(name)
VALUES('Gary Moore');

INSERT INTO Implementers(name)
VALUES('Mikhail Krug');

INSERT INTO Implementers(name)
VALUES('Stas Mikhailov');

INSERT INTO Implementers
VALUES(7,'Aria');

INSERT INTO Implementers
VALUES(8,'Mikhail Shafutinsky');




--Заполнение таблицы Genre

INSERT INTO Genre
VALUES(1,'pop');

INSERT INTO Genre
VALUES(2,'rock');

INSERT INTO Genre
VALUES(3,'shanson');

INSERT INTO Genre
VALUES(4,'blues');

INSERT INTO Genre
VALUES(5,'jazz');



--Заполнение таблицы жанры GenreImplementers

INSERT INTO GenreImplementers
VALUES(1,1);

INSERT INTO GenreImplementers
VALUES(1,2);

INSERT INTO GenreImplementers
VALUES(5,3);

INSERT INTO GenreImplementers
VALUES(4,4);

INSERT INTO GenreImplementers
VALUES(3,5);

INSERT INTO GenreImplementers
VALUES(3,6);

INSERT INTO GenreImplementers
VALUES(2,7);

INSERT INTO GenreImplementers
VALUES(3,8);

INSERT INTO GenreImplementers
VALUES(1,6);

--Заполнение таблицы Album

INSERT INTO Album(titles,production_year)
VALUES('For You',2007);

INSERT INTO Album(titles,production_year)
VALUES('A guest from the Kingdom of Shadows',2019);
INSERT INTO Album(titles,production_year)
VALUES('The sixth sense',2020);

INSERT INTO Album(titles,production_year)
VALUES('Bad for You Baby',2008);

INSERT INTO Album(titles,production_year)
VALUES('Game',2020);

INSERT INTO Album(titles,production_year)
VALUES('Take a walk, soul',1994);

INSERT INTO Album(titles,production_year)
VALUES('Satchmo',1958);

INSERT INTO Album(titles,production_year)
VALUES('Rose',1999);



--Заполнение таблицы Albumimplementers

INSERT INTO Albumimplementers
VALUES(1,1);

INSERT INTO Albumimplementers
VALUES(2,7);

INSERT INTO Albumimplementers
VALUES(3,6);

INSERT INTO Albumimplementers
VALUES(4,4);

INSERT INTO Albumimplementers
VALUES(5,2);

INSERT INTO Albumimplementers
VALUES(6,8);
INSERT INTO Albumimplementers
VALUES(7,3);

INSERT INTO Albumimplementers
VALUES(9,5);

--Заполнение таблицы  Track

INSERT INTO Track (title,duration,album_id)
VALUES('All flowers',232,1);

INSERT INTO Track (title,duration,album_id)
VALUES('Chasing glory',359,2);

INSERT INTO Track (title,duration,album_id)
VALUES('Do not let go',217,3);

INSERT INTO Track (title,duration,album_id)
VALUES('Down The Line',176,4);

INSERT INTO Track (title,duration,album_id)
VALUES('Walking Thru The Park',180,4);

INSERT INTO Track (title,duration,album_id)
VALUES('Mirage',216,5);


INSERT INTO Track (title,duration,album_id)
VALUES('Well, who told you',208,5);

INSERT INTO Track (title,duration,album_id)
VALUES('My home',287,5);

INSERT INTO Track (title,duration,album_id)
VALUES('September 3',381,6);

INSERT INTO Track (title,duration,album_id)
VALUES('Jazz Lips',381,7);

INSERT INTO Track (title,duration,album_id)
VALUES('Сlever',387,9);


--Заполнение таблицы Сollection

INSERT INTO Сollection (title,production_year)
VALUES('Golden chanson hits',2022);

INSERT INTO Сollection
VALUES(2,'Best Russian radio songs',2018);

INSERT INTO Сollection
VALUES(3,'Rock hits',2018);

INSERT INTO Сollection
VALUES(4,'Russian hits',2022);

--Заполнение таблицы Сollectiontrack

INSERT INTO Сollectiontrack
VALUES(1,9);

INSERT INTO Сollectiontrack
VALUES(2,8);