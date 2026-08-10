CREATE DATABASE swiggy_analytics;

USE swiggy_analytics;


-- Customers
CREATE TABLE customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(100) NOT NULL,
    city VARCHAR(50) NOT NULL,
    signup_date DATE NOT NULL
);


-- Cuisines
CREATE TABLE cuisines (
    cuisine_id INT PRIMARY KEY AUTO_INCREMENT,
    cuisine_name VARCHAR(50) NOT NULL UNIQUE
);


-- Restaurants

CREATE TABLE restaurants (
    restaurant_id INT PRIMARY KEY AUTO_INCREMENT,
    restaurant_name VARCHAR(100) NOT NULL,
    city VARCHAR(50) NOT NULL,
    cuisine_id INT,
    rating DECIMAL(2,1),

    CONSTRAINT fk_restaurant_cuisine
        FOREIGN KEY (cuisine_id)
        REFERENCES cuisines(cuisine_id),

    CONSTRAINT chk_restaurant_rating
        CHECK (rating IS NULL OR (rating >= 1 AND rating <= 5))
);


-- Orders
CREATE TABLE orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    restaurant_id INT NOT NULL,
    order_date DATETIME NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    status VARCHAR(20) NOT NULL,

    CONSTRAINT fk_order_customer
        FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id),

    CONSTRAINT fk_order_restaurant
        FOREIGN KEY (restaurant_id)
        REFERENCES restaurants(restaurant_id)
);