/*create database lab_mysql;*/

use lab_mysql;

CREATE TABLE cars (
	ID INT primary key auto_increment,
    VIN char(17),
    ManufacturerModel VARCHAR(50),
    YearCars DATE,
    Color varchar(50)
);

CREATE TABLE customers (
    ID INT primary key auto_increment,
    CustomerID INT,
    NameCustomer VARCHAR(100),
    PhoneNumber varchar(20),
    Email varchar(50)
);

CREATE TABLE Salespersons (
	ID INT primary key auto_increment,
    StaffID INT,
    NameSales VARCHAR(100),
    Store varchar(100)
);

CREATE TABLE Invoices (
	ID INT primary key auto_increment,
    InvoicesNumber INT,
    DateInvoices datetime,
    Car INT,
    Customer INT,
    Staff INT
);
/*missing foreign key constraint in Invoices*/
