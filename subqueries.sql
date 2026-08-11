use ecommerse
CREATE TABLE categories (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(100) NOT NULL,
    description TEXT
);
INSERT INTO categories (category_name, description)
VALUES
('Vegetables', 'Fresh organic vegetables directly from farmers'),
('Fruits', 'Fresh and naturally grown organic fruits'),
('Grains', 'Organic rice, wheat, millets and other grains'),
('Pulses', 'Organic pulses, lentils and beans'),
('Spices', 'Fresh organic spices and herbs'),
('Dairy Products', 'Fresh milk and other organic dairy products'),
('Honey', 'Natural and organic honey'),
('Dry Fruits', 'Healthy organic dry fruits and nuts'),
('Oil', 'Cold-pressed and organic cooking oils'),
('Organic Snacks', 'Healthy snacks made from organic ingredients');
SELECT * FROM categories;
SELECT category_id
FROM categories
WHERE category_name = 'Vegetables';
SELECT *
FROM categories
WHERE category_id > (
    SELECT category_id
    FROM categories
    WHERE category_name = 'Spices'
);
SELECT *
FROM categories
WHERE category_id < (
    SELECT category_id
    FROM categories
    WHERE category_name = 'Honey'
);