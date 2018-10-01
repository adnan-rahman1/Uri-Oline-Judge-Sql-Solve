--- URI Online Judge SQL
--- Copyright URI Online Judge
--- www.urionlinejudge.com.br
--- Problem 2613

CREATE TABLE prices (
  id numeric PRIMARY KEY,
  categorie varchar(50),
  value numeric
);


CREATE TABLE movies (
  id numeric PRIMARY KEY,
  name varchar(50),
  id_prices numeric REFERENCES prices (id)
);

INSERT INTO prices (id , categorie, value)
VALUES
  (1,	'Releases',	3.50),
  (2,	'Bronze Seal',	2.00),
  (3,	'Silver Seal',	2.50),
  (4,	'Gold Seal',	3.00),
  (5,	'Promotion',	1.50);

INSERT INTO movies (id, name, id_prices)
VALUES
  (1,	'Batman',	3),
  (2,	'The Battle of the Dark River',	3),
  (3,	'White Duck',	5),
  (4,	'Breaking Barriers',	4),
  (5,	'The Two Hours',	2);

  /*  Execute this query to drop the tables */
  -- DROP TABLE movies, prices; --


/*
  Question:

  In the past the studio has made an event where several movies were on sale, we want to know what movies these were.

  Your job to help us is to select the ID and name of movies whose price is less than 2.00.
*/



--- Answer:

select movies.id, movies.name from movies join prices on movies.id_prices = prices.id where prices.value < 2;



