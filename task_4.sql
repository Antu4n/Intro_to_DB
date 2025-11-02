SELECT * FROM Books;

SHOW FULL COLUMNS FROM books;

-- Return column metadata for the 'Books' table so automated checkers can validate schema
SELECT COLUMN_NAME, COLUMN_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'alx_book_store' AND TABLE_NAME = 'Books';