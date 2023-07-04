--Задание2

--Название и продолжительность самого длительного трека.

SELECT title,duration
FROM Track
WHERE duration  = (SELECT MAX(duration) FROM Track );

--Название треков, продолжительность которых не менее 3,5 минут.

SELECT title,duration  FROM Track
WHERE duration >= 3.5*60;

--Названия сборников, вышедших в период с 2018 по 2020 год включительно.

SELECT title FROM Сollection
WHERE production_year BETWEEN 2018 AND 2020;

--Исполнители, чьё имя состоит из одного слова.

SELECT name,RTRIM(LTRIM(name)) FROM implementers
WHERE RTRIM(LTRIM(name)) NOT LIKE '% %';

--Название треков, которые содержат слово «мой» или «my».

SELECT title FROM Track
WHERE title LIKE '%my%';


--Задание3

--Количество исполнителей в каждом жанре.

SELECT title ,count(implementers_id) FROM genreimplementers g
JOIN genre g2 ON g2.id =g.genre_id
GROUP BY g2.title;

--Количество треков, вошедших в альбомы 2019–2020 годов.

SELECT count(title),production_year FROM album a
JOIN track t ON t.album_id =a.id
WHERE a.production_year BETWEEN 2019 AND 2020
GROUP BY a.production_year;

--Средняя продолжительность треков по каждому альбому.

SELECT titles,avg(duration) FROM album a
JOIN track t ON t.album_id =a.id
GROUP BY a.titles;

--Все исполнители, которые не выпустили альбомы в 2020 году.

 SELECT name,production_year FROM implementers i
 JOIN albumimplementers a2  ON i.id = a2.implementers_id
 JOIN album a ON a2.album_id = a.id
 WHERE a.production_year != 2020;

--Названия сборников, в которых присутствует конкретный исполнитель.

select  DISTINCT cl.title  FROM Сollection cl
JOIN Сollectiontrack ct ON ct.collection_id =cl.id
JOIN track t ON ct.track_id = t.id
JOIN album a ON t.album_id =a.id
JOIN albumimplementers ai ON a.id=ai.album_id
JOIN implementers i ON i.id =ai.implementers_id
WHERE i.name = 'Mikhail Shafutinsky';


--Задание4

--Названия альбомов, в которых присутствуют исполнители более чем одного жанра.

SELECT titles,count(*)  FROM album a
JOIN albumimplementers a2 	ON a2.album_id = a.id
JOIN implementers i ON i.id = a2.implementers_id
JOIN genreimplementers g ON g.implementers_id =i.id
JOIN genre g2 ON g.genre_id = g2.id
GROUP BY titles
HAVING count(*)>1;

--Наименования треков, которые не входят в сборники.

SELECT t.title FROM track t
LEFT JOIN Сollectiontrack ct ON ct.track_id = t.id
WHERE ct.track_id  IS NULL;

--Исполнитель или исполнители, написавшие самый короткий по продолжительности трек

SELECT i.name,t.duration  FROM implementers i
JOIN albumimplementers al ON al.implementers_id =i.id
JOIN album a ON a.id = al.album_id
JOIN track t ON t.album_id =a.id
GROUP BY i.name,t.duration
HAVING  t.duration = (SELECT  MIN (t.duration) FROM track t);

--Названия альбомов, содержащих наименьшее количество треков.

SELECT titles,count(*)  FROM album a
JOIN track t ON t.album_id =a.id
GROUP BY a.titles
HAVING COUNT(t.title)=(SELECT MIN(count) FROM (SELECT titles, COUNT(t.title) FROM album a
JOIN track t ON a.id = t.album_id
GROUP BY titles) f );
