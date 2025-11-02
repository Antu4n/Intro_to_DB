-- create_tables.sql

USE alx_book_store;

CREATE TABLE IF NOT EXISTS Authors(
    author_id INT PRIMARY KEY,
    author_name VARCHAR(215)
);

CREATE TABLE IF NOT EXISTS Books(
    book_id INT PRIMARY KEY,
    book_title VARCHAR(255),
    author_id INT,
    FOREIGN KEY (author_id) REFERENCES Authors(author_id),
    Price DECIMAL(10, 2),
    publication_date DATE
);

CREATE TABLE IF NOT EXISTS Customers(
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(215),
    email VARCHAR(215),
    address TEXT
);

CREATE TABLE IF NOT EXISTS Orders(
    order_id INT PRIMARY KEY,
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    order_date DATE
);

CREATE TABLE IF NOT EXISTS OrderDetails(
    orderdetailid INT PRIMARY KEY,
    order_id INT,
    book_id INT,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id),
    quantity INT
);

ALTER TABLE Orders RENAME TO orders;
ALTER TABLE Customers RENAME TO customers;
ALTER TABLE Books RENAME TO books;
ALTER TABLE Authors RENAME TO authors;
ALTER TABLE OrderDetails RENAME TO order_details;