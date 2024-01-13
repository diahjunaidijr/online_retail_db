-- USE online_retail jika diperlukan karena jika menggunakan klik kanan db dan new script maka tidak perlu

-- Mengisi Data ke Tabel Customer
INSERT INTO customer (first_name, last_name, username, email, password, phone_no, dob, profile_pic)
VALUES
    ('Adam', 'N', 'adamn', 'adamn@example.com', 'hashedpassword', '628123456789', '1995-11-03', NULL),
    ('Bryan', 'Smith', 'bryansmith', 'bryans@example.com', 'hashedpassword', '62345678910', '1985-05-15', NULL),
    ('Clara', 'Claire', 'claraclaire', 'clairec@example.com', 'hashedpassword', '628898283649', '2000-11-25', NULL),
    ('Dean', 'Thomas', 'deanthomas', 'deant@example.com', 'hashedpassword', '628281924857', '1995-05-15', NULL),
    ('Effen', 'White', 'effenwhite', 'effenw@example.com', 'hashedpassword', '628395094852', '1994-01-03', NULL),
    ('Franc', 'Jacob', 'francjacob', 'francj@example.com', 'hashedpassword', '628495110348', '1998-06-09', NULL),
    ('George', 'Wong', 'georgewong', 'wongg@example.com', 'hashedpassword', '628500948532', '1990-11-04', NULL),
    ('Harold', 'Connor', 'haroldconnor', 'connorh@example.com', 'hashedpassword', '628600949984', '1992-08-15', NULL),
    ('Ian', 'Reece', 'ianreece', 'reecei@example.com', 'hashedpassword', '628709374651', '2000-09-20', NULL),
    ('Jennie', 'Damian', 'jenniedamian', 'jennied@example.com', 'hashedpassword', '628809578495', '1965-07-11', NULL),
    ('Kriss', 'Jones', 'krissjones', 'jonesk@example.com', 'hashedpassword', '628973349284', '1982-11-19', NULL),
    ('Liam', 'Morton', 'liammorton', 'liamm@example.com', 'hashedpassword', '628194809890', '1975-02-01', NULL),
    ('Melissa', 'Anderson', 'melissaanderson', 'melissaa@example.com', 'hashedpassword', '628290050590', '1986-12-04', NULL),
    ('Noah', 'Byrne', 'noahbyrne', 'noahby@example.com', 'hashedpassword', '628399117396', '1999-04-16', NULL);

-- Mengisi Data ke Tabel Recipient
INSERT INTO recipient (cust_id, recip_name, recip_phone_no, recip_addr)
VALUES
    (1, 'Adam N', '628123456789', 'Jalan Letjen S. Parman No. 123'),
    (2, 'Sarah (Mom)', '628125683689', 'Jalan Raya Kalibata No. 456'),
    (3, 'Clara', '628898283649', 'Jalan Senopati No. 123'),
    (4, 'Dean', '628281924857', 'Jalan Kebon Sirih No. 456'),
    (5, 'Effen', '628395094852', 'Jalan Bintaro Permai No. 123'),
    (6, 'Ellen (Wife)', '628127890751', 'Jalan Raya Kalibata No. 456'),
    (6, 'Josh (Receptionist)', '628223455669', 'Jalan Pramuka No. 123'),
    (7, 'George', '628500948532', 'Jalan Fatmawati No. 456'),
    (8, 'Harold', '628600949984', 'Jalan Gajah Mada No. 123'),
    (9, 'Ian', '628709374651', 'Jalan Mangga Dua No. 456'),
    (10, 'Jennie', '628809578495', 'Jalan Taman Mini I No. 123'),
    (11, 'Kriss', '628973349284', 'Jalan Palmerah Barat No. 456'),
    (12, 'Liam', '628194809890', 'Jalan Pemuda No. 123'),
    (13, 'Noah (Home)', '628399117396', 'Jalan Asia Afrika No. 456');
   
    -- Tambahkan 8 data lainnya

-- Mengisi Data ke Tabel Category
INSERT INTO category (name)
VALUES
    ('Electronics'),
    ('Clothing'),
    ('Footwear'),
    ('Sports'),
    ('Food'),
    ('Beverage'),
    ('Home Appliance'),
    ('Hobbies'),
    ('Beauty & Care'),
    ('Home Care');
    -- Tambahkan data lainnya    
 
-- Mengisi Data ke Tabel Item
INSERT INTO item (item_name, item_price, sku, stock, item_desc, item_pic, cat_id)
VALUES
    ('Lenovo Ideapad Flex 5i', 12000500, 'SKU_001', 100, 'Description for Product', NULL, 1),
    ('Sepatu Brand Geoff', 420500, 'SKU_002', 150, 'Description for Product', NULL, 3),
    ('Sepatu Brand Under Armour', 380000, 'SKU_003', 150, 'Description for Product', NULL, 4),
    ('Kemeja Batik Brand Danar Hadi', 350000, 'SKU_004', 100, 'Description for Product', NULL, 2),
    ('High heels Brand Channel', 3900000, 'SKU_005', 150, 'Description for Product', NULL, 3),
    ('Parfum Brand Dior',3000000, 'SKU_006', 150, 'Description for Product', NULL, 9),
    ('AC Inverter 3/4 PK Brand Panasonic', 5200000, 'SKU_007', 100, 'Description for Product', NULL, 7),
    ('Kulkas NoFrost Low Watt Hisense', 3800000, 'SKU_008', 150, 'Description for Product', NULL, 7),
    ('Detergen Oxyclean Brand So Klin', 20000, 'SKU_009', 150, 'Description for Product', NULL, 10),
    ('Snack Brand X', 5000, 'SKU_010', 300, 'Description for Product', null, 5);
    -- Tambahkan data lainnya


-- Mengisi Data ke Tabel Cart sementara ini table diajukan sebelum menggunakan local storage
INSERT INTO cart (cust_id, item_id, item_qty, total_price)
VALUES
    (1, 1, 1, 12000500),
    (2, 2, 1, 420500),
    (3, 3, 1, 380000),
    (4, 4, 1, 350000),
    (5, 5, 1, 3900000),
    (6, 6, 1, 3000000),
    (7, 7, 1, 5200000),
    (8, 8, 1, 3800000),
    (9, 9, 1, 20000),
    (10, 10, 2, 10000),
    (11, 10, 1, 5000),
    (12, 10, 10, 50000);
    -- Tambahkan data lainnya

-- Mengisi Data ke Tabel Payment
INSERT INTO payment (cust_id, pay_date, amount, pay_method)
VALUES
    (1, '2024-01-13', 12000500, 'e-wallet'),
    (2, '2024-01-13', 3150000, 'credit card'),
    (3, '2024-01-13', 3200000, 'e-wallet'),
    (4, '2024-01-13', 400000, 'e-wallet'),
    (5, '2024-01-13', 150000, 'e-wallet'),
    (6, '2024-01-13', 75000, 'bank transfer'),
    (7, '2024-01-13', 40000, 'e-wallet'),
    (8, '2024-01-13', 3020000, 'credit card'),
    (9, '2024-01-13', 5200000, 'credit card'),
    (10, '2024-01-13', 365000, 'bank transfer'),
    (11, '2024-01-13', 400000, 'e-wallet'),
    (12, '2024-01-13', 350000, 'bank transfer');
    -- Tambahkan data lainnya

-- Mengisi Data ke Tabel Order
INSERT INTO orders (cust_id, order_date, amount)
VALUES
    (1, '2024-01-13', 12000500),
    (2, '2024-01-13', 3150000),
    (3, '2024-01-13', 3200000),
    (4, '2024-01-13', 400000),
    (5, '2024-01-13', 150000),
    (6, '2024-01-13', 75000),
    (7, '2024-01-13', 40000),
    (8, '2024-01-13', 3020000),
    (9, '2024-01-13', 5200000),
    (10, '2024-01-13', 365000),
    (11, '2024-01-13', 400000),
    (12, '2024-01-13', 350000);
    -- Tambahkan data lainnya

-- Mengisi Data ke Tabel Order Detail
INSERT INTO order_detail (order_id, item_id, total_items, item_price, grand_total)
VALUES
    (1, 1, 1, 12000500, 12000500),
    (2, 7, 1, 3000000, 3000000),
    (2, 10, 30, 5000, 150000),
    (3, 7, 1, 3000000, 3000000),
    (3, 9, 10, 20000, 200000),
    (4, 3, 1, 3800000, 3800000), -- secara tidak sengaja salah value (380k) tapi nanti di update jadi 3.8jt
    (4, 9, 1, 20000, 20000),
    (5, 10, 30, 5000, 150000),
    (6, 10, 12, 5000, 75000),
    (7, 9, 2, 20000, 40000),
    (8, 6, 1, 3000000, 3000000),
    (8, 9, 1, 20000, 20000),
    (9, 7, 1, 5200000, 5200000),
    (10, 4, 1, 350000, 350000),
    (10, 10, 3, 5000, 15000),
    (11, 9, 20, 20000, 400000),
    (12, 4, 1, 350000, 350000);
    -- Tambahkan data lainnya