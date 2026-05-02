-- create the superstore_raw table and load data from the CSV file

CREATE TABLE superstore_raw (
    row_id INT,
    order_id TEXT,
    order_date DATE,
    ship_date DATE,
    ship_mode TEXT,
    customer_id TEXT,
    customer_name TEXT,
    segment TEXT,
    country TEXT,
    city TEXT,
    state_ TEXT,
    postal_code TEXT,
    region TEXT,
    product_id TEXT,
    category TEXT,
    sub_category TEXT,
    product_name TEXT,
    sales NUMERIC(10,2),
    quantity INT,
    discount NUMERIC(4,2),
    profit NUMERIC(10,2)
);

COPY superstore_raw
FROM '/Users/blaibelj/Documents/GitHub/data_portfolio/sql_business_analysis/data/superstore_clean.csv'
DELIMITER ','
CSV HEADER;