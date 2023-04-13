SELECT product_name
FROM product
WHERE product_manufacturer = 'Samsung'
ORDER BY product_price;

SELECT DISTINCT product_name
FROM product, rating
WHERE rating_stars >= 3 AND rating.prod_id = product.prod_id;


SELECT DISTINCT product_name, cast(avg(rating_stars) as decimal(10,2)), MAX(rating_date)
FROM product, rating
WHERE product.prod_id = rating.prod_id
GROUP BY product_name
ORDER BY cast(avg(rating_stars) as decimal(10,2)) desc;

SELECT customer_name, product_name, MIN(rating_stars)
FROM product, rating, customer, sale
WHERE product.prod_id = rating.prod_id AND sale.prod_id = product.prod_id AND rating.cust_id = sale.cust_id AND rating.cust_id = customer.cust_id
GROUP BY product_name, customer_name
HAVING COUNT(rating_stars) < 1 AND MAX(rating_stars) != MIN(rating_stars);
