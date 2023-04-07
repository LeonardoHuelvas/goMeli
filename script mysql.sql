
CREATE TABLE Customer (
   id INT (11)auto_increment, 
   email VARCHAR(255) NOT NULL,
   nombre VARCHAR(100) NOT NULL,
   apellido VARCHAR(100) NOT NULL,
   sexo CHAR(1) NOT NULL,
   direccion VARCHAR(255),
   fecha_nac DATE,
   telefono VARCHAR(20),
   PRIMARY KEY (`id`)
);

CREATE TABLE Item (
    id INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(255) NOT NULL,
    precio DECIMAL(10, 2) NOT NULL,
    estado VARCHAR(20) NOT NULL,
    categoria_id INT NOT NULL,
    CONSTRAINT fk_categoria FOREIGN KEY (categoria_id) REFERENCES Category(id),
    PRIMARY KEY (id)
);

 
 CREATE TABLE Category (
   id INT AUTO_INCREMENT PRIMARY KEY,
   nombre VARCHAR(255) NOT NULL,
   path VARCHAR(255) NOT NULL
);

CREATE TABLE `Order` (
   id INT AUTO_INCREMENT PRIMARY KEY,
   fecha DATETIME NOT NULL,
   customer_id INT NOT NULL,
   CONSTRAINT fk_customer FOREIGN KEY (customer_id) REFERENCES Customer(id)
);

 CREATE TABLE OrderItem (
   order_id INT NOT NULL,
   item_id INT NOT NULL,
   cantidad INT NOT NULL,
   CONSTRAINT pk_orderitem PRIMARY KEY (order_id, item_id),
   CONSTRAINT fk_order FOREIGN KEY (order_id) REFERENCES `Order`(id),
   CONSTRAINT fk_item FOREIGN KEY (item_id) REFERENCES Item(id)
);

INSERT INTO Customer (nombre, apellido, email, sexo, direccion, fecha_nac, telefono)
VALUES
    ('Leonardo Javier', 'Huelvas Borja', 'lhuelvas@example.com', 'M', 'Calle Falsa 123', '1990-05-25', '123456789'),
    ('Lizeth', 'Niño', 'lnino@example.com', 'F', 'Carrera 10 # 23-45', '1988-11-12', '234567890'),
    ('Luis Carlos', 'Mendinueta', 'lcmendinueta@example.com', 'M', 'Avenida Principal 456', '1995-02-03', '345678901'),
    ('Greys', 'Roca', 'groca@example.com', 'F', 'Calle Principal 789', '1992-07-15', '456789012');


select * from Customer
 