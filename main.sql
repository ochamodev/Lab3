


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
