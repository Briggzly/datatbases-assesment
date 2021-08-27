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

-- Extra Credit

-- Artist Table

SELECT *
FROM artist
ORDER BY name DESC
LIMIT 10

SELECT *
FROM artist
WHERE name LIKE 'Black%'

SELECT *
FROM artist
WHERE name LIKE '%Black%'

-- Employee Table

SELECT *
FROM employee
ORDER BY birth_date DESC
LIMIT 1

SELECT *
FROM employee
ORDER BY birth_date
LIMIT 1

-- Invoice Table

SELECT COUNT(*)
FROM invoice
WHERE billing_state IN ('CA','TX','AZ')

SELECT AVG(total)
FROM invoice

-- More Join Queries

SELECT pt.track_id, p.name
FROM playlist_track pt
JOIN playlist p
ON pt.playlist_id = p.playlist_id
WHERE p.name = 'Music'

SELECT t.name AS track_name
FROM track t
JOIN playlist_track 
ON t.track_id = playlist_track.track_id
WHERE playlist_id = 5

SELECT t.name AS track_name,p.name AS playlist_name
FROM track t
JOIN playlist_track ON t.track_id = playlist_track.track_id
JOIN playlist p ON p.playlist_id = playlist_track.playlist_id
WHERE p.playlist_id = 5

SELECT t.name AS track_name,al.title AS album_title, g.name AS genre
FROM track t
JOIN album al ON t.album_id = al.album_id
JOIN genre g ON g.genre_id = al.album_id
WHERE g.name = 'Alternative & Punk'