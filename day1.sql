INSERT INTO library(id,title,author,price,genre)
VALUES
(1, 'The Great Gatsby', 'F. Scott Fitzgerald', 450, 'Fiction'),
(2, 'A Brief History of Time', 'Stephen Hawking', 600, 'Science'),
(3, 'The Da Vinci Code', 'Dan Brown', 350, 'Thriller'),
(4, 'Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 700, 'History'),
(5, 'To Kill a Mockingbird', 'Harper Lee', 300, 'Fiction');

SELECT * FROM `library` WHERE price>400
SELECT * FROM `library` WHERE genre IN ('History','Science','Fiction')
SELECT * FROM `library` WHERE title='The Great Gatsby'
SELECT * FROM `library` WHERE author<>'Dan Brown'