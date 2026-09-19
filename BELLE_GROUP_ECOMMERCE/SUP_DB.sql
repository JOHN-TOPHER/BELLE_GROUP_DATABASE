CREATE DATABASE SUP_DB;

CREATE TABLE Tickets(
    ticket_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,    
    subject VARCHAR(255) NOT NULL,
    priority VARCHAR(50) NOT NULL,
    status VARCHAR(50) NOT NULL,

    FOREIGN KEY (customer_id)
    REFERENCES customer(customerID)
);

CREATE TABLE Conversations(
    conversation_id INT AUTO_INCREMENT PRIMARY KEY,
    ticket_id INT NOT NULL,
    message VARCHAR(1000) NOT NULL,
    sender VARCHAR(100) NOT NULL,

    FOREIGN KEY (ticket_id)
    REFERENCES Tickets(ticket_id)
);

CREATE TABLE Resolutions(
    resolution_id INT AUTO_INCREMENT PRIMARY KEY,
    ticket_id INT NOT NULL,
    resolution VARCHAR(1000) NOT NULL,
    resolved_by VARCHAR(100) NOT NULL,

    FOREIGN KEY (ticket_id)
    REFERENCES Tickets(ticket_id)
);
