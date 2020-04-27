DROP DATABASE IF EXISTS bamazon;

CREATE DATABASE bamazon;

USE bamazon;

CREATE TABLE products (
	item_id INT NOT NULL AUTO_INCREMENT,
    product_name TEXT NOT NULL,
    department_name TEXT NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    stock_quantity INT NOT NULL,
    PRIMARY KEY (item_id)
);

INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES
('Halo', 'Games', 59.99, 23),
('Basketball', 'Sports', 14.00, 56),
('Football', 'Sports', 39.99, 200),
('Modern Warfare', 'Games', 59.95, 48),
('Bluetooth Wireless Headphones', 'Electronics', 219.49, 143),
('Helmet', 'Sports', 112.99, 78),
('TV', 'Electronics', 199.99, 56),
('Madden 20', 'Games', 59.99, 30),
('Fork', 'Kitchen', 12.99, 77),
('Spatula', 'Kitchen', 49.99, 60);

CREATE TABLE departments (
    department_id INT NOT NULL AUTO_INCREMENT,
    department_name TEXT NOT NULL,
    over_head_costs DECIMAL(10, 2) NOT NULL,
    PRIMARY KEY (department_id)
);

INSERT INTO departments (department_name, over_head_costs)
VALUES ('Games', 3000),
('Sports', 6000),
('Electronics', 10000),
('Kitchen', 8000)