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