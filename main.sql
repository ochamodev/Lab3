CREATE DATABASE IF NOT EXISTS retail_sales;

USE retail_sales;

CREATE TABLE customer_dimension (
     sk_customer   INT NOT NULL auto_increment PRIMARY KEY,
     customer_id   VARCHAR (255) NULL,
     customer_name   VARCHAR (255) NULL,
     segment     VARCHAR (255) NULL,
     postal_code     int NULL,
     timestamp    DATETIME
);

CREATE TABLE ship_mode_dimension 
  (
     sk_ship_mode   INT NOT NULL auto_increment PRIMARY KEY,
     ship_mode   VARCHAR (255) NULL,
     timestamp    DATETIME
  ); 

CREATE TABLE geography_dimension 
  (
     sk_geographyc   INT NOT NULL auto_increment PRIMARY KEY,
     country   VARCHAR (255) NULL,
     region VARCHAR (255) NULL,
     state  VARCHAR (255) NULL,
     city     VARCHAR (255) NULL,
     postal_code     int NULL,
     timestamp    DATETIME
  ); 


CREATE TABLE product_dimension
  (
     sk_product   INT NOT NULL auto_increment PRIMARY KEY,
     product_id   VARCHAR (255) NULL,
     product_name VARCHAR (255) NULL,
     subcategory  VARCHAR (255) NULL,
     category     VARCHAR (255) NULL,
     timestamp    DATETIME
  ); 

CREATE TABLE sales_facts
  (
     sale_id          VARCHAR (255) NOT NULL,
     date_key          INT NOT NULL REFERENCES dim_dates (date_key),
     sk_customer       INT NOT NULL REFERENCES dim_customer (sk_customer),
     sk_geographyc    INT NOT NULL REFERENCES dim_geography(sk_postal_code),
     sk_ship_mode      INT NOT NULL REFERENCES dim_ship_mode(sk_ship_mode),
     sk_product        INT NOT NULL REFERENCES dim_products(sk_product),
     sales             DECIMAL (18, 2) NULL,
     quantity          INT NULL,
     discount          DECIMAL (18, 2) NULL,
     profit            DECIMAL(18, 2) NULL
  ); 