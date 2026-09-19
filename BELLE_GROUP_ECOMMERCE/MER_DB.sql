CREATE DATABASE MER_DB;

CREATE TABLE merchants(
    merchant_id INT AUTO_INCREMENT PRIMARY KEY,
    merchant_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    status VARCHAR(50) NOT NULL
);

CREATE TABLE merchant_products(
    merchant_product_id INT AUTO_INCREMENT PRIMARY KEY,
    merchant_id INT NOT NULL,
    product_id INT NOT NULL,    
    selling_price DECIMAL(10, 2) NOT NULL,

    FOREIGN KEY (merchant_id)
    REFERENCES merchants(merchant_id),
    FOREIGN KEY (product_id)
    REFERENCES products(product_id)
);

CREATE TABLE payouts(
    payout_id INT AUTO_INCREMENT PRIMARY KEY,
    merchant_id INT NOT NULL,
    payout_amount DECIMAL(10, 2) NOT NULL,
    payout_date DATETIME NOT NULL,

    FOREIGN KEY (merchant_id)
    REFERENCES merchants(merchant_id)
);