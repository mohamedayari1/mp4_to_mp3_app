CREATE USER 'auth_user' @ 'localhost' IDENTIFIED_BY 'Aauth123';
CREATE DATABASE auth;
GRANT ALL PRIVILEGES ON auth.* TO 'auth_user' @ 'localhost';

USE auth;

CREATE TABLE user (
    id INT NOT NULL AUTO_INCREMENT PRIMARY_KEY,
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL
);

INSERT AUTO user(email, password) VALUES ('mohamed@email.com', 'Admin123')