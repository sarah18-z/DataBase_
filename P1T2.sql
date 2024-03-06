-- Adding a new customer:
INSERT INTO customers (first_name, last_name, email, city)
VALUES ('sarah', 'zemirli', 'sarah.zemirli@example.fr', 'alger');

-- Updating the address for a customer
UPDATE customers 
SET city = 'Montreal' 
WHERE first_name = 'sarah' AND last_name = 'zemirli';

-- Deleting an inactive customer
DELETE FROM customers 
WHERE first_name = 'sarah' AND last_name = 'zemirli';