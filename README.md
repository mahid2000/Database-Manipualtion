# Online-Shop-Database
CS2855: Databases Assignment 2

A simple Online Shop Database made using SQL.

Consider the following relational model that represents part of an online shop’s database;

prouduct(prod_id (primary key), product_name, product_price, product_manufacturer)

customer(cust_id (primary key), customer_name, customer_adress)

rating(prod_id (foreign key), cust_id (foreign key), rating_date (priamry key), rating_stars)

sale(sale_id (primary key), prod_id (foreign key), cust_id (foreign key), sale_quantity, sale_cost)

These schemas represent product information, including sales. Customers can provide ratings for products in a 0 to 5 stars fashion. It is possible for clients to rate the same product more than once. The attribute sale_cost does not have to be equal to sale_quantity*product_price (it is fine if you implement this tough).

Question 1. (20 marks): Create a file createdb.sql containing SQL instructions for creating tables corresponding to the relations given above. You should include the primary keys, the referential integrity constraints that should hold (such as foreign keys), taking care for attributes that should not be null. 

Question 2. (10 marks): Create a file inserts.sql containing a sequence of SQL INSERT statements to populate your tables. Every table should have at least 5 rows, since this is the minimum number of rows expected for testing purposes.
Advice: Take care not to accidentally make your data too simple in format!

Question 3. (40 marks, 10 marks each): Define queries, in SQL, to obtain the following information over the database you created. Note that these should work with any data that can be present in the model, not just for the test data you used. The queries must be included as part of your submission in a file named queries.sql.

(a) The names of all products manufactured by ‘Samsung’, in ascending ordered by price.

(b) The names of all products that had at least one rating of 3 or more stars. No duplicate names should be returned.

(c) For all products, their name, average star rating, and most recent rating date. The results should be in descending order of average star rating.

(d) For all cases in which the same customer rated the same product more than once, and in some point in time gave it a lower rating than before, return the customer name, the name of the product, and the lowest star rating that was given.
