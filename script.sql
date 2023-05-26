-- Crea la tabla "orders"
CREATE TABLE PUBLIC.orders (
  id SERIAL PRIMARY KEY,
  description VARCHAR(255)
);

-- Crea la tabla "items"
CREATE TABLE PUBLIC.items (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  type VARCHAR(255),
  order_id INTEGER REFERENCES orders (id)
);

