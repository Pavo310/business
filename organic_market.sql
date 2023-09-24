CREATE DATABASE organic_bazar;

USE organic_bazar;

CREATE TABLE branch_details (
    Owner_Name VARCHAR(50) NOT NULL,
    Starting_Date DATE NOT NULL,
    Mobile_number INT UNSIGNED UNIQUE,
    Place VARCHAR(50) NOT NULL
);

INSERT INTO branch_details
(Owner_Name, Starting_Date, Mobile_number, Place)
VALUES
('Osama', '2001-09-11', 1234567890, 'NYC'),
('Chaganlal', '2002-02-22', 1987654321, 'Washington_DC'),
('Chamanlal', '2003-03-12', 2345678901, 'Megacity_Limbhola'),
('Chimanlal', '2004-04-14', 3456789012, 'Baker_Street');

CREATE TABLE product_details (
    Product_Name VARCHAR(50) UNIQUE,
    Price_of_1kg_inRupees INT NOT NULL
);

INSERT INTO product_details
(Product_Name, Price_of_1kg_inRupees)
VALUES
('Safarjan', 50),
('Kankoda', 40),
('Tomato', 100),
('Desi_Corn', 50),
('Darakh', 30),
('Bhindi', 60);

CREATE TABLE farmer_details (
    Farmer_Name VARCHAR(50) NOT NULL,
    Product_name VARCHAR(50) NOT NULL,
    Mobile_number INT UNSIGNED,
    Place VARCHAR(50) NOT NULL,
    Payment_Pending_inRupees INT
);

INSERT INTO farmer_details
(Farmer_Name, Product_name, Mobile_number, Place, Payment_Pending_inRupees)
VALUES
('Oggy', 'Safarjan', 1234567890, 'NYC', 0),
('JACK', 'Kankoda', 1987654321, 'Washington_DC', 500),
('Bob', 'Tomato', 2345678901, 'Megacity_Limbhola', 1000),
('Olivia', 'Desi_Corn', 3456789012, 'Baker_Street', 0),
('Oggy', 'Darakh', 1234567890, 'NYC', 0),
('Bob', 'Bhindi', 2345678901, 'Megacity_Limbhola', 1000);

CREATE TABLE waste_details (
    Product_Name VARCHAR(50) NOT NULL,
    Wasted_Quantity_inkg INT NOT NULL,
    Place VARCHAR(50) NOT NULL
);

INSERT INTO waste_details
(Product_Name, Wasted_Quantity_inkg, Place)
VALUES
('Safarjan', 10, 'NYC'),
('Kankoda', 2, 'Washington_DC'),
('Tomato', 5, 'Megacity_Limbhola'),
('Desi_Corn', 20, 'Baker_Street'),
('Darakh', 30, 'Megacity_Limbhola'),
('Bhindi', 10, 'Baker_Street');

CREATE TABLE Prerequirement (
    Product_Name VARCHAR(50) NOT NULL,
    Required_Quantity_inkg INT NOT NULL,
    Place VARCHAR(50) NOT NULL
);

INSERT INTO Prerequirement
(Product_Name, Required_Quantity_inkg, Place)
VALUES
('Safarjan', 20, 'NYC'),
('Safarjan', 20, 'Washington_DC'),
('Kankoda', 30, 'NYC'),
('Tomato', 40, 'Megacity_Limbhola'),
('Darakh', 50, 'Washington_DC'),
('Darakh', 10, 'Megacity_Limbhola'),
('Darakh', 20, 'Baker_Street'),
('Desi_Corn', 30, 'Megacity_Limbhola'),
('Bhindi', 40, 'NYC'),
('Bhindi', 50, 'Washington_DC'),
('Bhindi', 60, 'Megacity_Limbhola'),
('Bhindi', 37, 'Baker_Street');

SELECT * FROM branch_details;
SELECT * FROM product_details;
SELECT * FROM farmer_details;
SELECT * FROM waste_details;
SELECT * FROM Prerequirement;
