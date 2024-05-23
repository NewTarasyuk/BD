3 задание

1) SELECT genre_name,COUNT(ejecutante_name)FROM "название_музыкальных_жанров"
INNER JOIN
  Исполнители
    ON название_музыкальных_жанров.Id = Исполнители.genre_id
	GROUP BY genre_name;
2) SELECT album_name,COUNT(track_name)FROM Альбом
INNER JOIN
  Треки
    ON Альбом.id = Треки.album_id
	WHERE album_date BETWEEN '2019-01-01' AND '2020-12-31'
	GROUP BY album_name;
	
3)SELECT album_name,COUNT(track_name), AVG(duration)FROM Альбом
INNER JOIN
  Треки
    ON Альбом.id = Треки.album_id
	GROUP BY album_name;
	
4)SELECT ejecutante_name FROM Альбом
INNER JOIN
  Исполнители
    ON Альбом.ejecutante_id = Исполнители.id
	WHERE album_date NOT BETWEEN '2019-01-01' AND '2020-12-31'
	GROUP BY ejecutante_name;
	
5)SELECT ejecutante_name,album_name FROM Альбом
INNER JOIN
  Исполнители
    ON Альбом.ejecutante_id = Исполнители.id
	WHERE ejecutante_name LIKE '%Михаил Круг%';
	