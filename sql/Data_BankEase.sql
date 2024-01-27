USE bankease;

INSERT INTO client
    (client_description, birth_date, address, phone)
VALUES
    ('M. Paul Bismuth', '1955-04-18', 'Neuilly', '0171500036'),
    ('Mle Marine Duval', '1998-12-04', 'Lille', '0629847103'),
    ('M. Edouard Balladur', '1929-05-02', 'Paris', '0149056191'),
    ('M. et Mme Toulemonde Michel', '1985-09-22', 'Lille', '0304591185');


INSERT INTO checking_account
    (client_id, owner_description, balance, transfer_fee, min_balance)
VALUES
    (1, 'M. Paul Bismuth', 16356.23, 2, -1000),
    (1, 'M. Paul Bismuth', 12362.6, 2, -1000),
    (2, 'Mle Marine Duval', 30.73, 2, -100),
    (3, 'M. Edouard Balladur', 2585.34, 2, -5000),
    (3, 'M. Edouard Balladur', 1178.84, 2, -5000),
    (4, 'M. et Mme Toulemonde Michel', 210.45, 2, -100),
    (4, 'M. Toulemonde Michel', 312.05, 2, -100),
    (4, 'Mme Toulemonde Danielle', 443.87, 2, -100);


INSERT INTO saving_account
    (client_id, owner_description, balance, interest_rate, balance_limit)
VALUES
    (1, 'M. Paul Bismuth', 200000, 2, 900000),
    (1, 'M. Paul Bismuth', 170000, 2, 900000),
    (2, 'Mle Marine Duval', 840, 2, 10000),
    (3, 'M. Edouard Balladur', 30000, 2, 900000),
    (3, 'M. Edouard Balladur', 24000, 2, 900000),
    (4, 'Mle Toulemonde Chloé', 1000, 2, 5000),
    (4, 'M. Toulemonde Quentin', 900, 2, 5000),
    (4, 'M. et Mme Toulemonde Michel', 5350, 2, 10000);
    
