CREATE TABLE cashier_dimension (
    cashier_key INT PRIMARY KEY,
    cashier_employee_id INT NOT NULL UNIQUE,
    cashier_name VARCHAR(100)
);
