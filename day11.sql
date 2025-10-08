CREATE TABLE categories (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(100) NOT NULL
);
INSERT INTO categories (category_name) VALUES 
('Fiction'),
('Non-Fiction'),
('Science Fiction'),
('Biography');

CREATE TABLE booksss (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    book_name VARCHAR(150) NOT NULL,
    author_name VARCHAR(100),
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES categories(category_id)
);
INSERT INTO booksss (book_name, author_name, category_id) VALUES
('1984', 'George Orwell', 3),
('To Kill a Mockingbird', 'Harper Lee', 1),
('A Brief History of Time', 'Stephen Hawking', 2),
('The Diary of a Young Girl', 'Anne Frank', 1);

CREATE INDEX idx_book_name ON booksss(book_name);

SHOW INDEXES FROM booksss;
