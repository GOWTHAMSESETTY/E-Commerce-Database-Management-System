-- Customers

INSERT INTO customers
(first_name, last_name, email, phone, password_hash, gender, date_of_birth, status)
VALUES
('Arjun', 'Kumar', 'arjun.kumar@gmail.com', '9876500001', 'arjun_kumar_001', 'male', '1998-05-12', 'active'),
('Priya', 'Sharma', 'priya.sharma@gmail.com', '9876500002', 'priya_sharma_002', 'female', '1999-08-21', 'active'),
('Rahul', 'Reddy', 'rahul.reddy@gmail.com', '9876500003', 'rahul_reddy_003', 'male', '1997-03-15', 'active'),
('Sneha', 'Patel', 'sneha.patel@gmail.com', '9876500004', 'sneha_pate1_004', 'female', '2000-01-10', 'active'),
('Kiran', 'Rao', 'kiran.rao@gmail.com', '9876500005', 'kiran_rao_005', 'male', '1996-11-25', 'active'),
('Anjali', 'Singh', 'anjali.singh@gmail.com', '9876500006', 'anjali_singh_006', 'female', '1998-07-18', 'active'),
('Vikram', 'Mehta', 'vikram.mehta@gmail.com', '9876500007', 'vikram_mehta_007', 'male', '1995-09-30', 'active'),
('Neha', 'Reddy', 'neha.reddy@gmail.com', '9876500008', 'neha_reddy_008', 'female', '2001-02-14', 'active'),
('Suresh', 'Kumar', 'suresh.kumar@gmail.com', '9876500009', 'suresh_kumar_009', 'male', '1994-12-05', 'active'),
('Divya', 'Nair', 'divya.nair@gmail.com', '9876500010', 'divya_nair_010', 'female', '1999-06-22', 'active');


-- Addresses

INSERT INTO addresses
(customer_id, address_line1, address_line2, city, state, postal_code, country, address_type, is_default)
VALUES
(1, '12 MG Road', 'Near Central Mall', 'Bengaluru', 'Karnataka', '560001', 'India', 'home', true),
(1, '45 Whitefield Main Road', 'Near ITPL', 'Bengaluru', 'Karnataka', '560066', 'India', 'work', false),

(2, '24 Banjara Hills Road', 'Near City Center', 'Hyderabad', 'Telangana', '500034', 'India', 'home', true),

(3, '18 Jubilee Hills', 'Road No. 36', 'Hyderabad', 'Telangana', '500033', 'India', 'home', true),
(3, '10 Gachibowli Main Road', 'Near DLF', 'Hyderabad', 'Telangana', '500032', 'India', 'work', false),

(4, '56 FC Road', 'Near Deccan Gymkhana', 'Pune', 'Maharashtra', '411004', 'India', 'home', true),

(5, '78 Anna Nagar', '2nd Street', 'Chennai', 'Tamil Nadu', '600040', 'India', 'home', true),
(5, '15 OMR Road', 'Near Tidel Park', 'Chennai', 'Tamil Nadu', '600113', 'India', 'work', false),

(6, '22 Salt Lake', 'Sector V', 'Kolkata', 'West Bengal', '700091', 'India', 'home', true),

(7, '91 Andheri West', 'Near Metro Station', 'Mumbai', 'Maharashtra', '400058', 'India', 'home', true),
(7, '15 Powai Road', 'Near Hiranandani', 'Mumbai', 'Maharashtra', '400076', 'India', 'work', false),

(8, '33 Civil Lines', 'Near Railway Station', 'Delhi', 'Delhi', '110054', 'India', 'home', true),

(9, '42 Koramangala', '5th Block', 'Bengaluru', 'Karnataka', '560095', 'India', 'home', true),

(10, '17 Vyttila Junction', 'Near Metro Station', 'Kochi', 'Kerala', '682019', 'India', 'home', true),
(10, '8 Infopark Road', 'Near Kakkanad', 'Kochi', 'Kerala', '682042', 'India', 'work', false);


-- Categories

INSERT INTO categories
(category_name, description, parent_category_id, status)
VALUES
('Electronics', 'Electronic devices and accessories', NULL, 'active'),
('Mobiles', 'Mobile phones and smartphones', 1, 'active'),
('Laptops', 'Laptops and notebook computers', 1, 'active'),
('Accessories', 'Computer and mobile accessories', 1, 'active'),

('Fashion', 'Clothing and fashion products', NULL, 'active'),
('Men', 'Men clothing and fashion products', 5, 'active'),
('Women', 'Women clothing and fashion products', 5, 'active'),
('Kids', 'Kids clothing and fashion products', 5, 'active'),

('Home & Kitchen', 'Home and kitchen products', NULL, 'active'),
('Furniture', 'Furniture for home and office', 9, 'active'),
('Appliances', 'Home and kitchen appliances', 9, 'active'),

('Books', 'Books and educational materials', NULL, 'active'),
('Fiction', 'Fiction books and novels', 12, 'active'),
('Education', 'Educational and technical books', 12, 'active'),

('Sports', 'Sports and fitness products', NULL, 'active'),
('Cricket', 'Cricket equipment and accessories', 15, 'active'),
('Fitness', 'Fitness and workout products', 15, 'active');


-- Products

INSERT INTO products
(category_id, product_name, product_image, description, price, sku, brand, weight, status)
VALUES
(2, 'iPhone 16', 'iphone16.jpg', 'Latest Apple smartphone with advanced camera system', 79999.00, 'MOB001', 'Apple', 0.17, 'active'),
(2, 'Samsung Galaxy S25', 'galaxy_s25.jpg', 'Premium Samsung smartphone with AMOLED display', 74999.00, 'MOB002', 'Samsung', 0.16, 'active'),
(2, 'OnePlus 13', 'oneplus13.jpg', 'High-performance Android smartphone', 64999.00, 'MOB003', 'OnePlus', 0.21, 'active'),
(2, 'Google Pixel 9', 'pixel9.jpg', 'Google smartphone with advanced AI camera features', 69999.00, 'MOB004', 'Google', 0.19, 'active'),

(3, 'Dell Inspiron 15', 'dell_inspiron15.jpg', '15-inch performance laptop for everyday computing', 58999.00, 'LAP001', 'Dell', 1.65, 'active'),
(3, 'HP Pavilion 14', 'hp_pavilion14.jpg', 'Compact laptop for productivity and entertainment', 62999.00, 'LAP002', 'HP', 1.41, 'active'),
(3, 'Lenovo IdeaPad Slim 5', 'ideapad_slim5.jpg', 'Slim laptop with powerful performance', 55999.00, 'LAP003', 'Lenovo', 1.46, 'active'),
(3, 'ASUS Vivobook 15', 'asus_vivobook15.jpg', 'Slim and lightweight productivity laptop', 51999.00, 'LAP004', 'ASUS', 1.70, 'active'),

(4, 'Logitech Wireless Mouse', 'logitech_mouse.jpg', 'Wireless ergonomic mouse for everyday use', 1299.00, 'ACC001', 'Logitech', 0.10, 'active'),
(4, 'Mechanical Gaming Keyboard', 'gaming_keyboard.jpg', 'RGB mechanical keyboard for gaming', 3499.00, 'ACC002', 'Redragon', 0.85, 'active'),
(4, 'USB-C Fast Charger', 'usb_c_charger.jpg', 'Fast charging USB-C power adapter', 1499.00, 'ACC003', 'Anker', 0.12, 'active'),
(4, 'Wireless Bluetooth Headphones', 'bluetooth_headphones.jpg', 'Over-ear wireless headphones with noise cancellation', 4999.00, 'ACC004', 'JBL', 0.28, 'active'),

(6, 'Mens Casual Shirt', 'mens_shirt.jpg', 'Comfortable cotton casual shirt', 1299.00, 'MEN001', 'Levis', 0.30, 'active'),
(6, 'Mens Slim Fit Jeans', 'mens_jeans.jpg', 'Classic slim fit denim jeans', 1999.00, 'MEN002', 'Levis', 0.60, 'active'),

(7, 'Womens Cotton Kurti', 'womens_kurti.jpg', 'Comfortable printed cotton kurti', 999.00, 'WOM001', 'Biba', 0.25, 'active'),
(7, 'Womens Handbag', 'womens_handbag.jpg', 'Stylish everyday handbag', 2499.00, 'WOM002', 'Lavie', 0.55, 'active'),

(8, 'Kids Cotton T-Shirt', 'kids_tshirt.jpg', 'Comfortable cotton t-shirt for kids', 599.00, 'KID001', 'Puma', 0.15, 'active'),
(8, 'Kids Sports Shoes', 'kids_shoes.jpg', 'Lightweight sports shoes for children', 1499.00, 'KID002', 'Nike', 0.45, 'active'),

(10, 'Office Study Table', 'study_table.jpg', 'Modern wooden study and office table', 6999.00, 'FUR001', 'Wakefit', 12.50, 'active'),
(10, 'Ergonomic Office Chair', 'office_chair.jpg', 'Ergonomic chair with adjustable height', 8999.00, 'FUR002', 'Green Soul', 15.00, 'active'),

(11, 'Mixer Grinder', 'mixer_grinder.jpg', 'Powerful kitchen mixer grinder', 2999.00, 'APP001', 'Philips', 3.20, 'active'),
(11, 'Air Fryer', 'air_fryer.jpg', 'Digital air fryer for healthy cooking', 4999.00, 'APP002', 'Prestige', 4.10, 'active'),

(13, 'The Alchemist', 'the_alchemist.jpg', 'Popular inspirational fiction novel', 399.00, 'BOK001', 'HarperCollins', 0.25, 'active'),
(14, 'Database Management Systems', 'dbms_book.jpg', 'Academic reference book for database systems', 699.00, 'BOK002', 'McGraw Hill', 0.70, 'active');


-- Inventory

INSERT INTO inventory
(product_id, stock_quantity, reorder_level)
VALUES
(1, 25, 10),
(2, 8, 10),
(3, 30, 10),
(4, 5, 10),
(5, 18, 10),
(6, 7, 10),
(7, 22, 10),
(8, 12, 10),
(9, 50, 15),
(10, 6, 15),
(11, 35, 10),
(12, 9, 10),
(13, 40, 10),
(14, 4, 10),
(15, 28, 10),
(16, 15, 10),
(17, 45, 15),
(18, 11, 10),
(19, 6, 10),
(20, 14, 10),
(21, 20, 8),
(22, 5, 8),
(23, 35, 10),
(24, 16, 10);


-- Carts

INSERT INTO carts
(customer_id)
VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8);


-- Cart Items

INSERT INTO cart_items
(cart_id, product_id, quantity)
VALUES
(1, 1, 1),
(1, 9, 2),
(1, 11, 1),

(2, 2, 1),
(2, 12, 1),

(3, 5, 1),
(3, 10, 1),
(3, 14, 2),

(4, 15, 2),
(4, 16, 1),

(5, 3, 1),
(5, 7, 1),
(5, 20, 1),

(6, 4, 1),
(6, 18, 2),

(7, 6, 1),
(7, 21, 1),

(8, 8, 1),
(8, 22, 1),
(8, 23, 2);


-- Orders

INSERT INTO orders
(customer_id, order_number, total_amount, order_status, order_date)
VALUES
(1, 'ORD20260001', 84097.00, 'delivered', '2026-07-01 10:30:00'),
(2, 'ORD20260002', 7998.00, 'delivered', '2026-07-03 14:45:00'),
(3, 'ORD20260003', 6997.00, 'shipped', '2026-07-08 11:35:00'),
(4, 'ORD20260004', 4497.00, 'processing', '2026-07-12 17:00:00'),
(5, 'ORD20260005', 63998.00, 'delivered', '2026-07-15 09:25:00'),
(6, 'ORD20260006', 72997.00, 'confirmed', '2026-07-20 13:40:00'),
(7, 'ORD20260007', 11998.00, 'shipped', '2026-07-25 15:55:00'),
(8, 'ORD20260008', 6999.00, 'pending', '2026-08-01 10:20:00'),
(1, 'ORD20260009', 4999.00, 'delivered', '2026-08-03 12:30:00'),
(3, 'ORD20260010', 1998.00, 'cancelled', '2026-08-05 17:45:00'),
(5, 'ORD20260011', 62999.00, 'processing', '2026-08-08 12:00:00'),
(8, 'ORD20260012', 1499.00, 'returned', '2026-08-10 18:35:00');


-- Order Items

INSERT INTO order_items
(order_id, product_id, quantity, unit_price, subtotal)
VALUES
(1, 1, 1, 79999.00, 79999.00),
(1, 10, 1, 3499.00, 3499.00),
(1, 17, 1, 599.00, 599.00),

(2, 12, 1, 4999.00, 4999.00),
(2, 21, 1, 2999.00, 2999.00),

(3, 9, 1, 1299.00, 1299.00),
(3, 12, 1, 4999.00, 4999.00),
(3, 24, 1, 699.00, 699.00),

(4, 9, 1, 1299.00, 1299.00),
(4, 16, 1, 2499.00, 2499.00),
(4, 24, 1, 699.00, 699.00),

(5, 5, 1, 58999.00, 58999.00),
(5, 12, 1, 4999.00, 4999.00),

(6, 3, 1, 64999.00, 64999.00),
(6, 12, 1, 4999.00, 4999.00),
(6, 21, 1, 2999.00, 2999.00),

(7, 12, 1, 4999.00, 4999.00),
(7, 19, 1, 6999.00, 6999.00),

(8, 19, 1, 6999.00, 6999.00),

(9, 12, 1, 4999.00, 4999.00),

(10, 9, 1, 1299.00, 1299.00),
(10, 24, 1, 699.00, 699.00),

(11, 6, 1, 62999.00, 62999.00),

(12, 11, 1, 1499.00, 1499.00);


-- Payments

INSERT INTO payments
(order_id, payment_method, payment_status, transaction_id, amount_paid, payment_date)
VALUES
(1, 'credit_card', 'success', 'TXN20260001', 84097.00, '2026-07-01 10:35:00'),
(2, 'upi', 'success', 'TXN20260002', 7998.00, '2026-07-03 14:50:00'),
(3, 'debit_card', 'success', 'TXN20260003', 6997.00, '2026-07-08 11:40:00'),
(4, 'net_banking', 'success', 'TXN20260004', 4497.00, '2026-07-12 17:05:00'),
(5, 'credit_card', 'success', 'TXN20260005', 63998.00, '2026-07-15 09:30:00'),
(6, 'upi', 'success', 'TXN20260006', 72997.00, '2026-07-20 13:45:00'),
(7, 'wallet', 'success', 'TXN20260007', 11998.00, '2026-07-25 16:00:00'),
(8, 'upi', 'pending', NULL, 6999.00, NULL),
(9, 'debit_card', 'success', 'TXN20260009', 4999.00, '2026-08-03 12:35:00'),
(10, 'credit_card', 'failed', 'TXN20260010', 1998.00, '2026-08-05 17:50:00'),
(11, 'net_banking', 'success', 'TXN20260011', 62999.00, '2026-08-08 12:05:00'),
(12, 'upi', 'refunded', 'TXN20260012', 1499.00, '2026-08-10 18:40:00');


-- Shipments

INSERT INTO shipments
(order_id, courier_name, tracking_number, shipment_status,
 shipped_date, estimated_delivery_date, delivered_date)
VALUES
(1, 'BlueDart', 'BD20260001', 'delivered',
 '2026-07-02 09:15:00', '2026-07-05', '2026-07-05 16:45:00'),

(2, 'Delhivery', 'DL20260002', 'delivered',
 '2026-07-04 10:45:00', '2026-07-07', '2026-07-07 14:35:00'),

(3, 'Ecom Express', 'EC20260003', 'shipped',
 '2026-07-09 09:00:00', '2026-07-13', NULL),

(4, 'DTDC', 'DT20260004', 'packing',
 NULL, '2026-07-16', NULL),

(5, 'BlueDart', 'BD20260005', 'delivered',
 '2026-07-16 09:30:00', '2026-07-19', '2026-07-19 12:55:00'),

(6, 'Delhivery', 'DL20260006', 'shipped',
 '2026-07-21 11:15:00', '2026-07-25', NULL),

(7, 'Ecom Express', 'EC20260007', 'out_for_delivery',
 '2026-07-26 08:45:00', '2026-07-28', NULL),

(8, 'DTDC', 'DT20260008', 'pending',
 NULL, '2026-08-05', NULL),

(9, 'BlueDart', 'BD20260009', 'delivered',
 '2026-08-04 09:45:00', '2026-08-07', '2026-08-07 15:25:00'),

(10, 'Delhivery', 'DL20260010', 'returned',
 '2026-08-06 10:15:00', '2026-08-09', NULL),

(11, 'Ecom Express', 'EC20260011', 'packing',
 NULL, '2026-08-13', NULL),

(12, 'DTDC', 'DT20260012', 'returned',
 '2026-08-11 09:15:00', '2026-08-14', NULL);


-- Reviews

INSERT INTO reviews
(customer_id, product_id, rating, review_title, review_comment, review_status)
VALUES
(1, 1, 5, 'Excellent Phone',
 'Amazing performance and camera quality.', 'approved'),

(2, 2, 4, 'Great Smartphone',
 'Display and performance are very good.', 'approved'),

(3, 3, 5, 'Excellent Performance',
 'Very fast phone with great battery life.', 'approved'),

(4, 4, 4, 'Good Camera',
 'Camera quality is excellent and software is smooth.', 'approved'),

(5, 5, 5, 'Great Laptop',
 'Very good laptop for work and daily use.', 'approved'),

(6, 6, 4, 'Good Laptop',
 'Performance is good but battery could be better.', 'approved'),

(7, 7, 5, 'Worth Buying',
 'Excellent laptop for the price.', 'approved'),

(8, 8, 3, 'Average Laptop',
 'Good design but performance is average.', 'pending'),

(1, 9, 5, 'Very Useful',
 'Comfortable and works perfectly.', 'approved'),

(2, 10, 4, 'Good Keyboard',
 'Keys feel good and RGB lighting is nice.', 'approved'),

(3, 11, 5, 'Fast Charger',
 'Charges my phone very quickly.', 'approved'),

(4, 12, 4, 'Good Headphones',
 'Sound quality is good for the price.', 'approved'),

(5, 13, 3, 'Nice Shirt',
 'Material is good but fitting could improve.', 'approved'),

(6, 14, 5, 'Perfect Jeans',
 'Excellent fitting and comfortable material.', 'approved'),

(7, 15, 4, 'Good Kurti',
 'Nice design and comfortable fabric.', 'approved'),

(8, 16, 5, 'Beautiful Handbag',
 'Looks premium and has enough space.', 'approved'),

(9, 17, 4, 'Good T-Shirt',
 'Comfortable cotton material.', 'approved'),

(10, 18, 2, 'Not Satisfied',
 'The shoes were uncomfortable for me.', 'rejected');


-- Wishlist

INSERT INTO wishlist
(customer_id, product_id)
VALUES
(1, 2),
(1, 5),
(1, 16),

(2, 1),
(2, 9),

(3, 4),
(3, 10),
(3, 18),

(4, 3),
(4, 15),

(5, 8),
(5, 20),

(6, 6),

(7, 22),

(8, 24);


-- Coupons

INSERT INTO coupons
(coupon_code, description, discount_type, discount_value,
 minimum_order_amount, maximum_discount_amount, usage_limit,
 used_count, valid_from, valid_until, status)
VALUES
('WELCOME10', '10 percent discount for new customers', 'percentage',
 10.00, 500.00, 1000.00, 1000, 125, '2026-01-01', '2026-12-31', 'active'),

('SAVE20', '20 percent discount on selected orders', 'percentage',
 20.00, 1000.00, 2000.00, 500, 210, '2026-06-01', '2026-09-30', 'active'),

('FLAT500', 'Flat 500 rupees discount', 'fixed',
 500.00, 2000.00, NULL, 300, 75, '2026-07-01', '2026-12-31', 'active'),

('NEWUSER15', '15 percent discount for new users', 'percentage',
 15.00, 750.00, 1500.00, 100, 42, '2026-08-01', '2026-08-31', 'active'),

('FESTIVE1000', 'Flat 1000 rupees festive discount', 'fixed',
 1000.00, 5000.00, NULL, 200, 65, '2026-10-01', '2026-11-30', 'active'),

('OLDUSER5', 'Special discount for existing customers', 'percentage',
 5.00, 300.00, 500.00, NULL, 250, '2025-01-01', '2025-12-31', 'inactive');


-- Returns

INSERT INTO returns
(order_item_id, return_quantity, return_reason, return_status,
 refund_amount, requested_at, approved_at, completed_at)
VALUES
(24, 1, 'defective', 'refunded',
 1499.00, '2026-08-12 10:15:00', '2026-08-12 14:15:00', '2026-08-15 16:15:00'),

(4, 1, 'changed_mind', 'requested',
 NULL, '2026-08-18 11:15:00', NULL, NULL),

(6, 1, 'damaged', 'approved',
 1299.00, '2026-08-11 09:45:00', '2026-08-12 13:15:00', NULL),

(9, 1, 'not_as_expected', 'received',
 1299.00, '2026-08-13 10:30:00', '2026-08-14 12:15:00', '2026-08-17 15:45:00');