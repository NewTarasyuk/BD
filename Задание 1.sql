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