USE DarkMountainPizza;

SELECT `customer_id`, COUNT(*) AS `total_transactions`
FROM `Customer_Orders`
JOIN `Pizza_Orders` ON `Customer_Orders`.`order_id` = `Pizza_Orders`.`order_id`
GROUP BY `customer_id`;



SELECT `Customers`.`customer_id`, `Customers`.`customer_name`, COUNT(*) AS `total_transactions`
FROM `Customer_Orders`
JOIN `Pizza_Orders` ON `Customer_Orders`.`order_id` = `Pizza_Orders`.`order_id`
INNER JOIN	`Customers` ON `Customers`.`customer_id` = `Customer_Orders`.`customer_id`
GROUP BY `customer_id`;



-- Q4: Now the restaurant would like to know which customers are spending the most money at their establishment. 
-- Write a SQL query which will tell them how much money each individual customer has spent at their restaurant
SELECT `Customers`.`customer_name`, SUM(`Pizza_Menu`.`price`) AS total_spent
FROM `Customers`
JOIN `Customer_Orders` ON `Customer_orders`.`customer_id` = `Customers`.`customer_id`
JOIN `Order_Date` ON `Order_Date`.`order_id` = `Customer_Orders`.`order_id`
JOIN `Pizza_Orders` ON `Pizza_Orders`.`order_id` = `Order_Date`.`order_id`
JOIN `Pizza_Menu` ON `Pizza_Menu`.`pizza_id` = `Pizza_Orders`.`pizza_id`
GROUP BY `Customers`.`customer_name`;



-- Q5: Modify the query from Q4 to separate the orders not just by customer, 
-- but also by date so they can see how much each customer is ordering on which date.
SELECT `Customers`.`customer_name`, DATE(`Order_Date`.`order_date`) , 
       SUM(`Pizza_Menu`.`price`) AS `total_spent`
FROM `Customers`
JOIN `Customer_Orders` ON `Customer_Orders`.`customer_id` = `Customers`.`customer_id`
JOIN `Order_Date` ON `Order_Date`.`order_id` = `Customer_Orders`.`order_id` 
JOIN `Pizza_Orders` ON `Pizza_Orders`.`order_id` = `Order_Date`.`order_id`
JOIN `Pizza_Menu` ON `Pizza_Menu`.`pizza_id` = `Pizza_Orders`.`pizza_id`
GROUP BY `Customers`.`customer_name`, `order_date`;



Select * From `Pizza_Orders`
Where `Pizza_Orders`.`quantity` > 1;




Select `Pizza_Orders`.`order_id`, `Pizza_Orders`.`pizza_id`, `Pizza_Menu`.`pizza_type`, `Pizza_Orders`.`quantity` From `Pizza_Orders`
Inner Join `Pizza_Menu` ON `Pizza_Menu`.`pizza_id` = `Pizza_Orders`.`pizza_id`
Where `Pizza_Orders`.`quantity` > 1;




SELECT `Pizza_Menu`.`pizza_type`, SUM(`Pizza_Orders`.`quantity`) AS `Total_Sold`
FROM `Pizza_Orders`
INNER JOIN `Pizza_Menu` ON `Pizza_Menu`.`pizza_id` = `Pizza_Orders`.`pizza_id`
GROUP BY `Pizza_Menu`.`pizza_type`;




