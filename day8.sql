CREATE DATABASE bookstoredb;
USE bookstoredb;
CREATE TABLE authors(
    authors_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    country VARCHAR(100) NOT NULL);
INSERT INTO authors (name, country) VALUES
('J.K. Rowling', 'UK'),
('George R.R. Martin', 'USA'),
('Haruki Murakami', 'Japan'),
('Chinua Achebe', 'Nigeria'),
('Isabel Allende', 'Chile');

CREATE TABLE books(
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(100) NOT NULL,
    authors_id INT NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (authors_id) REFERENCES authors(authors_id));
INSERT INTO books (title, authors_id, price) VALUES
('Harry Potter and the Philosopher Stone', 1, 19.99),
('A Game of Thrones', 2, 22.50),
('Norwegian Wood', 3, 15.00),
('Things Fall Apart', 4, 12.75),
('The House of the Spirits', 5, 18.00);    

ALTER TABLE books
ADD COLUMN published_year INT NOT NULL;

TRUNCATE TABLE books;
DROP DATABASE bookstoredb;

