CREATE SCHEMA load_testing;

CREATE TABLE load_testing.user
(
    id VARCHAR(36) PRIMARY KEY
);

CREATE TABLE load_testing.test_case
(
    id VARCHAR(36) PRIMARY KEY,
    name VARCHAR(30),
    userid VARCHAR(36),
    FOREIGN KEY (userid) REFERENCES load_testing.user(id)
);