CREATE TABLE products
(
    id          BIGSERIAL PRIMARY KEY,
    name        TEXT      NOT NULL,
    price       DECIMAL   NOT NULL,
    old_price   DECIMAL,
    description TEXT,
    brand_id    BIGINT    NOT NULL REFERENCES brands (id),
    status      TEXT      NOT NULL,
    created_at  TIMESTAMP NOT NULL DEFAULT now()
)
