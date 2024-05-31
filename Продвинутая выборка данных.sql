 
Задание 2
1) SELECT Song_duration , Song_name FROM "Песни" ORDER BY Song_duration DESC LIMIT 1;
2) SELECT Song_duration, Song_name FROM "Песни" WHERE Song_duration > '00:03:50';
3) SELECT collection_title,collection_date FROM "Сборники" WHERE collection_date BETWEEN '2018-01-01' AND '2020-01-01' ;
4) WITH lastname_tabl AS (
  SELECT REGEXP_REPLACE(Songwriters_name , '^.*\s+(\S+)$', '\0') AS lastname FROM Исполнители 
)
SELECT * FROM lastname_tabl WHERE lastname NOT LIKE '%\0%';
5) SELECT * FROM "Песни"
	WHERE Song_name LIKE '%my%';

3 задание

1) 
SELECT genre_name, COUNT(Songwriters_id) FROM Жанр 
JOIN Исполнители_Жанров on Жанр.genre_id = Исполнители_Жанров.genre_id
GROUP BY genre_name;

2) 
SELECT COUNT(Song_name)FROM Альбомы
 JOIN
  Песни
    ON Альбомы.album_id = Песни.album_id
	WHERE album_release_year BETWEEN '2019-01-01' AND '2020-12-31'
	GROUP BY album_release_year;
	
3)SELECT album_name, AVG(Song_duration) FROM Песни
 JOIN
  Альбомы
    ON Альбомы.album_id = Песни.album_id
	GROUP BY album_name ;
	
4)SELECT * FROM Исполнители WHERE Songwriters_id NOT IN(SELECT Songwriters_id FROM Альбомы
join Исполнители_Альбомов
on Исполнители_Альбомов.album_id = Альбомы.album_id
WHERE album_release_year  BETWEEN '2020-01-01' AND '2020-12-31');
	
5)SELECT collection_title FROM Сборники
 JOIN
  Сборники_Песен
    ON Сборники_Песен.collection_id = Сборники.collection_id 
JOIN Песни
ON Сборники_Песен.Song_id = Песни.Song_id
JOIN Исполнители_Альбомов
ON Исполнители_Альбомов.album_id = Песни.album_id
JOIN Исполнители
ON  Исполнители.Songwriters_id = Исполнители_Альбомов.Songwriters_id
where Songwriters_name = 'Захаров Владимир'
	GROUP BY collection_title; ; 
	
