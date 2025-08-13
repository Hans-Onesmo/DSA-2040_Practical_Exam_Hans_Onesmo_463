
-- Dimension Tables
CREATE TABLE DimCustomer (
    customer_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    gender TEXT,
    age INTEGER,
    location TEXT
);

CREATE TABLE DimProduct (
    product_id INTEGER PRIMARY KEY,
    product_name TEXT NOT NULL,
    category TEXT NOT NULL,
    brand TEXT,
    unit_price REAL
);

CREATE TABLE DimTime (
    time_id INTEGER PRIMARY KEY,
    date TEXT NOT NULL,
    quarter TEXT NOT NULL,
    month TEXT NOT NULL,
    year INTEGER NOT NULL
);

-- Fact Table
CREATE TABLE FactSales (
    sales_id INTEGER PRIMARY KEY,
    customer_id INTEGER NOT NULL,
    product_id INTEGER NOT NULL,
    time_id INTEGER NOT NULL,
    quantity INTEGER NOT NULL,
    sales_amount REAL NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES DimCustomer(customer_id),
    FOREIGN KEY (product_id) REFERENCES DimProduct(product_id),
    FOREIGN KEY (time_id) REFERENCES DimTime(time_id)
);

