CREATE TABLE orders (
    order_id INTEGER PRIMARY KEY AUTOINCREMENT,
    customer_id INTEGER NOT NULL,
    order_date TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
    amount REAL NOT NULL DEFAULT 0 CHECK(amount >= 0),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- YYYY-MM-DD HH:MM:SS
