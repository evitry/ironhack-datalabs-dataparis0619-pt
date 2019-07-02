/*create database lab_mysql;*/

use lab_mysql;

CREATE TABLE compte_client (
    ClientID INT primary key not null,
    Propriete VARCHAR(20),
    DateModif DATE,
    MainAdressCity varchar(50)
);

drop table compte_client;

CREATE TABLE compte_client (
    ClientID INT primary key not null,
    Propriete VARCHAR(20),
    DateModif DATE,
    MainAdressCity varchar(50)
);

CREATE TABLE achat (
    AchatID INT primary key not null,
    IDcompte INT,
    IDproduit INT,
    Quantity INT
);

drop table achat;

CREATE TABLE achat (
    AchatID INT primary key not null,
    IDcompte INT,
    IDproduit INT,
    Quantity INT
);

CREATE TABLE produit (
    ProduitID INT primary key not null,
    NameProduit VARCHAR(20),
    Price decimal(3,2),
    IDcategory INT
);

drop table produit;

CREATE TABLE produit (
    produitID INT primary key not null,
    NameProduit VARCHAR(20),
    Price decimal(3,2),
    IDcategory INT
);

CREATE TABLE category (
	IDcategory INT,
    CategoryName VARCHAR(20),
    IDSubCategory INT
);

drop table category;

CREATE TABLE category (
	IDcategory INT,
    CategoryName VARCHAR(20),
    IDSubCategory INT
);