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





Successfully created project 'Assignment12' on GitHub, but initial commit failed: Author identity unknown *** Please tell me who you are. Run git config --global user.email "you@example.com" git config --global user.name "Your Name" to set your account's default identity. Omit --global to set the identity only in this repository. unable to auto-detect email address (got 'nyusu@DESKTOP-T6R0NM0.(none)')