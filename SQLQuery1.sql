use biproject;

CREATE TABLE Product(
id INT NOT NULL IDENTITY(1,1),
productID VARCHAR(50),
productName VARCHAR(300),
category VARCHAR(50),
subcategory VARCHAR(50),
PRIMARY KEY(id)
)


CREATE TABLE Customer(
id INT NOT NULL IDENTITY(1,1),
customerID VARCHAR(500),
firstName VARCHAR(500),
lastName VARCHAR(500),
postalCode INT,
segment VARCHAR(500),
country VARCHAR(500),
customerState VARCHAR(500),
region VARCHAR(500),
city VARCHAR(500),
PRIMARY KEY(id)
)

CREATE TABLE CustomerOrder(
id INT NOT NULL IDENTITY(1,1),
orderID VARCHAR(50),
shipDate DATE,
shipMode VARCHAR(50),
PRIMARY KEY(id)
)

CREATE TABLE DimDate(
id INT,
dateYear INT,
dateMonth INT,
dateDay INT,
PRIMARY KEY(id)
)

CREATE TABLE Facts(
id INT NOT NULL IDENTITY(1,1),
orderID INT,
productID INT,
customerID INT,
dimDateID INT,
sales INT,
quantity INT,
discount INT,
PRIMARY KEY(id),
FOREIGN KEY(orderID) REFERENCES CustomerOrder(id),
FOREIGN KEY(productID) REFERENCES Product(id),
FOREIGN KEY(customerID) REFERENCES Customer(id),
FOREIGN KEY(dimDateID) REFERENCES DimDate(id)
)