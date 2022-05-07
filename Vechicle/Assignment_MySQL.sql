CREATE DATABASE `vehicledata`;
DROP DATABASE `vehicledata`;
CREATE TABLE `vehicles` (
    `Id` INT PRIMARY KEY AUTO_INCREMENT,
    `Make_Model` VARCHAR(255),
    `Wheels` INT,
    `Doors` INT,
    `Type` VARCHAR(255)
);
DROP TABLE `vehicles`;
INSERT INTO `vehicles` (Make_Model, Wheels, Doors, Type ) VALUES('Ford Focus', 4, 4, 'Sedan' );
INSERT INTO `vehicles` (Make_Model, Wheels, Doors, Type ) VALUES('Tesla Roadster', 4, 2, 'Sports' );
INSERT INTO `vehicles` (Make_Model, Wheels, Doors, Type ) VALUES('Kawakasi Ninja', 2, 0, 'Motorcycle' );
INSERT INTO `vehicles` (Make_Model, Wheels, Doors, Type ) VALUES('McLaren Formula 1', 4, 0, 'Race' );
INSERT INTO `vehicles` (Make_Model, Wheels, Doors, Type ) VALUES('Tesla S', 4, 4, 'Sedan' );
