USE swiggy_analytics;


-- =========================================
-- 1. CUISINES
-- =========================================

INSERT INTO cuisines (cuisine_name)
VALUES
('Indian'),
('Chinese'),
('Italian'),
('Mexican'),
('South Indian'),
('Mughlai');


-- =========================================
-- 2. CUSTOMERS
-- =========================================

INSERT INTO customers (customer_name, city, signup_date)
VALUES
('Rahul Sharma', 'Delhi', '2025-01-15'),
('Priya Verma', 'Noida', '2025-02-20'),
('Amit Singh', 'Gurgaon', '2025-03-10'),
('Neha Gupta', 'Delhi', '2025-04-05'),
('Rohit Kumar', 'Noida', '2025-05-12'),
('Anjali Mehta', 'Delhi', '2025-06-18'),
('Karan Malhotra', 'Gurgaon', '2025-07-22'),
('Sneha Kapoor', 'Noida', '2025-08-30'),
('Vikas Yadav', 'Delhi', '2025-09-14'),
('Pooja Agarwal', 'Gurgaon', '2025-10-25');


-- =========================================
-- 3. RESTAURANTS
-- =========================================

INSERT INTO restaurants
    (restaurant_name, city, cuisine_id, rating)
VALUES
('Dominos', 'Delhi', 3, 4.5),
('Biryani Blues', 'Noida', 6, 4.2),
('Haldiram''s', 'Delhi', 1, 4.4),
('Moti Mahal', 'Gurgaon', 6, 4.1),
('Wow Momo', 'Noida', 2, 4.0),
('Saravana Bhavan', 'Delhi', 5, 4.6),
('Pizza Hut', 'Gurgaon', 3, 4.3),
('Burger Singh', 'Delhi', 1, 3.9),
('Taco Bell', 'Noida', 4, 4.2),
('Punjabi By Nature', 'Gurgaon', 1, 4.5);


-- =========================================
-- 4. ORDERS
-- =========================================

INSERT INTO orders
    (customer_id, restaurant_id, order_date, amount, status)
VALUES

-- Customer 1
(1, 1, '2026-08-01 12:30:00', 650.00, 'Completed'),
(1, 3, '2026-08-03 19:15:00', 420.00, 'Completed'),
(1, 1, '2026-08-06 20:10:00', 850.00, 'Completed'),

-- Customer 2
(2, 2, '2026-08-02 13:20:00', 550.00, 'Completed'),
(2, 5, '2026-08-05 18:45:00', 380.00, 'Cancelled'),

-- Customer 3
(3, 4, '2026-08-04 21:00:00', 1200.00, 'Completed'),
(3, 7, '2026-08-07 20:30:00', 950.00, 'Completed'),

-- Customer 4
(4, 6, '2026-08-05 09:30:00', 450.00, 'Completed'),
(4, 1, '2026-08-08 13:10:00', 720.00, 'Completed'),

-- Customer 5
(5, 8, '2026-08-06 19:40:00', 500.00, 'Completed'),
(5, 2, '2026-08-09 21:15:00', 780.00, 'Completed'),

-- Customer 6
(6, 3, '2026-08-07 14:00:00', 350.00, 'Completed'),
(6, 9, '2026-08-09 19:20:00', 620.00, 'Completed'),

-- Customer 7
(7, 4, '2026-08-02 20:15:00', 1100.00, 'Completed'),
(7, 7, '2026-08-10 18:30:00', 900.00, 'Completed'),

-- Customer 8
(8, 5, '2026-08-03 17:45:00', 300.00, 'Completed'),
(8, 8, '2026-08-08 20:00:00', 450.00, 'Completed'),

-- Customer 9
(9, 1, '2026-08-04 12:15:00', 680.00, 'Completed'),
(9, 3, '2026-08-10 13:45:00', 520.00, 'Completed'),

-- Customer 10
(10, 10, '2026-08-05 21:30:00', 1300.00, 'Completed'),
(10, 4, '2026-08-09 20:45:00', 1150.00, 'Completed'),

-- Deliberate missing customer scenario
(NULL, 1, '2026-08-10 22:00:00', 750.00, 'Completed'),

-- Cancelled order
(2, 3, '2026-08-10 22:30:00', 600.00, 'Cancelled');