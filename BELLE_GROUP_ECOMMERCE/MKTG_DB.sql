CREATE DATABASE mktg_db;

CREATE TABLE Campaigns(
    campaign_id int auto_increment primary key,
    campaign_name varchar(100) not null,
    start_date date not null,
    end_date date not null,
    status VARCHAR(50) not null
);

CREATE TABLE Coupons(
    coupon_id INT auto_increment primary key,
    coupon_code varchar(100) not null,
    discount_percent int not null check (discount_percent BETWEEN 0 AND 100),
    expiry_date date not null
);
