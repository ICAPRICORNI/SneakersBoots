CREATE TABLE sizes
(
    id   BIGSERIAL PRIMARY KEY,
    name TEXT NOT NULL
);

CREATE TABLE products_sizes
(
    user_id BIGINT NOT NULL REFERENCES users (id) ON DELETE CASCADE,
    size_id BIGINT NOT NULL REFERENCES sizes (id) ON DELETE CASCADE,
    PRIMARY KEY (user_id, size_id)
)
