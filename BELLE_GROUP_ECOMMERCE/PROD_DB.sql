CREATE DATABASE prod_db;

CREATE TABLE Categories (
    category_id    varchar(10) primary key,
    category_name  varchar(50) not null,
    description    varchar(255)
);
 
CREATE TABLE Brands (
    brand_id      varchar(10) primary key,
    brand_name    varchar(50) not null,
    country       varchar(50)
);
 
CREATE TABLE Products (
    product_id    varchar(10) primary key,
    product_name  varchar(100) not null,
    category_id   varchar(10),
    brand_id      varchar(10),
    price         decimal(10,2) not null check (price >= 0),
    
  FOREIGN KEY (category_id) 
  REFERENCES Categories(category_id),

  FOREIGN KEY (brand_id) 
  REFERENCES Brands(brand_id)
);