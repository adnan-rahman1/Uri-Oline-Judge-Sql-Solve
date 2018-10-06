--- URI Online Judge SQL
--- Copyright URI Online Judge
--- www.urionlinejudge.com.br
--- Problem 2746

CREATE TABLE virus (
  id INTEGER,
  name VARCHAR(255)
);


INSERT INTO virus(id, name)
VALUES
      (1, 'H1RT'),
      (2, 'H7H1'),
      (3, 'HUN8'),
      (4, 'XH1HX'),
      (5, 'XXXX');


  /*  Execute this query to drop the tables */
  -- DROP TABLE virus; --

/*
  Question:

  Viruses are evolving, but new research has proven that by switching some proteins the vaccine becomes unbeatable. The protein H1(Hemagglutinin) when
  replaced by the X protein (Xenomorphina) has interesting effects against almost every viral disease. Some conspiracists say that after the
  vaccine’s discovery some strange 3 meters tall creatures were found in the surroundings of the laboratories, but this is clearly a lie.

  Therefore, you must replace every string “H1”( Hemagglutinin ) by 'X' ( Xenomorphina ).

*/

--- Answer:
select replace(name, 'H1', 'X') as name from virus;
