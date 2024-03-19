CREATE TABLE StoreDimension (
  storeKey INT PRIMARY KEY,
  storeNumber INT NOT NULL,
  StoreName VARCHAR(255) NOT NULL,
  StoreDisrict VARCHAR(50) NOT NULL,
  storeRegion VARCHAR(50) NOT NULL,
);