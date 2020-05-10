CREATE TABLE Books(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    author_id BIGINT NOT NULL
);

CREATE TABLE Authors(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(200) NOT NULL,
    surname VARCHAR(200) NOT NULL
);

CREATE TABLE Readers(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(200) NOT NULL,
    surname VARCHAR(200) NOT NULL
);

CREATE TABLE Orders(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    book_id BIGINT NOT NULL,
    reader_id BIGINT NOT NULL
);

ALTER TABLE Books
    ADD CONSTRAINT books_author_id
    FOREIGN KEY (author_id) REFERENCES authors(id);

ALTER TABLE Orders
    ADD CONSTRAINT orders_book_id
    FOREIGN KEY (book_id) REFERENCES books(id);

ALTER TABLE Orders
    ADD CONSTRAINT orders_reader_id
    FOREIGN KEY (reader_id) REFERENCES readers(id);