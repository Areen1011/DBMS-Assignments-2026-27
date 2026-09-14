CREATE TABLE CLIENT_MASTER (
    Client_no VARCHAR(6) PRIMARY KEY,
    Name VARCHAR(20) NOT NULL,
    Address1 VARCHAR(30),
    Address2 VARCHAR(30),
    City VARCHAR(15),
    Pincode NUMERIC(8),
    State VARCHAR(15),
    Bal_due NUMERIC(10,2),
    CONSTRAINT chk_client_no4 CHECK (Client_no LIKE 'C%')
);

CREATE TABLE PRODUCT_MASTER (
    Product_no VARCHAR(6) PRIMARY KEY,
    Description VARCHAR(15) NOT NULL,
    Profit_percent NUMERIC(4,2) NOT NULL,
    Unit_measure VARCHAR(10) NOT NULL,
    Qty_on_hand NUMERIC(8) NOT NULL,
    Reorder_lvl NUMERIC(8) NOT NULL,
    Sell_price NUMERIC(8,2) NOT NULL,
    Cost_price NUMERIC(8,2) NOT NULL,
    CONSTRAINT chk_product_no4 CHECK (Product_no LIKE 'P%'),
    CONSTRAINT chk_sell_price4 CHECK (Sell_price != 0),
    CONSTRAINT chk_cost_price4 CHECK (Cost_price != 0)
);

CREATE TABLE SALESMAN_MASTER (
    Salesman_no VARCHAR(6) PRIMARY KEY,
    Salesman_name VARCHAR(20) NOT NULL,
    Address1 VARCHAR(30),
    Address2 VARCHAR(30),
    City VARCHAR(20),
    Pincode NUMERIC(8),
    State VARCHAR(20),
    Sal_amt NUMERIC(8,2) NOT NULL,
    Tgt_to_get NUMERIC(6,2) NOT NULL,
    Ytd_sales NUMERIC(6,2) NOT NULL,
    Remarks VARCHAR(60),
    CONSTRAINT chk_salesman_no4 CHECK (Salesman_no LIKE 'S%'),
    CONSTRAINT chk_sal_amt4 CHECK (Sal_amt <> 0),
    CONSTRAINT chk_tgt_to_get4 CHECK (Tgt_to_get <> 0)
);

INSERT INTO CLIENT_MASTER(Client_no, Name, City, Pincode, State, Bal_due)
VALUES ('C00001', 'Ivan Bayross', 'Bombay', 400054, 'Maharashtra', 15000),
('C00002', 'Vandana Saitwal', 'Madras', 780001, 'Tamil Nadu', 0),
('C00003', 'Pramada Jaguste', 'Bombay', 400057, 'Maharashtra', 5000),
('C00004', 'Basu Navindgi', 'Bombay', 400056, 'Maharashtra', 0),
('C00005', 'Ravi Sreedharan', 'Delhi', 100001, 'Maharashtra', 2000),
('C00006', 'Rukmini', 'Bombay', 400050, 'Maharashtra', 0);

INSERT INTO PRODUCT_MASTER(Product_no, Description, Profit_percent, Unit_measure, Qty_on_hand, Reorder_lvl, Sell_price, Cost_price)
VALUES('P00001', '1.44 Floppies', 5, 'Piece', 100, 20, 525, 500),
('P03453', 'Monitors', 6, 'Piece', 10, 3, 12000, 11280),
('P06734', 'Mouse', 5, 'Piece', 20, 5, 1050, 1000),
('P07865', '1.22 Floppies', 5, 'Piece', 100, 20, 525, 500),
('P07868', 'Keyboards', 2, 'Piece', 10, 3, 315, 305),
('P07885', 'CD Drive', 2.5, 'Piece', 10, 3, 5250, 5100),
('P07965', '540 HDD', 4, 'Piece', 10, 3, 8400, 8000),
('P07975', '1.44 Drive', 5, 'Piece', 10, 3, 1050, 1000),
('P08865', '1.22 Drive', 5, 'Piece', 2, 3, 1050, 1000);

INSERT INTO SALESMAN_MASTER()
VALUES('S00001', 'Kiran', 'A/14', NULL, 'Bombay', 400002, 'Maharashtra', 3000, 100, 50, 'Good'),
('S00002', 'Manish', '65', 'Nariman', 'Bombay', 400001, 'Maharashtra', 3000, 200, 100, 'Good'),
('S00003', 'Ravi', 'P-7', NULL, 'Bandra', 400032, 'Maharashtra', 3000, 200, 100, 'Good'),
('S00004', 'Ashish', 'A/5', NULL, 'Juhu', 400044, 'Maharashtra', 3500, 200, 150, 'Good');

SELECT Name FROM CLIENT_MASTER;

SELECT * FROM CLIENT_MASTER;

SELECT Name, City
FROM CLIENT_MASTER;

SELECT Description
FROM PRODUCT_MASTER;

SELECT *
FROM CLIENT_MASTER
WHERE City = 'Bombay';

SELECT Salesman_name
FROM SALESMAN_MASTER
WHERE Sal_amt = 3000;

UPDATE CLIENT_MASTER
SET City = 'Bombay'
WHERE Client_no = 'C00005';

UPDATE CLIENT_MASTER
SET Bal_due = 1000
WHERE Client_no = 'C00001';

UPDATE PRODUCT_MASTER
SET Cost_price = 950
WHERE Description = '1.22 Floppies';

UPDATE SALESMAN_MASTER
SET City = 'Mumbai';

DELETE FROM SALESMAN_MASTER
WHERE Sal_amt = 3500;

DELETE FROM PRODUCT_MASTER
WHERE Qty_on_hand = 100;

DELETE FROM CLIENT_MASTER
WHERE State = 'Tamil Nadu';

ALTER TABLE CLIENT_MASTER
ADD Telephone NUMERIC(10);

ALTER TABLE PRODUCT_MASTER
MODIFY Sell_price NUMERIC(10,2);

DROP TABLE CLIENT_MASTER;

RENAME TABLE SALESMAN_MASTER TO SMAN_MAST4;

SELECT *
FROM CLIENT_MASTER
WHERE City IN ('Mumbai', 'Delhi', 'Pune');

UPDATE SMAN_MAST4
SET City = 'Mumbai';

DELETE FROM PRODUCT_MASTER
WHERE Sell_price > 5000
AND Sell_price < 7000;
