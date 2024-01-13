-- Tabel Customer
CREATE TABLE customer (
    cust_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20) NOT NULL,
    username VARCHAR(20) UNIQUE NOT NULL,
    email VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(100) NOT NULL,
    phone_no VARCHAR(16),
    dob DATE,
    profile_pic BLOB
);


-- Tabel Recipient
CREATE TABLE recipient (
    recip_id INT AUTO_INCREMENT PRIMARY KEY,
    cust_id INT,
    recip_name VARCHAR(50) NOT NULL,
    recip_phone_no VARCHAR(15) NOT NULL,
    recip_addr VARCHAR(255),
    FOREIGN KEY (cust_id) REFERENCES customer(cust_id)
);

-- Tabel Category
CREATE TABLE category (
    cat_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

-- Tabel Item
CREATE TABLE item (
    item_id INT AUTO_INCREMENT PRIMARY KEY,
    item_name VARCHAR(100) NOT NULL,
    item_price DECIMAL(10, 2) NOT NULL,
    sku VARCHAR(100) UNIQUE NOT NULL,
    stock INT NOT NULL,
    item_desc VARCHAR(500),
    item_pic BLOB,
    cat_id INT,
    FOREIGN KEY (cat_id) REFERENCES category(cat_id)
);


-- Tabel Cart
CREATE TABLE cart (
    cart_id INT AUTO_INCREMENT PRIMARY KEY,
    cust_id INT,
    item_id INT,
    item_qty INT NOT NULL,
    total_price DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (cust_id) REFERENCES customer(cust_id),
    FOREIGN KEY (item_id) REFERENCES item(item_id)
);

-- Tabel Payment
CREATE TABLE payment (
    pay_id INT AUTO_INCREMENT PRIMARY KEY,
    cust_id INT,
    pay_date DATE NOT NULL,
    amount DECIMAL(10, 2) NOT NULL,
    pay_method ENUM('cash', 'credit card', 'bank transfer', 'e-wallet') NOT NULL,
    FOREIGN KEY (cust_id) REFERENCES customer(cust_id)
);

-- Tabel Order
CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    cust_id INT,
    order_date DATE NOT NULL,
    amount DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (cust_id) REFERENCES customer(cust_id)
);

-- Tabel Order Detail
CREATE TABLE order_detail (
    order_detail_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    item_id INT,
    total_items INT NOT NULL,
    item_price DECIMAL(10, 2) NOT NULL,
    grand_total DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (item_id) REFERENCES item(item_id)
);