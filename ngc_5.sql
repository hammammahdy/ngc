CREATE TABLE Customers(
	customer_id serial primary key,
	customer_name varchar(50) NOT NULL,
	city varchar(50) NOT NULL
	
);
	
CREATE TABLE Orders(
	order_id serial primary key,
	customer_id serial,
	order_date date,
	total_amount decimal,
	FOREIGN KEY (customer_id) REFERENCES customers(customer_id)

);

INSERT INTO customers(customer_name, city)
values ('John Doe', 'New York'), ('Jane Smith', 'Los Angeles'), ('David Johnson', 'Chicago')

	
INSERT INTO orders(customer_id, order_date, total_amount)
values (1, '2022-01-10', 100.00), (1, '2022-02-15', 150.00), (2, '2022-03-20', 200.00), (3, '2022-04-25', 50.00)

SELECT * FROM customers

SELECT * FROM orders

SELECT *
FROM customers 
JOIN orders
ON customers.customer_id=orders.order_id

GROUP BY customer_id, order_id
ORDER BY COUNT(order_id) DESC

SELECT customer_name, customer_id, order_id, COUNT(*) AS jumlah_order
FROM customers, orders
GROUP BY customer_id
ORDER BY order_id

SELECT
	c.customer_name,
	COUNT(o.order_id) AS total_order
FROM
	customers c
JOIN
	orders o ON c.customer_id= o.order_id
GROUP BY
	c.customer_id, c.customer_name, o.order_id




