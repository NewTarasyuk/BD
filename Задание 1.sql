

create table if not exists Исполнители (
	Songwriters_id serial primary key,
	Songwriters_name VARCHAR (100) not null
);


create table if not exists Альбомы (
	album_id integer primary key,
	album_name varchar (100) not null,
	album_release_year date not null
);


create table if not exists Песни (
	Song_id integer primary key,
	Song_name varchar (100) not null,
	Song_duration time not null,
	album_id integer references Альбомы(album_id) not null
);


create table if not exists Жанр (
	genre_id serial primary key,
	genre_name varchar (100) not null unique
);


create table if not exists Исполнители_Жанров (
	Songwriters_id integer references Исполнители(Songwriters_id) not null,
	genre_id integer references Genres(genre_id) not null,
	constraint ke primary key (Songwriters_id, genre_id)
);


create table if not exists Исполнители_Альбомов (
	Songwriters_id integer references Исполнители(Songwriters_id) not null,
	album_id integer references Альбомы(album_id) not null,
	constraint ke_ primary key (Songwriters_id, album_id)
);


create table if not exists Сборники (
	collection_id serial primary key,
	collection_title varchar (100) not null,
	collection_date date not null
);


create table if not exists Сборники_Песен (
	collection_id integer references Сборники(collection_id) not null,
	Song_id integer references Песни(Song_id) not null,
	constraint ke__ primary key (collection_id, Song_id)
);
 
 Insert into Исполнители(Songwriters_id, Songwriters_name) values 
 (1, N'Захаров Владимир'), 
 (2, N'Михаил Круг'),
 (3, N'Сергей Трафимов'),
 (4, N'Бутырка'),
 (5, N'The Beatles'),
 (6, N'Нейромонах Феофан'),
 (7, N'Radio Tapok');



Insert into Альбомы (album_id, album_name, album_release_year) values 
(1, N'Я вернусь', '20150101'),
(2, N'Однажды', '20050101'),
(3, N'Город', '20010101'),
(4, N'Мадам', '19990101'),
(5, N'Мышка', '20000101'),
(6, N'Владимирский централ', '19990101'),
(7, N'Аты-баты', '20120823'),
(8, N'Ветер в голове', '20040724'),
(9, N'Меня встречают лагеря', '20070131'),
(10, N'Тает снег', '20120201'),
(11, N'Abbey Road', '19690925'),
(12, N'Плясать. Петь.', '20190920'),
(13, N'Эпоха Империй', '20231111'),
(14, N'Атака мертвецов', '20230301'),
(15, N'Гвардия Петра', '20231130'),
(16, N'Петропавловск', '20230831');


1
Insert into Песни (Song_id, Song_name, Song_duration, album_id) values 
(1, N'Рябина', '00:03:46', 1),
(2, N'Ветер-бродяга', '00:03:44', 1),
(3, N'Зеркало любви', '00:04:12', 1);
2
Insert into Песни (Song_id, Song_name, Song_duration, album_id) values 
(4, N'За окном', '00:04:15', 2), 
(5, N'Вагон', '00:04:21', 2), 
(6, N'А Осень Плакала', '00:05:09', 2);
3
Insert into Песни (Song_id, Song_name, Song_duration, album_id) values 
(7, N'Вика', '00:05:12', 3),
(8, N'Костры', '00:04:57', 3),
(9, N'Город', '00:02:28', 3);
4
Insert into Песни (Song_id, Song_name, Song_duration, album_id) values 
(10, N'Письмо маме', '00:04:23', 4),
(11, N'Владимирский централ', '00:05:02', 4);
5
Insert into Песни (Song_id, Song_name, Song_duration, album_id) values 
(12, N'Клава - сирень', '00:03:34', 5),
(13, N'Мышка', '00:04:24', 5),
(14, N'Мне тебя не понять', '00:03:47', 5);
6
Insert into Песни (Song_id, Song_name, Song_duration, album_id) values 
(15, N'Владимирский централ', '00:05:02', 6),
(16, N'Пусти меня, мама', '00:03:26', 6),
(17, N'Электричка', '00:03:47', 6);
7
Insert into Песни (Song_id, Song_name, Song_duration, album_id) values 
(18, N'Блюз-спецназ', '00:04:39', 7),
(19, N'Война', '00:05:20', 7),
(20, N'Дембельская', '00:02:53', 7);
8
Insert into Песни (Song_id, Song_name, Song_duration, album_id) values 
(21, N'Не Моя Вина', '00:02:37', 8),
(22, N'Ой, Братцы', '00:04:26', 8),
(23, N'Ой, Мамочки', '00:03:30', 8);
9
Insert into Песни (Song_id, Song_name, Song_duration, album_id) values 
(24, N'Девочка с центра', '00:03:45', 9),
(25, N'Кресты', '00:03:20', 9),
(26, N'Картинка медсестра', '00:03:37', 9);
10
Insert into Песни (Song_id, Song_name, Song_duration, album_id) values 
(27, N'Отсижу за чужие грехи', '00:03:42', 10),
(28, N'Парад осени', '00:03:33', 10);
11
Insert into Песни (Song_id, Song_name, Song_duration, album_id) values 
(29, N'Oh! Darling', '00:03:26', 11),
(30, N'The End', '00:02:21', 11);
12
Insert into Песни (Song_id, Song_name, Song_duration, album_id) values 
(31, N'Скучно в лесу', '00:01:54', 12),
(32, N'А теперь поет медведь', '00:02:59', 12);
13
Insert into Песни (Song_id, Song_name, Song_duration, album_id) values 
(33, N'Ермак', '00:04:06', 13),
(34, N'Смута', '00:03:37', 13),
(35, N'Петропавловск', '00:03:59', 13);
14
Insert into Песни (Song_id, Song_name, Song_duration, album_id) values 
(36, N'Атака мертвецов', '00:04:06', 13);
15

Insert into Жанр (genre_id, genre_name) values 
 (1, N'шансон'),
 (2, N'рок-н-ролл'),
 (3, N'славянский фолк'),
 (4, N'рок-музыка');
 


Insert into Исполнители_Жанров(Songwriters_id, genre_id) values 
(1, 1), 
(2, 1), 
(3, 1), 
(4, 1), 
(5, 2), 
(6, 3), 
(7, 4);



Insert into Исполнители_Альбомов(Songwriters_id, album_id) values 
 (1, 1), 
 (1, 2), 
 (1, 3), 
 (2, 4), 
 (2, 5), 
 (2, 6), 
 (3, 7), 
 (3, 8), 
 (4, 9), 
 (4, 10), 
 (5, 11), 
 (6, 12), 
 (7, 13);



Insert into Сборники(collection_id, collection_title, collection_date) values 
 (1, N'collection_1', '20170101'),
 (2, N'collection_2', '20170302'), 
 (3, N'collection_3', '20180821'), 
 (4, N'collection_4', '20180912'), 
 (5, N'collection_5', '20190604');

	
	
Insert into Сборники_Песен(collection_id, Song_id) values 
(1, 1),
(1, 2),
(2, 4),
(2, 5),
(2, 6),
(3, 7),
(3, 8),
(3, 9),
(4, 10),
(4, 13),
(5, 34),
(5, 35),
(5, 36);
