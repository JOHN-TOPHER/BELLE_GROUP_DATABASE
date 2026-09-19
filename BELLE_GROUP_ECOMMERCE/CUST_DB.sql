CREATE DATABASE cust_db;

CREATE TABLE Customers(
    customer_id varchar(10) primary key,
    First_name varchar(100) not null,
    Last_name varchar(100) not null,
    Email varchar(50) not null
);

CREATE TABLE Addresses (
    address_id    varchar(10),
    customer_id   varchar(10),
    city          varchar(50),
    province      varchar(50),

    PRIMARY KEY (address_id, customer_id),
    FOREIGN KEY (customer_id) 
    REFERENCES Customers(customer_id)
    ON DELETE CASCADE
);

CREATE TABLE Loyalty_points (
    loyalty_id    varchar(10) primary key,
    customer_id   varchar(10) not null,
    points        int not null default 0,
    tier          varchar(20),

        FOREIGN KEY (customer_id) 
        REFERENCES Customers(customer_id)
        ON DELETE CASCADE
);
