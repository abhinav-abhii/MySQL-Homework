INSERT INTO book(id,title,author,price,stock_status,genre)
VALUES
(1, 'The Silent Patient', 'Alex Michaelides', 350, 'In Stock', 'Thriller'),
(2, 'Atomic Habits', 'James Clear', 450, 'In Stock', 'Self-Help'),
(3, 'The Alchemist', 'Paulo Coelho', 299, 'In Stock', 'Fiction'),
(4, 'Sapiens', 'Yuval Noah Harari', 800, 'In Stock', 'History'),
(5, 'Harry Potter and the Sorcerer''s Stone', 'J.K. Rowling', 650, 'Out of Stock', 'Fantasy'),
(6, 'The Subtle Art of Not Giving a F*ck', 'Mark Manson', 399, 'In Stock', 'Self-Help'),
(7, 'Rich Dad Poor Dad', 'Robert Kiyosaki', 250, 'Out of Stock', 'Finance'),
(8, 'To Kill a Mockingbird', 'Harper Lee', 500, 'In Stock', 'Classic'),
(9, 'The Great Gatsby', 'F. Scott Fitzgerald', 720, 'Out of Stock', 'Classic'),
(10, '1984', 'George Orwell', 380, 'In Stock', 'Dystopian');

SELECT DISTINCT genre FROM `book` 

SELECT * FROM `book` 
WHERE stock_status='In Stock'AND price<400;

SELECT * FROM book 
WHERE stock_status='Out of stock' AND price>700;

SELECT title,price,price * 1.10 AS price_with_tax
FROM book;

SELECT title,price,stock_status FROM book
ORDER BY price DESC;
