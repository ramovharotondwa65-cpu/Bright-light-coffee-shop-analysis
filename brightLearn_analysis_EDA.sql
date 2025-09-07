--- checking all values in the dataset
SELECT*FROM BRIGHT_COFFEE.PUBLIC.TRANSACTIONS LIMIT 10;


--- Checking minimum date
SELECT MIN(transaction_date) AS min_date
FROM BRIGHT_COFFEE.PUBLIC.TRANSACTIONS ;

--- CHecking the latest record in the data
SELECT MAX(transaction_date) AS max_date
FROM BRIGHT_COFFEE.PUBLIC.TRANSACTIONS ;

--I want to know the openning hours of the shops
SELECT MAX(transaction_time) AS closing_time
FROM BRIGHT_COFFEE.PUBLIC.TRANSACTIONS ;

--- Opennig time
SELECT MIN(transaction_time) AS opening_time
FROM BRIGHT_COFFEE.PUBLIC.TRANSACTIONS ;

-- counts how many shops do we have 
select count(distinct store_id)
FROM BRIGHT_COFFEE.PUBLIC.TRANSACTIONS ;

-- Geeting the names of the shops
SELECT DISTINCT store_location
FROM BRIGHT_COFFEE.PUBLIC.TRANSACTIONS ;

-- How many products are we selling 
SELECT COUNT(DISTINCT product_id) Number_of_products
FROM BRIGHT_COFFEE.PUBLIC.TRANSACTIONS ;

--Get the unique product_category
SELECT DISTINCT product_category
FROM BRIGHT_COFFEE.PUBLIC.TRANSACTIONS ;

--get the product_detail that matches the product_category coffee
SELECT DISTINCT product_detail
FROM BRIGHT_COFFEE.PUBLIC.TRANSACTIONS 
WHERE product_category ILIKE ('coffee');

--get the product_detail that matches the product_category tea
SELECT DISTINCT product_detail
FROM BRIGHT_COFFEE.PUBLIC.TRANSACTIONS 
WHERE product_category ILIKE ('Tea');

--counts the umber of unique products 
SELECT COUNT(DISTINCT product_detail) AS number_of_unique_products
FROM BRIGHT_COFFEE.PUBLIC.TRANSACTIONS 
