--- URI Online Judge SQL
--- Copyright URI Online Judge
--- www.urionlinejudge.com.br
--- Problem 2742

CREATE TABLE dimensions(
	id INTEGER PRIMARY KEY,
	name varchar(255)
);

CREATE TABLE life_registry(
	id INTEGER PRIMARY KEY,
	name VARCHAR(255),
	omega NUMERIC,
	dimensions_id INTEGER REFERENCES dimensions (id)
);


INSERT INTO dimensions(id, name)
VALUES
      (1, 'C774'),
      (2, 'C784'),
      (3, 'C794'),
      (4, 'C824'),
      (5, 'C875');

INSERT INTO life_registry(id, name, omega, dimensions_id)
VALUES
	  (1, 'Richard Postman', 5.6, 2),
	  (2, 'Simple Jelly', 1.4, 1),
	  (3, 'Richard Gran Master', 2.5, 1),
	  (4, 'Richard Turing', 6.4, 4),
	  (5, 'Richard Strall',	1.0, 3);


  /*  Execute this query to drop the tables */
  -- DROP TABLE life_registry, dimensions; --


/*
  Question:

  Richard is a famous scientist because of his multiverse theory, where he describes every hypothetical set of parallel universes by means of a database.
  Thanks to that you now have a job..

  As your first task, you must select every Richard from dimensions C875 and C774, together with its existence probability (the famous factor N) with
  three decimal places of precision.

  Remember that the N factor is calculated by multiplying the omega value by 1,618. The data must be sorted by the least omega value.
*/


--- Answer:

select lr.name, round(lr.omega*1.618, 3) as "The N Factor" from life_registry as lr join dimensions as d on lr.dimensions_id = d.id and d.name in ('C774', 'C875') and lr.name like 'Richard%' order by "The N Factor";





