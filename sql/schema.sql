USE `bus-transportation-app`;

DROP TABLE IF EXISTS `bus`;
CREATE TABLE `bus` (
    `name` VARCHAR(255) PRIMARY KEY
);

DROP TABLE IF EXISTS `stop`;
CREATE TABLE `stop` (
    `name` VARCHAR(255) PRIMARY KEY,
    `latitude` FLOAT(10, 6) NOT NULL,
    `longitude` FLOAT(10, 6) NOT NULL
);

DROP TABLE IF EXISTS `route`;
CREATE TABLE `route` (
    `bus_name` INTEGER FOREIGN KEY REFERENCES `bus` (`name`),
    `stop_name` INTEGER FOREIGN KEY REFERENCES `stop` (`name`),
    `position` INTEGER NOT NULL,
    PRIMARY KEY (`bus_id`, `stop_id`)
);
