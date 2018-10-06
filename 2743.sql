--- URI Online Judge SQL
--- Copyright URI Online Judge
--- www.urionlinejudge.com.br
--- Problem 2743

CREATE TABLE people(
	id INTEGER PRIMARY KEY,
	name varchar(255)
);


INSERT INTO people(id, name)
VALUES
      (1, 'Karen'),
      (2, 'Manuel'),
      (3, 'Ygor'),
      (4, 'Valentine'),
      (5, 'Jo');


  /*  Execute this query to drop the tables */
  -- DROP TABLE people; --


/*
  Question:

  The Global Organization of Characters at People’s Names (GOCPN) made a census to figure how many characters people have in theirs names.

  To help OMCNP, you must show the number of characters of each name sorted by decreasing number of characters.
*/

--- Answer:
select name, length(name) as length from people order by length desc;
