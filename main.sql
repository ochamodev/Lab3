

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