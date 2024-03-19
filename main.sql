

-- TABLA DATE DIMENSION
CREATE TABLE DATE_DIMENSION(
    DATE_KEY INT AUTO_INCREMENT PRIMARY KEY,
	DATE DATE,
    DAY_OF_WEEK ENUM('Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'),
    CALENDAR_MONTH ENUM('January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'),
    CALENDAR_QUARTER ENUM('Q1', 'Q2', 'Q3', 'Q4'),
    CALENDAR_YEAR INT
);

CREATE TABLE cashier_dimension (
    cashier_key INT PRIMARY KEY,
    cashier_employee_id INT NOT NULL UNIQUE,
    cashier_name VARCHAR(100)
);

CREATE TABLE StoreDimension (
  storeKey INT PRIMARY KEY,
  storeNumber INT NOT NULL,
  StoreName VARCHAR(255) NOT NULL,
  StoreDisrict VARCHAR(50) NOT NULL,
  storeRegion VARCHAR(50) NOT NULL,
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