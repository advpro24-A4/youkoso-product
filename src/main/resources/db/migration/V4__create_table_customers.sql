CREATE TABLE customers
(
    id         INTEGER GENERATED BY DEFAULT AS IDENTITY NOT NULL,
    email      VARCHAR(45) NOT NULL,
    password   VARCHAR(64) NOT NULL,
    first_name VARCHAR(45) NOT NULL,
    last_name  VARCHAR(45) NOT NULL,
    CONSTRAINT pk_customers PRIMARY KEY (id)
);

ALTER TABLE cart_items
    ADD customer_id INTEGER;

ALTER TABLE customers
    ADD CONSTRAINT uc_customers_email UNIQUE (email);

ALTER TABLE cart_items
    ADD CONSTRAINT FK_CART_ITEMS_ON_CUSTOMER FOREIGN KEY (customer_id) REFERENCES customers (id);