CREATE TABLE products
(
    id          BIGSERIAL PRIMARY KEY,
    name        TEXT    NOT NULL,
    price       DECIMAL NOT NULL,
    old_price   DECIMAL,
    description TEXT,
    status      TEXT    NOT NULL
)
