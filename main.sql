
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

