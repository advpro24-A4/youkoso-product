CREATE TABLE products
(
    product_id          INTEGER GENERATED BY DEFAULT AS IDENTITY NOT NULL,
    product_name        VARCHAR(256) NOT NULL,
    product_price       INTEGER,
    product_stock       INTEGER,
    product_discount    INTEGER,
    product_description VARCHAR(512) NOT NULL,
    CONSTRAINT pk_products PRIMARY KEY (product_id)
);

ALTER TABLE products
    ADD CONSTRAINT uc_products_product_name UNIQUE (product_name);