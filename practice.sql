CREATE DATABASE IF NOT EXISTS test_db;
USE test_db;

CREATE TABLE post_test (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    author_name VARCHAR(75) NOT NULL,
    body TEXT NOT NULL,
    PRIMARY KEY (id)
);

SHOW tables;

DESCRIBE post_test;

INSERT INTO post_test(author_name, body) VALUES('Sam Ramos', 'this is cool'),
                                               ('Steve Webby', 'k');

SELECT * FROM post_test
WHERE id < 2;

UPDATE post_test
SET author_name = 'Steve'
WHERE id = 2;

SELECT * FROM post_test;

SELECT * FROM post_test WHERE id = 2;


DELETE FROM post_test WHERE id = 2;

SELECT * FROM post_test;


