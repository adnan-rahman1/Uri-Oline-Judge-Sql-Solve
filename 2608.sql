CREATE TABLE products (
  id numeric PRIMARY KEY,
  name varchar(50),
  amount numeric,
  price numeric(7,2)
);

INSERT INTO products (id, name, amount, price)
VALUES
  (1,	'Two-doors wardrobe',	100,	800),
  (2,	'Dining table',	1000,	560),
  (3,	'Towel holder',	10000,	25.50),
  (4,	'Computer desk',	350,	320.50),
  (5,	'Chair',	3000,	210.64),
  (6,	'Single bed',	750,	460);

  /*  Execute this query to drop the tables */
  -- DROP TABLE products; --


/*
  Question:

  The financial sector of our company, wants to know the smaller and higher values of the products, which we sell.

  For this you must display only the highest and lowest price of the products table.
*/

--- Answer:

select max(price) as price, min(price) as price from products;
