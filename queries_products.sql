-- Add a product to the table with the name of “chair”, price of 44.00, and can_be_returned of false.
1. INSERT INTO products (name, price, can_be_returned) VALUES ('chair', 44.00, false);

-- Add a product to the table with the name of “stool”, price of 25.99, and can_be_returned of true.
2. INSERT INTO products (name, price, can_be_returned) VALUES ('stool', 25.99, true);

-- Add a product to the table with the name of “table”, price of 124.00, and can_be_returned of false.
3. INSERT INTO products (name, price, can_be_returned) VALUES ('table', 124.00, false);

-- Display all of the rows and columns in the table.
4. SELECT * FROM products;

-- Display all of the names of the products.
5. SELECT name FROM products;

-- Display all of the names and prices of the products.
6. SELECT name, price FROM products;

-- Add a new product - make up whatever you would like!
7. INSERT INTO products (name, price, can_be_returned) VALUES ('lamp', 69.99, true);

-- Display only the products that can_be_returned.
8. SELECT name FROM products WHERE can_be_returned = 'true';

-- Display only the products that have a price less than 44.00.
9. SELECT name, price FROM products WHERE price < 44;

-- Display only the products that have a price in between 22.50 and 99.99.
10. SELECT name, price FROM products WHERE price BETWEEN 22.50 AND 99.99;

-- There’s a sale going on: Everything is $20 off! Update the database accordingly.
11. UPDATE products SET price = 20;

-- Because of the sale, everything that costs less than $25 has sold out. Remove all products whose price meets this criteria.
12. DELETE FROM products WHERE price < 25;

-- And now the sale is over. For the remaining products, increase their price by $20.
13. UPDATE products SET price = price + 20;

-- There is a new company policy: everything is returnable. Update the database accordingly.
14. UPDATE products SET can_be_returned = true;


