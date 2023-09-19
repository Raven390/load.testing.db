CREATE SCHEMA test_app;

CREATE TABLE test_app.test_case
(
    id UUID PRIMARY KEY,
    name VARCHAR(255),
    user_id VARCHAR(36) NOT NULL,
    test_case_request JSON,
    FOREIGN KEY (user_id) REFERENCES public.user_entity(id)
);