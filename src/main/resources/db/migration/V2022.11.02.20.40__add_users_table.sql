CREATE TABLE users
(
    id       BIGSERIAL PRIMARY KEY,
    name     TEXT NOT NULL,
    password TEXT NOT NULL,
    email    TEXT NOT NULL
)
