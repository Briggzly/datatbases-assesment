-- Artist Table

INSERT INTO artist (name)
VALUES ('Kyson Briggs'),
('Bob Ross'),
('Steve Jobs')

SELECT *
FROM artist
ORDER BY artist
LIMIT 5

-- Employee Table

SELECT first_name,last_name
FROM employee
WHERE city = 'Calgary'

SELECT *
FROM employee
WHERE reports_to = 2

SELECT COUNT(*)
FROM employee
WHERE city = 'Lethbridge'

-- Invoice Table

SELECT COUNT(*)
FROM invoice
WHERE billing_country = 'USA'

SELECT *
FROM invoice 
ORDER BY total DESC
LIMIT 1

SELECT *
FROM invoice
ORDER BY total
LIMIT 1

SELECT *
FROM invoice
WHERE total > 5

SELECT COUNT(*)
FROM invoice
WHERE total < 5

SELECT SUM(total)
FROM invoice

-- JOIN Queries

SELECT * FROM invoice
JOIN invoice_line ON invoice.invoice_id = invoice_line.invoice_id
WHERE invoice_line.unit_price > 0.99

SELECT i.invoice_date AS date,c.first_name,c.last_name,i.total
FROM invoice i
JOIN customer c
ON i.customer_id = c.customer_id


SELECT al.title,a.name AS artist
FROM album al
JOIN artist a
ON al.artist_id = a.artist_id