CREATE TABLE product
(prod_id int NOT NULL,
product_name varchar(50),
product_price numeric(5,2),
product_manufacturer char(50),
PRIMARY KEY (prod_id));

CREATE TABLE customer
(cust_id int NOT NULL,
customer_name char(100),
customer_address varchar(100),
PRIMARY KEY (cust_id));

CREATE TABLE rating
(prod_id int NOT NULL,
cust_id int NOT NULL,
rating_date date NOT NULL,
rating_stars int CHECK (rating_stars >= 0 AND rating_stars <= 5),
PRIMARY KEY (prod_id, cust_id, rating_date),
FOREIGN KEY (prod_id) REFERENCES product(prod_id),
FOREIGN KEY (cust_id) REFERENCES customer(cust_id));

CREATE TABLE sale
(sale_id int NOT NULL,
prod_id int,
cust_id int,
sale_quantity int,
sale_cost numeric(5,2),
PRIMARY KEY (sale_id),
FOREIGN KEY (prod_id) REFERENCES product(prod_id),
FOREIGN KEY (cust_id) REFERENCES customer(cust_id));
