-- Drop the database if it exists
DROP DATABASE IF EXISTS Tarea3;

-- Create the database
CREATE DATABASE Tarea3;

-- Switch to the new database
USE Tarea3;
-- Elimina las tablas si existen
DROP TABLE IF EXISTS `productos`;
DROP TABLE IF EXISTS `cajeros`;
DROP TABLE IF EXISTS `maquinas`;
DROP TABLE IF EXISTS `venta`;

-- Crea la tabla `productos`
CREATE TABLE `productos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) DEFAULT NULL,
  `precio` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- Crea la tabla `cajeros`
CREATE TABLE `cajeros` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- Crea la tabla `maquinas`
CREATE TABLE `maquinas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `piso` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- Crea la tabla `venta`
CREATE TABLE `venta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cajero` int(11) NOT NULL,
  `producto` int(11) NOT NULL,
  `maquina` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (cajero) REFERENCES cajeros(id),
  FOREIGN KEY (producto) REFERENCES productos(id),
  FOREIGN KEY (maquina) REFERENCES maquinas(id)
);

INSERT INTO `productos` (`nombre`, `precio`) VALUES
('Producto1', 10),
('Producto2', 20),
('Producto3', 30),
('Producto4', 40),
('Producto5', 50);

INSERT INTO `cajeros` (`nombre`) VALUES
('Nombre1'),
('Nombre2'),
('Nombre3'),
('Nombre4'),
('Nombre5');

INSERT INTO `maquinas` (`piso`) VALUES
(1),
(2),
(1),
(3),
(2);

INSERT INTO `venta` (`cajero`, `producto`, `maquina`) VALUES
(1, 1, 1),
(2, 3, 2),
(3, 2, 1),
(4, 4, 3),
(5, 5, 2);
