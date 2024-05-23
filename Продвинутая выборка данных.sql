Задание 1
CREATE TABLE "название_музыкальных_жанров"
(Id SERIAL PRIMARY KEY,
 genre_name char(50) NOT NULL
);

INSERT INTO название_музыкальных_жанров( genre_name) VALUES
('Шансон'),
('рок'),
('панк'),
('блюз');

CREATE TABLE "Исполнители"
(Id SERIAL PRIMARY KEY,
 ejecutante_name char(100) NOT NULL,
 genre_id INT NOT NULL
);


INSERT INTO Исполнители( ejecutante_name,genre_id) VALUES
('Михаил Круг',1),
('Алиса',2),
('Гражданская оборона',3), 
('Теуникова, Юлия Александровна',4);

CREATE TABLE "Альбом"
(Id SERIAL PRIMARY KEY,
 album_name char(50) NOT NULL,
 ejecutante_id INT NOT NULL,
 album_date date NOT NULL
);

INSERT INTO Альбом( album_name,ejecutante_id,album_date) VALUES
('Лизок',1,'1999-01-01'),
('Катя',1,'1999-01-01'),
('Энергия',2,'1985-01-01'),
('Поганая молодёжь',3,'1985-01-01');

CREATE TABLE "Треки"
(Id SERIAL PRIMARY KEY,
 track_name char(100) NOT NULL,
 ejecutante_id INT NOT NULL,
 duration int NOT NULL
);

INSERT INTO Треки(track_name,ejecutante_id,duration) VALUES
('Тверские Улици',1,163),
('Электричка',1,229),
('Мы вместе',3,162);

INSERT INTO название_музыкальных_жанров( genre_name) VALUES
('поп-рок');

INSERT INTO Исполнители( ejecutante_name,genre_id) VALUES
('The Beatles',5);

INSERT INTO Альбом( album_name,ejecutante_id,album_date) VALUES
('With The Beatles',5,'1963-11-30');

INSERT INTO Треки(track_name,ejecutante_id,duration) VALUES
('All My Loving',5,129);

INSERT INTO Исполнители( ejecutante_name,genre_id) VALUES
 ('Зве́ри',5);
 
Задание 2
1) SELECT "duration","track_name" FROM "Треки" ORDER BY "duration" DESC LIMIT 1;
2) SELECT "duration","track_name" FROM "Треки" WHERE "duration" > 210 ;
3) SELECT "collection_name","collection_data" FROM "Сборник" WHERE "collection_data" BETWEEN '2018-01-01' AND '2020-01-01' ;
4) WITH lastname_tabl AS (
  SELECT REGEXP_REPLACE(ejecutante_name , '^.*\s+(\S+)$', '\0') AS lastname FROM Исполнители 
)
SELECT * FROM lastname_tabl WHERE lastname NOT LIKE '%\0%';
5) SELECT * FROM "Треки"
	WHERE track_name LIKE '%my%';

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
	