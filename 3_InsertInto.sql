Use DarkMountainPizza;

INSERT INTO Pizza_Menu ( pizza_type, price)
VALUES( 'Pepperoni & Cheese', 7.99);

INSERT INTO Pizza_Menu ( pizza_type, price)
VALUES( 'Vegetarian', 9.99);

INSERT INTO Pizza_Menu ( pizza_type, price)
VALUES( 'Meat Lovers', 14.99);

INSERT INTO Pizza_Menu ( pizza_type, price)
VALUES( 'Hawaiian', 12.99);



Select * From Pizza_Menu;




INSERT INTO Customers (`customer_name`, `phone_number`)
VALUES ('Trevor Page', '226-555-4982');

INSERT INTO Customers (`customer_name`, `phone_number`)
VALUES ('John Doe', '555-555-9498');

INSERT INTO Customers (`customer_name`, `phone_number`)
VALUES ('Guest', '999-999-9999');

Select * From Customers;

Select * From Order_Date;








INSERT INTO Order_Date (order_date)
VALUES ('2014-09-10 9:47:00');

INSERT INTO Customer_Orders (customer_id, order_id)
VALUES (1, 1);

INSERT INTO Pizza_Orders (order_id, pizza_id,  quantity)
VALUES(1, 1, 2);










INSERT INTO Order_Date (order_date)
VALUES ('2014-09-10 9:47:00');

INSERT INTO Customer_Orders (customer_id, order_id)
VALUES (1, 2);

INSERT INTO Pizza_Orders (order_id, pizza_id,  quantity)
VALUES(2, 1, 2);








INSERT INTO Order_Date (order_date)
VALUES ('2014-09-10 14:47:00');

INSERT INTO Customer_Orders (customer_id, order_id)
VALUES (2, 3);

INSERT INTO Pizza_Orders (order_id, pizza_id,  quantity)
VALUES(3, 1, 1);







INSERT INTO Order_Date (order_date)
VALUES ('2014-09-11 11:47:00');

INSERT INTO Customer_Orders (customer_id, order_id)
VALUES (1, 4);

INSERT INTO Pizza_Orders (order_id, pizza_id,  quantity)
VALUES(4, 4, 4);







INSERT INTO Order_Date (order_date)
VALUES ('2014-09-11 18:47:00');

INSERT INTO Customer_Orders (customer_id, order_id)
VALUES (3, 5);

INSERT INTO Pizza_Orders (order_id, pizza_id,  quantity)
VALUES(5, 2, 2);








