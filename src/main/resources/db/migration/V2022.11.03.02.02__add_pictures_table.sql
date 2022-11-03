CREATE TABLE pictures
(
    id          BIGSERIAL PRIMARY KEY,
    name        TEXT NOT NULL,
    product_id  BIGINT NOT NULL REFERENCES products (id) ON DELETE CASCADE
)
