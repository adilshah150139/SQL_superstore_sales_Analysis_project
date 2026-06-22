DROP TABLE IF EXISTS superstore;

CREATE TABLE superstore(
    row_id INT,
    order_id VARCHAR(50),        
    order_date TIMESTAMP,
    ship_date TIMESTAMP,
    ship_mode TEXT,
    customer_id TEXT,
    customer_name VARCHAR(50),
    segment TEXT,
    country TEXT,
    city TEXT,
    state TEXT,
    postal_code VARCHAR(50),     
    region TEXT,
    product_id TEXT,
    category TEXT,
    sub_category TEXT,            
    product_name TEXT,
    sales DECIMAL(10,2),         
    quantity INT,
    discount DECIMAL(5,2),       
    profit DECIMAL(10,2)         
);



SELECT COUNT(*) AS column_count 
FROM information_schema.columns 
WHERE table_name = 'superstore';


-- Add indexes for performance
CREATE INDEX idx_customer_id ON superstore(customer_id);
CREATE INDEX idx_product_id ON superstore(product_id);
CREATE INDEX idx_order_date ON superstore(order_date);


SELECT *
FROM superstore
LIMIT 100;
