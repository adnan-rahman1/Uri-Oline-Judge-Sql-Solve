--- URI Online Judge SQL
--- Copyright URI Online Judge
--- www.urionlinejudge.com.br
--- Problem 2617

CREATE TABLE providers (
  id numeric PRIMARY KEY,
  name varchar(255),
  street varchar(255),
  city varchar(255),
  state char(2)
);

CREATE TABLE products (
  id numeric PRIMARY KEY,
  name varchar (255),
  amount numeric,
  price numeric,
  id_providers numeric REFERENCES providers (id)
);


INSERT INTO providers (id, name, street, city, state)
VALUES
  (1,	'Ajax SA',	'Presidente Castelo Branco',	'Porto Alegre',	'RS'),
  (2,	'Sansul SA',	'Av Brasil',	'Rio de Janeiro',	'RJ'),
  (3,	'South Chairs',	'Av Moinho',	'Santa Maria', 	'RS'),
  (4,	'Elon Electro',	'Apolo',	'São Paulo',	'SP'),
  (5,	'Mike Electro',	'Pedro da Cunha',	'Curitiba',	'PR');

INSERT INTO products (id, name, amount, price, id_providers)
VALUES
  (1,	'Blue Chair',	30,	300.00,	5),
  (2,	'Red Chair',	50,	2150.00,	1),
  (3,	'Disney Wardrobe',	400,	829.50,	4),
  (4,	'Blue Toaster',	20,	9.90,	3),
  (5,	'Solar Panel',	30,	3000.25,	4);


  /*  Execute this query to drop the tables */
  -- DROP TABLE products, providers; --

/*
  Question:

  The financial sector has encountered some problems in the delivery of one of our providers, the delivery of the products does not match the invoice.

  Your job is to display the name of the products and the name of the provider, for the products supplied by the provider 'Ajax SA'.
*/

--- Answer:

select pd.name, pv.name from products as pd, providers as pv where pd.id_providers = pv.id and pv.name = 'Ajax SA';



