# create database join_test_db;


#this was is what fixed the repetition of some of the users when you ran it
DROP TABLE users;
DROP TABLE roles;


CREATE TABLE IF NOT EXISTS roles
(
    id   INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS users
(
    id      INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name    VARCHAR(100) NOT NULL,
    email   VARCHAR(100) NOT NULL,
    role_id INT UNSIGNED DEFAULT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (role_id) REFERENCES roles (id)
);


INSERT INTO roles (name)
VALUES ('admin');
INSERT INTO roles (name)
VALUES ('author');
INSERT INTO roles (name)
VALUES ('reviewer');
INSERT INTO roles (name)
VALUES ('commenter');


INSERT INTO users (name, email, role_id)
VALUES ('bob', 'bob@example.com', 1),
       ('joe', 'joe@example.com', 2),
       ('dee', 'catchdeezhands@example.com', 2),
       ('sally', 'sally@example.com', 2),
       ('jake', 'jake@example.com', 2),
       ('adam', 'adam@example.com', 3),
       ('sam', 'sam@example.com', 3),
       ('jane', 'jane@example.com', null),
       ('mike', 'mike@example.com', null),
       ('stacy', 'stacylacy@example.com', null);


#why does this print out double of names
SELECT users.name as user_name, roles.name as role_name
FROM users
         JOIN roles ON users.role_id = roles.id;


#why does this print out double of names
SELECT users.name AS user_name, roles.name AS role_name
FROM users
         LEFT JOIN roles ON users.role_id = roles.id;


SELECT users.name as user_name, roles.name as role_name
FROM roles
         LEFT JOIN users ON users.role_id = roles.id;