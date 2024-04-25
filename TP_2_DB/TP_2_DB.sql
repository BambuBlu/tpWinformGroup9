
 CREATE DATABASE TP_2_DB
 GO 
USE TP_2_DB
GO
 CREATE TABLE MARCAS
 (
  ID INT NOT NULL PRIMARY KEY IDENTITY (1,1),
  DESCRIPCION VARCHAR(300) NULL,
 )
GO 
CREATE TABLE CATEGORIAS 
(
    ID INT NOT NULL PRIMARY KEY IDENTITY (1,1),
    DESCRIPCION VARCHAR(300) NULL,
)
GO 
 CREATE TABLE ARTICULOS 
(
 ID INT NOT NULL PRIMARY KEY IDENTITY (1,1),
 CODIGO INT NULL,
 NOMBRE VARCHAR(50) NULL, 
 DESCRIPCION VARCHAR(300) NULL,
 IDMARCA INT NULL FOREIGN KEY REFERENCES MARCAS (ID),
 IDCATEGORIA INT NULL FOREIGN KEY REFERENCES CATEGORIAS (ID),
 PRECIO MONEY NULL, 
 CANTIDAD INT NOT NULL, 
 )
 GO
INSERT INTO CATEGORIAS (DESCRIPCION)
VALUES 
('HARDWARE'),('SOFTWARE'),('PERIFERICOS'),('TVs'),('CLIMATIZACION'),('COCINA'),('MUEBLES'),('FOTOGRAFIA'),('CELULARES');
GO
INSERT INTO MARCAS (DESCRIPCION)
VALUES 
('SANSUNG'),('LG'),('MOTOROLA'),('DELL'),('SANYO'),('ASUS'),('APPLE');
GO
INSERT INTO ARTICULOS (CODIGO, NOMBRE, PRECIO, DESCRIPCION, IDMARCA, IDCATEGORIA, CANTIDAD)
VALUES 
(1,'Laptop', 800, '2gb',1,2,10),
(2,'Teléfono', 500,'Rojo c2mpx',1,9,20),
(3,'Tablet', 600,'64gb',2,1,30),
(4,'Teclado', 50, 'Mecanico',4,3,10),
(5,'Mouse', 30, '2ms',6,3,15),
(6,'Monitor', 200, '1080p',2,3,12),
(7,'Impresora', 150, 'Laser',1,3,15),
(8,'Altavoces', 100, 'HQ',5,3,11),
(9,'Aire Acondicionado', 80, '3000 FRIGORIAS',2,5,10),
(10,'Cámara', 400, '3000 MPX',1,8,15);