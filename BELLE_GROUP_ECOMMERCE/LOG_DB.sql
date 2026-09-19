CREATE DATABASE LOG_DB;

CREATE TABLE Shipments(
    shipment_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT NOT NULL,
    courier VARCHAR(100) NOT NULL,
    tracking_number VARCHAR(100) NOT NULL,
    status VARCHAR(50) NOT NULL,

    FOREIGN KEY (order_id)
    REFERENCES Orders(order_id)
);

CREATE TABLE Delivery_Events(
    event_id INT AUTO_INCREMENT PRIMARY KEY,
    shipment_id INT NOT NULL,
    event VARCHAR(1000) NOT NULL,
    event_date DATETIME NOT NULL,

    FOREIGN KEY (shipment_id)
    REFERENCES Shipments(shipment_id)
);
