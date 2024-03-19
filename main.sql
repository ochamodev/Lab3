CREATE DATABASE IF NOT EXISTS retail_sales;

USE retail_sales;

-- TABLA DATE DIMENSION
CREATE TABLE date_dimension(
    date_key INT AUTO_INCREMENT PRIMARY KEY,
	DATE DATE,
    day_of_week ENUM('Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'),
    calendar_month ENUM('January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'),
    calendar_quarter ENUM('Q1', 'Q2', 'Q3', 'Q4'),
    calendar_year INT
);

CREATE TABLE cashier_dimension (
    cashier_key INT PRIMARY KEY,
    cashier_employee_id INT NOT NULL UNIQUE,
    cashier_name VARCHAR(100)
);

CREATE TABLE store_dimension (
  store_key INT PRIMARY KEY,
  store_number INT NOT NULL,
  store_name VARCHAR(255) NOT NULL,
  store_disrict VARCHAR(50) NOT NULL,
  store_region VARCHAR(50) NOT NULL,
  UNIQUE(store_key)
);

CREATE TABLE product_dimension(
    product_key INT AUTO_INCREMENT PRIMARY KEY,
    sku_number VARCHAR(20) NOT NULL,
    product_description VARCHAR(100) NOT NULL,
    brand_description VARCHAR(100) NOT NULL,
    category_description VARCHAR(100) NOT NULL,
    UNIQUE(sku_number)
);

CREATE TABLE promotion_dimention(
    promotion_key INT AUTO_INCREMENT PRIMARY KEY,
    promotion_code VARCHAR(20) NOT NULL,
    promotion_name VARCHAR(20) NOT NULL,
    promotion_media_type VARCHAR(100) NOT NULL,
    promotion_begin_date DATETIME NOT NULL,
    UNIQUE(promotion_key)
);

CREATE TABLE payment_method_dimension(
    payment_method_key INT AUTO_INCREMENT PRIMARY KEY,
    payment_method_description VARCHAR(100) NOT NULL,
    payment_method_group VARCHAR(100) NOT NULL,
    UNIQUE(payment_method_key)
);

CREATE TABLE rental_sales_facts (
    date_key INT,
    product_key INT,
    store_key INT,
    promotion_key INT,
    cashier_key INT,
    pos_transaction_id INT,
    sales_quantity INT,
    regular_unit_price DECIMAL(10, 2),
    discount_unit_price DECIMAL(10, 2),
    net_unit_price DECIMAL(10, 2),
    extended_discount_dollar_amount DECIMAL(10, 2),
    extended_sales_dollar_amount DECIMAL(10, 2),
    extended_cost_dollar_amount DECIMAL(10, 2),
    extended_gross_profit_dollar_amount DECIMAL(10, 2),
    FOREIGN KEY (date_key) REFERENCES cashier_dimension(cashier_key),
    FOREIGN KEY (product_key) REFERENCES product_dimension(product_key),
    FOREIGN KEY (store_key) REFERENCES store_dimension(store_key),
    FOREIGN KEY (promotion_key) REFERENCES promotion_dimension(promotion_key),
    FOREIGN KEY (cashier_key) REFERENCES cashier_dimension(cashier_key),
);
