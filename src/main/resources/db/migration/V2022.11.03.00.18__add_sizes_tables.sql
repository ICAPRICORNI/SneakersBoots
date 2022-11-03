CREATE TABLE sizes
(
    id   BIGSERIAL PRIMARY KEY,
    name TEXT NOT NULL
);

CREATE TABLE products_sizes
(
    product_id BIGINT NOT NULL REFERENCES products (id) ON DELETE CASCADE,
    size_id    BIGINT NOT NULL REFERENCES sizes (id) ON DELETE CASCADE,
    PRIMARY KEY (product_id, size_id)
)
