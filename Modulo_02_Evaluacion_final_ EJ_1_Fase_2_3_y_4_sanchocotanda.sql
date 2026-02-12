/*Ejercicio 1. Creación de una bases de datos de películas extraídas de un API

Fase 2: Creación de la Base de Datos
En esta fase podéis elegir entre estas dos opciones:
. Crear la bases de datos y su estructura desde el MySQlWorkbench. --> Opcio elegida **
. Crear la base de datos** utilizando Python*/

CREATE DATABASE IF NOT EXISTS peliculas_adalab;
USE peliculas_adalab;

CREATE TABLE peliculas (
    id_pelicula INT PRIMARY KEY,
    titulo VARCHAR(150) NOT NULL,
    anio INT,
    duracion INT,
    adultos BOOLEAN NOT NULL,
    id_genero INT NOT NULL,
    FOREIGN KEY (id_genero) REFERENCES generos(id_genero)
);


CREATE TABLE generos (
    id_genero INT PRIMARY KEY,
    genero VARCHAR(50) NOT NULL
);


CREATE TABLE idiomas (
    id_idioma INT PRIMARY KEY,
    idioma VARCHAR(10) NOT NULL
);


CREATE TABLE fk_id_pelicula_id_idioma (
    id_pelicula INT NOT NULL,
    id_idioma INT NOT NULL,
    PRIMARY KEY (id_pelicula, id_idioma),
    FOREIGN KEY (id_pelicula) REFERENCES peliculas(id_pelicula),
    FOREIGN KEY (id_idioma) REFERENCES idiomas(id_idioma)
);

-- DROP TABLE subtitulos

/*Fase 3: Inserción de los Datos en la Base de Datos
En este apartado vamos a realizar la inserción de los datos extraídos en las tablas creadas en nuestra base
de datos MySQL.*/

INSERT INTO peliculas (id_pelicula, titulo, anio, duracion, adultos, id_genero)
VALUES
(1,'The Godfather',1972,175,0,1), 
(2,'The Godfather Part II',1974,202,0,1), 
(3,'Pulp Fiction',1994,154,1,1), 
(4,'Forrest Gump',1994,142,0,2), 
(5,'The Dark Knight',2008,152,0,3),
(6,'Fight Club',1999,139,1,2), 
(7,'Inception',2010,148,0,4), 
(8,'The Matrix',1999,136,0,4), 
(9,'The Shawshank Redemption',1994,142,0,2), 
(10,'Interstellar',2014,169,0,4), 
(11,'Gladiator',2000,155,0,3), 
(12,'Titanic',1997,195,0,5),
(13,'Avatar',2009,162,0,4),
(14,'Saving Private Ryan',1998,169,1,10),
(15,'The Silence of the Lambs',1991,118,1,6),
(16,'Se7en',1995,127,1,6),
(17,'Goodfellas',1990,146,1,1),
(18,'The Departed',2006,151,1,1),
(19,'Whiplash',2014,106,0,2),
(20,'La La Land',2016,128,0,11),
(21,'The Lord of the Rings: The Fellowship of the Ring',2001,178,0,7),
(22,'The Lord of the Rings: The Two Towers',2002,179,0,7),
(23,'The Lord of the Rings: The Return of the King',2003,201,0,7),
(24,'Star Wars: A New Hope',1977,121,0,4),
(25,'Star Wars: The Empire Strikes Back',1980,124,0,4),
(26,'Star Wars: Return of the Jedi',1983,131,0,4),
(27,'Back to the Future',1985,116,0,8),
(28,'Jurassic Park',1993,127,0,8),
(29,'The Lion King',1994,88,0,9),
(30,'Toy Story',1995,81,0,9),
(31,'Finding Nemo',2003,100,0,9),
(32,'Shrek',2001,90,0,9),
(33,'The Incredibles',2004,115,0,9),
(34,'WALL·E',2008,98,0,9),
(35,'Up',2009,96,0,9),
(36,'Spirited Away',2001,125,0,9),
(37,'Princess Mononoke',1997,134,1,9),
(38,'The Green Mile',1999,189,1,2),
(39,'The Truman Show',1998,103,0,2),
(40,'The Social Network',2010,120,0,2),
(41,'Joker',2019,122,1,2),
(42,'Black Panther',2018,134,0,3),
(43,'Iron Man',2008,126,0,3),
(44,'The Avengers',2012,143,0,3),
(45,'Avengers: Endgame',2019,181,0,3),
(46,'Dune',2021,155,0,4),
(47,'Mad Max: Fury Road',2015,120,1,3),
(48,'The Revenant',2015,156,1,8),
(49,'Parasite',2019,132,1,6),
(50,'Oldboy',2003,120,1,6),
(51,'The Pianist',2002,150,1,2),
(52,'The Wolf of Wall Street',2013,180,1,13),
(53,'Her',2013,126,0,2),
(54,'Gravity',2013,91,0,4),
(55,'The Shape of Water',2017,123,1,7),
(56,'Get Out',2017,104,1,12),
(57,'It',2017,135,1,12),
(58,'The Conjuring',2013,112,1,12),
(59,'A Quiet Place',2018,90,0,12),
(60,'The Exorcist',1973,122,1,12),
(61,'The Shining',1980,144,1,12),
(62,'Blade Runner',1982,117,1,4),
(63,'Blade Runner 2049',2017,164,1,4),
(64,'Alien',1979,117,1,4),
(65,'Aliens',1986,137,1,4),
(66,'The Terminator',1984,107,1,3),
(67,'Terminator 2: Judgment Day',1991,137,0,3),
(68,'Rocky',1976,120,0,2),
(69,'Raging Bull',1980,129,1,13),
(70,'Taxi Driver',1976,113,1,2),
(71,'Casablanca',1942,102,0,5),
(72,'Citizen Kane',1941,119,0,2),
(73,'Psycho',1960,109,1,12),
(74,'Vertigo',1958,128,0,15),
(75,'Rear Window',1954,112,0,15),
(76,'12 Angry Men',1957,96,0,2),
(77,'Schindler''s List',1993,195,1,2),
(78,'American Beauty',1999,122,1,2),
(79,'No Country for Old Men',2007,122,1,1),
(80,'The Big Lebowski',1998,117,1,14),
(81,'Amélie',2001,122,0,5),
(82,'The Intouchables',2011,112,0,2),
(83,'City of God',2002,130,1,1),
(84,'Pan''s Labyrinth',2006,118,1,7),
(85,'Roma',2018,135,1,2),
(86,'Slumdog Millionaire',2008,120,0,2),
(87,'Million Dollar Baby',2004,132,1,2),
(88,'The King''s Speech',2010,118,0,13),
(89,'Argo',2012,120,0,6),
(90,'Moonlight',2016,111,1,2),
(91,'Manchester by the Sea',2016,137,1,2),
(92,'Birdman',2014,119,1,2),
(93,'Django Unchained',2012,165,1,16),
(94,'Inglourious Basterds',2009,153,1,10),
(95,'The Hateful Eight',2015,168,1,16),
(96,'La vita è bella',1997,116,0,2),
(97,'Requiem for a Dream',2000,102,1,2),
(98,'Memento',2000,113,1,6),
(99,'Eternal Sunshine of the Spotless Mind',2004,108,0,2),
(100,'Donnie Darko',2001,113,1,2);


INSERT INTO generos (id_genero, genero)
VALUES (1,'Crimen'), (2,'Drama'), (3,'Acción'),(4,'Ciencia ficción'), (5,'Romance'), (6,'Thriller'), (7,'Fantasía'), (8,'Aventura'), 
(9,'Animación'), (10,'Bélico'), (11,'Musical'), (12,'Terror'), (13,'Biografía'), (14,'Comedia'), (15,'Suspense'), (16,'Western');


INSERT INTO idiomas (id_idioma, idioma)
VALUES (1,'es'), (2,'en'), (3,'fr'), (4,'de'), (5,'jp'), (6,'ko'), (7,'pt'), (8,'it');

INSERT INTO fk_id_pelicula_id_idioma (id_pelicula, id_idioma)
VALUES
(1,1),(1,2),
(2,1),(2,2),
(3,1),(3,2),
(4,1),(4,2),(4,3),
(5,1),(5,2),
(6,1),(6,2),
(7,1),(7,2),(7,4),
(8,1),(8,2),
(9,1),(9,2),
(10,1),(10,2),
(11,1),(11,2),
(12,1),(12,2),(12,3),
(13,1),(13,2),
(14,1),(14,2),
(15,1),(15,2),
(16,1),(16,2),
(17,1),(17,2),
(18,1),(18,2),
(19,1),(19,2),
(20,1),(20,2),
(21,1),(21,2),
(22,1),(22,2),
(23,1),(23,2),
(24,1),(24,2),
(25,1),(25,2),
(26,1),(26,2),
(27,1),(27,2),
(28,1),(28,2),
(29,1),(29,2),
(30,1),(30,2),
(31,1),(31,2),
(32,1),(32,2),
(33,1),(33,2),
(34,1),(34,2),
(35,1),(35,2),
(36,1),(36,2),(36,5),
(37,1),(37,2),(37,5),
(38,1),(38,2),
(39,1),(39,2),
(40,1),(40,2),
(41,1),(41,2),
(42,1),(42,2),
(43,1),(43,2),
(44,1),(44,2),
(45,1),(45,2),
(46,1),(46,2),
(47,1),(47,2),
(48,1),(48,2),
(49,1),(49,2),(49,6),
(50,1),(50,2),(50,6),
(51,1),(51,2),
(52,1),(52,2),
(53,1),(53,2),
(54,1),(54,2),
(55,1),(55,2),
(56,1),(56,2),
(57,1),(57,2),
(58,1),(58,2),
(59,1),(59,2),
(60,1),(60,2),
(61,1),(61,2),
(62,1),(62,2),
(63,1),(63,2),
(64,1),(64,2),
(65,1),(65,2),
(66,1),(66,2),
(67,1),(67,2),
(68,1),(68,2),
(69,1),(69,2),
(70,1),(70,2),
(71,1),(71,2),
(72,1),(72,2),
(73,1),(73,2),
(74,1),(74,2),
(75,1),(75,2),
(76,1),(76,2),
(77,1),(77,2),
(78,1),(78,2),
(79,1),(79,2),
(80,1),(80,2),
(81,1),(81,2),(81,3),
(82,1),(82,2),(82,3),
(83,1),(83,2),(83,7),
(84,1),(84,2),
(85,1),(85,2),
(86,1),(86,2),
(87,1),(87,2),
(88,1),(88,2),
(89,1),(89,2),
(90,1),(90,2),
(91,1),(91,2),
(92,1),(92,2),
(93,1),(93,2),
(94,1),(94,2),
(95,1),(95,2),
(96,1),(96,2),(96,8),
(97,1),(97,2),
(98,1),(98,2),
(99,1),(99,2),
(100,1),(100,2);

/*Fase 4: Obtener información a partir de los datos.
Una vez que tenemos toda la información, vamos a responder las siguientes preguntas utilizando consultas
en SQL:*/

-- 1. ¿Cuántas películas tienen una duración superior a 120 minutos?
SELECT titulo, duracion 
FROM peliculas
WHERE duracion > "120";

-- 2. ¿Cuántas películas incluyen subtítulos en español?
SELECT COUNT(DISTINCT peliculas.id_pelicula) AS peliculas_con_subtitulos_es
FROM peliculas
INNER JOIN fk_id_pelicula_id_idioma ON peliculas.id_pelicula = fk_id_pelicula_id_idioma.id_pelicula
INNER JOIN idiomas ON fk_id_pelicula_id_idioma.id_idioma = idiomas.id_idioma
WHERE idiomas.idioma = 'es';

SELECT COUNT(DISTINCT peliculas.id_pelicula) AS peliculas_con_subtitulos_es
FROM peliculas
LEFT JOIN fk_id_pelicula_id_idioma ON peliculas.id_pelicula = fk_id_pelicula_id_idioma.id_pelicula
RIGHT JOIN idiomas ON fk_id_pelicula_id_idioma.id_idioma = idiomas.id_idioma
WHERE idiomas.idioma = 'es';

SELECT COUNT(DISTINCT peliculas.id_pelicula) AS peliculas_con_subtitulos_ko
FROM peliculas
LEFT JOIN fk_id_pelicula_id_idioma ON peliculas.id_pelicula = fk_id_pelicula_id_idioma.id_pelicula
RIGHT JOIN idiomas ON fk_id_pelicula_id_idioma.id_idioma = idiomas.id_idioma
WHERE idiomas.idioma = 'ko';

SELECT COUNT(DISTINCT peliculas.id_pelicula) AS peliculas_con_subtitulos_ko
FROM peliculas
INNER JOIN fk_id_pelicula_id_idioma ON peliculas.id_pelicula = fk_id_pelicula_id_idioma.id_pelicula
INNER JOIN idiomas ON fk_id_pelicula_id_idioma.id_idioma = idiomas.id_idioma
WHERE idiomas.idioma = 'ko';

-- 3. ¿Cuántas películas tienen contenido adulto?
SELECT COUNT(DISTINCT peliculas.id_pelicula) AS peliculas_adultos
FROM peliculas
WHERE adultos = '1';

-- 4. ¿Cuál es la película más antigua registrada en la base de datos?
SELECT titulo
FROM peliculas
ORDER BY anio ASC
LIMIT 1;

-- 5. Muestra el promedio de duración de las películas agrupado por género.
SELECT generos.genero AS genero,
AVG(peliculas.duracion) AS promedio_duracion
FROM generos
INNER JOIN peliculas ON generos.id_genero = peliculas.id_genero
GROUP BY generos.genero;

SELECT generos.genero AS genero,
AVG(peliculas.duracion) AS promedio_duracion
FROM generos
RIGHT JOIN peliculas ON generos.id_genero = peliculas.id_genero
GROUP BY generos.genero;

SELECT generos.genero AS genero,
AVG(peliculas.duracion) AS promedio_duracion
FROM generos
LEFT JOIN peliculas ON generos.id_genero = peliculas.id_genero
GROUP BY generos.genero;

-- 6. ¿Cuántas películas por año se han registrado en la base de datos? Ordena de mayor a menor.
SELECT anio, COUNT(*) AS peliculas_por_anio
FROM peliculas
GROUP BY anio
ORDER BY peliculas_por_anio DESC;

-- 7. ¿Cuál es el año con más películas en la base de datos
SELECT anio, COUNT(*) AS peliculas_por_anio
FROM peliculas
GROUP BY anio
ORDER BY peliculas_por_anio DESC
LIMIT 1;

-- 8. Obtén un listado de todos los géneros y cuántas películas corresponden a cada uno.
SELECT genero, COUNT(*) AS peliculas_por_genero
FROM generos
LEFT JOIN peliculas ON generos.id_genero = peliculas.id_genero
GROUP BY generos.genero
ORDER BY peliculas_por_genero DESC;

-- 9. Muestra todas las películas cuyo título contenga la palabra "Godfather" (puedes usar cualquier palabra)
SELECT titulo
FROM peliculas
WHERE titulo REGEXP "Godfather";

SELECT titulo
FROM peliculas
WHERE titulo REGEXP "Potter";

SELECT titulo
FROM peliculas
WHERE titulo REGEXP "bella";

SELECT titulo
FROM peliculas
WHERE titulo REGEXP "Lord";


