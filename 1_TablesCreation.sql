Drop Database if exists DarkMountainPizza;
Create Database DarkMountainPizza;
Use DarkMountainPizza;


CREATE TABLE `Pizza_Menu` (
`pizza_id` INT NOT NULL AUTO_INCREMENT,
`pizza_type` VARCHAR(45) NOT NULL,
`price` DECIMAL(6, 2) NOT NULL,
PRIMARY KEY (`pizza_id`));


CREATE TABLE `Order_Date` (
`order_id` INT NOT NULL AUTO_INCREMENT,
`order_date` DATETIME NOT NULL,
PRIMARY KEY (`order_id`));


CREATE TABLE `Pizza_Orders` (
`order_id` INT NOT NULL, 
`pizza_id` INT NOT NULL,
`quantity` INT NOT NULL);

CREATE TABLE `Customers` (
`customer_id` INT NOT NULL AUTO_INCREMENT,
`customer_name` VARCHAR(55) NOT NULL,
`phone_number` VARCHAR(55) NOT NULL,
PRIMARY KEY(`customer_id`));



CREATE TABLE `Customer_Orders` (
`customer_id` INT NOT NULL,
`order_id` INT NOT NULL);
