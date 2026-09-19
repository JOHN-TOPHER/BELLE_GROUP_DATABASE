CREATE DATABASE anl_db;

CREATE TABLE Daily_sales (
    sales_id     varchar(10) primary key,
    sales_date   date not null,
    product_id   varchar(10) not null,
    units_sold   int not null check (units_sold >= 0),
    revenue      decimal(12,2) not null check (revenue >= 0),

        FOREIGN KEY (product_id) 
        REFERENCES prod_db.Products(product_id)
);
 
CREATE TABLE Product_performance (
    performance_id  varchar(10) primary key,
    product_id      varchar(10) not null,
    units_sold      int not null check (units_sold >= 0),
    revenue         decimal(12,2) not null check (revenue >= 0),

        FOREIGN KEY (product_id) 
        REFERENCES prod_db.Products(product_id)
);
