use library;

CREATE TABLE book_audit (
    id INT AUTO_INCREMENT PRIMARY KEY,
    ISBN varchar(15) not null,
    price decimal(5,2),
    changedate DATETIME DEFAULT NULL,
    action VARCHAR(50) DEFAULT NULL
);
