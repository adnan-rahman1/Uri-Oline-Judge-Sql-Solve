--- URI Online Judge SQL
--- Copyright URI Online Judge
--- www.urionlinejudge.com.br
--- Problem 2745

CREATE TABLE people (
  id INTEGER PRIMARY KEY,
  name CHARACTER VARYING (255),
  salary NUMERIC
);


INSERT INTO people(id, name, salary)
VALUES
      (1, 'James M. Tabarez', 883),
      (2, 'Rafael T. Hendon', 4281),
      (3, 'Linda J. Gardner', 4437),
      (4, 'Nicholas J. Conn', 8011),
      (5, 'Karol A. Morales', 2508),
      (6, 'Lolita S. Graves', 8709);


  /*  Execute this query to drop the tables */
  -- DROP TABLE people; --

/*
  Question:

  You are going to the International Personal Tax meeting and your proposal is: every individual with income higher than 3000 must pay a tax to the
  government, which is 10% of his/her income.

  Show the name and the tax value of each person who earns more than 3000, with two decimal places of precision.
*/

--- Answer:

select name, round((salary*10)/100, 2) as tax from people where salary > 3000;
