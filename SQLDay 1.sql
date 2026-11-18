-- The case of ITC for investing the data base and creating the tables -

CREATE TABLE distributors (
  distibutor_Id INTEGER PRIMARY KEY,
  name          TEXT NOT NULL,
  city          TEXT,
  region        TEXT,
  phone         TEXT
  ); 
  
  -- Dropping the table -----
  DROP TABLE distributors;
  
  --Create another table name Products--
  create table products (
    product_id INTEGER PRIMARY KEY,
    product_name TEXT NOT NULL UNIQUE,
    brand TEXT,
    category TEXT NOT NULL,
    price REAL CHECK (price > 0),
    stock INTEGER DEFAULT 0
    );
  
  --Create another table name Sales--
  CREATE TAbLE sales (
    sales_id INTEGER PRIMARY KEY,
    product_id INTEGER,
    distributor_id TEXT,
    sales_date TEXT,
    quantity INTEGER CHECK (quantity > 0),
    amount REAL,
    FOREIGN KEY (product_id) REFERENCES products(product_id),
    FOREIGN KEY (distributor_id) REFERENCES distributors(distributor_id)
    );
    
  