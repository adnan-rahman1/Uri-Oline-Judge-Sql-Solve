--- URI Online Judge SQL
--- Copyright URI Online Judge
--- www.urionlinejudge.com.br
--- Problem 2610

CREATE TABLE products (
    id NUMERIC PRIMARY KEY,
    name VARCHAR,
    amount NUMERIC,
    price NUMERIC
);

INSERT INTO products (id, name, amount, price)
VALUES
    (1, 'Two-doors wardrobe', 100, 800),
    (2, 'Dining table', 1000, 560),
    (3, 'Towel holder', 10000, 25.50),
    (4, 'Computer desk', 350, 320.50),
    (5, 'Chair', 3000, 210.64),
    (6, 'Single bed', 750, 460);

 /*  Execute this query to drop the tables */
 -- DROP TABLE products; --

/*

  Question:

  In the company that you work is being done a survey on the values of the products that are marketed.

  To help the industry that is doing this survey you should calculate and display the average value of the price of the products.

  OBS: Show the value with two numbers after the period.

*/

--- Answer:

select round(avg(price), 2) as price from products;
