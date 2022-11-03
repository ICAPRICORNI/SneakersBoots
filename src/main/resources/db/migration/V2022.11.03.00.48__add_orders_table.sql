CREATE TABLE orders
(
    id         BIGSERIAL PRIMARY KEY,
    user_id    BIGINT NOT NULL REFERENCES users (id) ON DELETE CASCADE,
    product_id BIGINT NOT NULL REFERENCES products (id) ON DELETE CASCADE,
    size_id    BIGINT NOT NULL REFERENCES sizes (id) ON DELETE CASCADE,
    status     TEXT   NOT NULL
)
