--- URI Online Judge SQL
--- Copyright URI Online Judge
--- www.urionlinejudge.com.br
--- Problem 2744

CREATE TABLE account(
  id INTEGER PRIMARY KEY,
  name VARCHAR(255),
  login VARCHAR(255),
  password VARCHAR(255)
  );


INSERT INTO account(id, name, login, password)
VALUES (1, 'Joyce P. Parry', 'Promeraw', 'noh1Oozei'),
       (2, 'Michael T. Gonzalez', 'Phers1942', 'Iath3see9bi'),
       (3, 'Heather W. Lawless', 'Hankicht', 'diShono4'),
       (4, 'Otis C. Hitt', 'Conalothe', 'zooFohH7w'),
       (5, 'Roger N. Brownfield', 'Worseente', 'fah7ohNg');


  /*  Execute this query to drop the tables */
  -- DROP TABLE account; --

/*
  Question:

  You were hired to be the consultant for a company. Analyzing the database, you noticed that the passwords are stored as text files and,
  as everyone knows, this is a terrible security practice as they are not encrypted.

  Therefore you must convert every password to the MD5 format. Show the client id, the password before conversion and the new MD5.
*/

--- Answer:

select id, password, md5(password) as "MD5" from account;
