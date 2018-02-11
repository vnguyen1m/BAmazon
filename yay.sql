
-- 1. Create a MySQL Database called `bamazon`.
CREATE DATABASE bamazon;
USE bamazon;
-- 2. Then create a Table inside of that database called `products`.
CREATE TABLE products (

-- 3. The products table should have each of the following columns:
   -- * item_id (unique id for each product)
   -- * product_name (Name of product)
   -- * department_name
   -- * price (cost to customer)
   -- * stock_quantity (how much of the product is available in stores
  id INTEGER(11) AUTO_INCREMENT NOT NULL,
  product_name VARCHAR(30) NOT NULL,
  department_name VARCHAR(30) NOT NULL,
  price INTEGER(10),
  stock_quantity INTEGER(10),
  PRIMARY KEY (id)
);

-- 4. Populate this database with around 10 different products. (i.e. Insert "mock" data rows into this database and table).
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("COSPLAY", "SUPERHEROES", 10, 5);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("TEA", "OOLONG", 2, 3);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("COFFEE", "SINGLE ORIGIN", 10, 5);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("FOOD", "ICE CREAM", 10, 5);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("BREAD", "ROSEMARY", 10, 5);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("BREAD", "THYME", 10, 5);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("BREAD", "MINT", 10, 5);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("CLOTHES", "DENIM", 10, 5);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("COSPLAY", "DEMONS", 10, 5);
