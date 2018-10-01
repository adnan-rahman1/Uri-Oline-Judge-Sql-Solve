--- URI Online Judge SQL
--- Copyright URI Online Judge
--- www.urionlinejudge.com.br
--- Problem 2612

CREATE TABLE genres (
  id numeric PRIMARY KEY,
  description varchar(50)
);

CREATE TABLE movies (
  id numeric PRIMARY KEY,
  name varchar(50),
  id_genres numeric REFERENCES genres (id)
);

CREATE TABLE actors (
  id numeric PRIMARY KEY,
  name varchar(50)
);

CREATE TABLE movies_actors (
  id_movies numeric REFERENCES movies (id),
  id_actors numeric REFERENCES actors (id)
);

INSERT INTO genres (id, description)
VALUES
  (1,	'Animation'),
  (2,	'Horror'),
  (3,	'Action'),
  (4,	'Drama'),
  (5,	'Comedy');

INSERT INTO movies (id, name, id_genres)
VALUES
  (1,	'Batman',	3),
  (2,	'The Battle of the Dark River',	3),
  (3,	'White Duck',	1),
  (4,	'Breaking Barriers',	4),
  (5,	'The Two Hours',	2);

INSERT INTO actors (id, name)
VALUES
  (1,	'Brad Antonio'),
  (2,	'Marcelo Silva'),
  (3,	'Miguel Silva'),
  (4,	'Drake Frost'),
  (5,	'Rodrigo Juares Rodriguez');

INSERT INTO movies_actors (id_movies, id_actors)
VALUES
  (1,1),
  (2,3),
  (2,2),
  (4,1),
  (5,2);

  /*  Execute this query to drop the tables */
  -- DROP TABLE movies_actors, actors, movies, genres; --



/*
  Question:

  Once actors win big awards and recognition in the film world, the demand for films in which they participate increases. So we want to know what
  movies the brothers Silva have in our catalog.

  To do this, select the code and the name of the movies in which the actors 'Marcelo Silva' or 'Miguel Silva' acted and that the genre of the film is 'Action'.
*/

--- Answer:

select distinct movies.id, movies.name from movies
join movies_actors on movies.id = movies_actors.id_movies
join actors on actors.id = movies_actors.id_actors
join genres on movies.id_genres = genres.id
where genres.description = 'Action' and
(actors.name =  'Marcelo Silva' or  actors.name = 'Miguel Silva');














