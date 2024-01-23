
DROP TABLE IF EXISTS Cars;

CREATE TABLE Cars (
Cars_VIN VARCHAR(45) PRIMARY KEY NOT NULL UNIQUE,
Cars_Manifacturer VARCHAR(45),
Cars_Model VARCHAR(45),
Cars_Year INT, 
Cars_Colors VARCHAR(45)
);

DROP TABLE IF EXISTS Salespersons;

CREATE TABLE Salespersons (
Salespersons_ID INT PRIMARY KEY UNIQUE NOT NULL,
Salespersons_Name VARCHAR(45),
Salespersons_Store VARCHAR(45)
);

DROP TABLE IF EXISTS Customers;

CREATE TABLE  Customers (
Customers_ID INT PRIMARY KEY UNIQUE NOT NULL,
Customers_Name VARCHAR(45),
Customers_Phone_Number VARCHAR(45),
Customers_Email VARCHAR(45),
Customers_Address VARCHAR(45),
Customers_State_Province VARCHAR(45),
Customers_City VARCHAR(45),
Customers_Country VARCHAR(45),
Customers_ZIP VARCHAR(45));

DROP TABLE IF EXISTS Invoices;

CREATE TABLE  Invoices (
Invoices_Number INT PRIMARY KEY AUTO_INCREMENT UNIQUE,
Invoices_Date DATE,
Invoices_Cars_VIN VARCHAR(45) NOT NULL UNIQUE,
Invoices_Salespersons INT,
Invoices_Customers_ID INT UNIQUE NOT NULL,
FOREIGN KEY (Invoices_Customers_ID) REFERENCES Customers(Customers_ID),
FOREIGN KEY (Invoices_Cars_VIN) REFERENCES Cars(Cars_VIN),
FOREIGN KEY (Invoices_Salespersons) REFERENCES Salespersons(Salespersons_ID)
);


ALTER TABLE invoices
DROP FOREIGN KEY invoices_ibfk_2;
ALTER TABLE invoices
DROP FOREIGN KEY invoices_ibfk_3;

DROP DATABASE IF EXISTS lab_mysq1;
DROP DATABASE IF EXISTS lab_mysql2;









