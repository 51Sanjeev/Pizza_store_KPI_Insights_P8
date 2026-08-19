CREATE DATABASE Pizza_store_db;
USE Pizza_store_db;
DROP TABLE IF EXISTS orders;
CREATE TABLE orders
(
	pizza_id INT PRIMARY KEY,
	order_id INT,
	pizza_name_id VARCHAR(15),
	quantity INT,
	order_date VARCHAR(11),
	order_time TIME,
	unit_price	FLOAT,
    total_price FLOAT,
	pizza_size VARCHAR(20),
	pizza_category VARCHAR(20),
	pizza_ingredients VARCHAR(100),
	pizza_name VARCHAR(50)
);

SHOW VARIABLES LIKE 'local_infile';
SET GLOBAL local_infile = 1;

LOAD DATA LOCAL INFILE "E:\\MYSQL\\Pizza_store_P8\\pizza_sales.csv"
INTO TABLE orders
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(
	@pizza_id,
	@order_id,
	@pizza_name_id,
	@quantity,
	@order_date,
	@order_time,
	@unit_price,
    @total_price,
	@pizza_size,
	@pizza_category,
	@pizza_ingredients,
	@pizza_name
)
SET
    pizza_id = NULLIF(TRIM(@pizza_id), ''),
    order_id = NULLIF(TRIM(@order_id), ''),
    pizza_name_id = NULLIF(TRIM(@pizza_name_id), ''),
    quantity = NULLIF(TRIM(@quantity), ''),

    order_date = CASE
        WHEN TRIM(@order_date) = '' THEN NULL
        ELSE STR_TO_DATE(TRIM(@order_date), '%d-%m-%Y')
    END,

    order_time = NULLIF(TRIM(@order_time), ''),
    unit_price = NULLIF(TRIM(@unit_price), ''),
    total_price = NULLIF(TRIM(@total_price), ''),
    pizza_size = NULLIF(TRIM(@pizza_size), ''),
    pizza_category = NULLIF(TRIM(@pizza_category), ''),
    pizza_ingredients = NULLIF(TRIM(@pizza_ingredients), ''),
    pizza_name = NULLIF(TRIM(@pizza_name), '');
    
SET GLOBAL local_infile = 0;
