-- creation de ma table orders
CREATE TABLE orders ( 
    order_id INTEGER PRIMARY KEY, 
	customer_id INTEGER, 
	book_id INTEGER, 
	order_date DATE, 
	FOREIGN KEY (customer_id) REFERENCES customers(customer_id), 
	FOREIGN KEY (book_id) REFERENCES books(book_id)
	);


-- Understanding Joins 
SELECT orders.order_id, customers.first_name, customers.last_name, books.title, orders.order_date FROM orders INNER JOIN customers ON orders.customer_id = customers.customer_id INNER JOIN books ON orders.book_id = books.book_id;

-- insert data 
INSERT INTO orders (order_id, customer_id, book_id, order_date) 
VALUES (1, 1, 1, '2024-03-06');


--Understanding Joins 
SELECT customers.customer_id, customers.first_name, customers.last_name, 
       orders.order_id, books.title, orders.order_date
FROM customers
LEFT JOIN orders ON customers.customer_id = orders.customer_id
LEFT JOIN books ON orders.book_id = books.book_id;
