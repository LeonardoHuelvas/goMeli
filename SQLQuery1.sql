CREATE DATABASE meli_ecommerce;
GO

USE meli_ecommerce;
GO

CREATE TABLE Customer (
   id INT IDENTITY(1,1) PRIMARY KEY,
   email VARCHAR(255) NOT NULL,
   nombre VARCHAR(100) NOT NULL,
   apellido VARCHAR(100) NOT NULL,
   sexo CHAR(1) NOT NULL,
   direccion VARCHAR(255),
   fecha_nac DATE,
   telefono VARCHAR(20)
);

CREATE TABLE Item (
   id INT IDENTITY(1,1) PRIMARY KEY,
   nombre VARCHAR(255) NOT NULL,
   precio DECIMAL(10,2) NOT NULL,
   estado VARCHAR(50) NOT NULL,
   categoria_id INT NOT NULL,
   CONSTRAINT fk_categoria FOREIGN KEY (categoria_id) REFERENCES Category(id)
);

CREATE TABLE Category (
   id INT IDENTITY(1,1) PRIMARY KEY,
   nombre VARCHAR(255) NOT NULL,
   path VARCHAR(255) NOT NULL
);

CREATE TABLE [Order] (
   id INT IDENTITY(1,1) PRIMARY KEY,
   fecha DATETIME NOT NULL,
   customer_id INT NOT NULL,
   CONSTRAINT fk_customer FOREIGN KEY (customer_id) REFERENCES Customer(id)
);

CREATE TABLE OrderItem (
   order_id INT NOT NULL,
   item_id INT NOT NULL,
   cantidad INT NOT NULL,
   CONSTRAINT pk_orderitem PRIMARY KEY (order_id, item_id),
   CONSTRAINT fk_order FOREIGN KEY (order_id) REFERENCES [Order](id),
   CONSTRAINT fk_item FOREIGN KEY (item_id) REFERENCES Item(id)
);
