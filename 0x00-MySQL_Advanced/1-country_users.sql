-- Creates a table with unique users.
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    name VARCHAR(255),
    country ENUM('US', 'CO', 'TN') NOT NULL DEFAULT 'US'
);
