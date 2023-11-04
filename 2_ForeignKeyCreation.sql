Use DarkMountainPizza;
Select * From Customers;
Select * From Pizza_Menu;
Select * From Order_Date;
Select * From Pizza_Orders;
Select * From Customer_Orders;



ALTER TABLE `Customer_Orders` ADD FOREIGN KEY (`customer_id`) REFERENCES `Customers` (`customer_id`);
ALTER TABLE `Customer_Orders` ADD FOREIGN KEY (`order_id`) REFERENCES `Order_Date` (`order_id`);

ALTER TABLE `Pizza_Orders` ADD FOREIGN KEY (`order_id`) REFERENCES `Order_Date` (`order_id`);
ALTER TABLE `Pizza_Orders` ADD FOREIGN KEY (`pizza_id`) REFERENCES `Pizza_Menu` (`pizza_id`);





