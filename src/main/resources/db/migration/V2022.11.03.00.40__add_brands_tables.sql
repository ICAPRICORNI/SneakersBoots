CREATE TABLE brands
(
    id   BIGSERIAL PRIMARY KEY,
    name TEXT NOT NULL
);

CREATE TABLE products_brands
(
    user_id  BIGINT NOT NULL REFERENCES users (id) ON DELETE CASCADE,
    brand_id BIGINT NOT NULL REFERENCES brands (id) ON DELETE CASCADE,
    PRIMARY KEY (user_id, brand_id)
)
