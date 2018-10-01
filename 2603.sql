--- URI Online Judge SQL
--- Copyright URI Online Judge
--- www.urionlinejudge.com.br
--- Problem 2603

CREATE TABLE customers (
  id NUMERIC PRIMARY KEY,
  name CHARACTER VARYING (255),
  street CHARACTER VARYING (255),
  city CHARACTER VARYING (255),
  state CHAR (2),
  credit_limit NUMERIC
);

INSERT INTO customers (id, name, street, city, state, credit_limit)
VALUES
  (1,	'Pedro Augusto da Rocha',	'Rua Pedro Carlos Hoffman',	'Porto Alegre',	'RS',	700.00),
  (2,	'Antonio Carlos Mamel',	'Av. Pinheiros',	'Belo Horizonte',	'MG',	3500.50),
  (3,	'Luiza Augusta Mhor,',	'Rua Salto Grande',	'Niteroi',	'RJ',	4000.00),
  (4,	'Jane Ester',	'Av 7 de setembro',	'Erechim',	'RS',	800.00),
  (5,	'Marcos Antônio dos Santos',	'Av Farrapos',	'Porto Alegre',	'RS',	4250.25);

  /*  Execute this query to drop the tables */
  -- DROP TABLE customers; --

/*
  Question:

  The company will make an event celebrating the 20th anniversary of the market, and for that we will make a great celebration in the
  city of Porto Alegre. We also    invite all our customers who are enrolled in this city.

  Your job is in having the names and addresses of customers who live in 'Porto Alegre', to deliver the invitations personally.
*/

--- Answar

select name, street from customers where city = 'Porto Alegre';
