CREATE TABLE authors(
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    author_name varchar(55) NOT NULL,
    email_address varchar(55) UNIQUE);
INSERT INTO authors (author_name, email_address) VALUES 
('Alice Walker', 'alice.walker@example.com'),
('Mark Twain', 'mark.twain@example.com'),
('Virginia Woolf', 'virginia.woolf@example.com');

CREATE TABLE bookss(
    book_id int AUTO_INCREMENT PRIMARY KEY,
    book_title varchar(55) NOT NULL,
    author_id  int NOT NULL,
    FOREIGN KEY (author_id) REFERENCES authors(author_id));

INSERT INTO bookss (book_title, author_id) VALUES
('The Color Purple', 1),
('Adventures of Huckleberry Finn', 2),
('Mrs. Dalloway', 3);
