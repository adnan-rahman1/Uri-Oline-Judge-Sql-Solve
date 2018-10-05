--- URI Online Judge SQL
--- Copyright URI Online Judge
--- www.urionlinejudge.com.br
--- Problem 2738

create table candidate(
  id INTEGER PRIMARY KEY,
  name VARCHAR (255)
);

create table score(
  candidate_id INTEGER REFERENCES candidate (id),
  math NUMERIC,
  specific NUMERIC,
  project_plan NUMERIC
);


INSERT INTO candidate(id, name)
VALUES
	   (1, 'Michael P Cannon'),
       (2, 'Barbra J Cable'),
       (3, 'Ronald D Jones'),
       (4, 'Timothy K Fitzsimmons'),
       (5, 'Ivory B Morrison'),
       (6, 'Sheila R Denis'),
       (7, 'Edward C Durgan'),
       (8, 'William K Spencer'),
       (9, 'Donna D Pursley'),
       (10, 'Ann C Davis');

INSERT INTO score(candidate_id, math, specific, project_plan)
VALUES
	   (1, 76, 58, 21),
       (2, 4, 5, 22),
       (3, 15, 59, 12),
       (4, 41, 42, 99),
       (5, 22, 90, 9),
       (6, 82, 77, 15),
       (7, 82, 99, 56),
       (8, 11, 4, 22),
       (9, 16, 29, 94),
       (10, 1, 7, 59);


  /*  Execute this query to drop the tables */
  -- DROP TABLE score, candidate; --

/*
  Question:

  The Mars Technology University has Open Positions for researchers. However, the computer responsible for processing the candidates' data is broken.
  You must present the candidate list, containing the name and final score (with two decimal places of precision) of each candidate. Remember to show
  the list ordered by score (highest first).

  The score is given by the weighted average described as:

         (math * 2) + (specific * 3) + (project_plan * 5)
  Avg = --------------------------------------------------
                              10
*/

-- Answer:

select c.name, round((math*2+specific*3+project_plan*5)/10, 2) as avg from candidate as c, score where score.candidate_id = c.id order by avg desc;




















