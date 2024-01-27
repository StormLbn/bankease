CREATE DATABASE IF NOT EXISTS bankease;

USE bankease;

CREATE TABLE IF NOT EXISTS client(
    client_id INT AUTO_INCREMENT PRIMARY KEY,
    client_description VARCHAR(100),
    birth_date DATE,
    address VARCHAR(100),
    phone VARCHAR(10)
);

CREATE TABLE IF NOT EXISTS checking_account(
    account_id INT AUTO_INCREMENT,
    client_id INT,
    owner_description VARCHAR(100),
    balance FLOAT,
    transfer_fee FLOAT,
    min_balance FLOAT,
    PRIMARY KEY (account_id),
    FOREIGN KEY (client_id)
        REFERENCES client(client_id)
        ON DELETE CASCADE
) AUTO_INCREMENT = 100000;

CREATE TABLE IF NOT EXISTS saving_account(
    account_id INT AUTO_INCREMENT,
    client_id INT,
    owner_description VARCHAR(100),
    balance FLOAT,
    interest_rate FLOAT,
    balance_limit FLOAT,
    PRIMARY KEY (account_id),
    FOREIGN KEY (client_id)
        REFERENCES client(client_id)
        ON DELETE CASCADE
) AUTO_INCREMENT = 500000;

