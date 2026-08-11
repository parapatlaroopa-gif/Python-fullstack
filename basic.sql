use hospitals
CREATE TABLE hospitals (
    hospital_id INT AUTO_INCREMENT PRIMARY KEY,
    hospital_name VARCHAR(150) NOT NULL,
    hospital_type VARCHAR(100),
    phone VARCHAR(15),
    email VARCHAR(150),
    address VARCHAR(255),
    city VARCHAR(100),
    state VARCHAR(100),
    pincode VARCHAR(10),
    established_year YEAR,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO hospitals
(hospital_name, hospital_type, phone, email, address, city, state, pincode, established_year)
VALUES
('Apollo Hospitals', 'Private', '9876543210', 'apollo@gmail.com',
 'Jubilee Hills', 'Hyderabad', 'Telangana', '500033', 1983),

('CARE Hospitals', 'Private', '9876543211', 'care@gmail.com',
 'Banjara Hills', 'Hyderabad', 'Telangana', '500034', 1997),

('Government General Hospital', 'Government', '9876543212', 'ggh@gmail.com',
 'Arundelpet', 'Guntur', 'Andhra Pradesh', '522002', 1924),

('Manipal Hospitals', 'Private', '9876543213', 'manipal@gmail.com',
 'Whitefield', 'Bangalore', 'Karnataka', '560066', 1991),

('Narayana Health', 'Private', '9876543214', 'narayana@gmail.com',
 'Bommasandra', 'Bangalore', 'Karnataka', '560099', 2000);
 ALTER TABLE hospitals
RENAME COLUMN phone TO contact_number;
select * from hospitals;
ALTER TABLE hospitals
ADD COLUMN specialization VARCHAR(150);
DESCRIBE hospitals;
ALTER TABLE hospitals
MODIFY COLUMN specialization VARCHAR(250);
ALTER TABLE hospitals
RENAME COLUMN specialization TO medical_specialization;
UPDATE hospitals
SET city = 'Vijayawada'
WHERE hospital_id = 1;
select * from hospitals;
DESCRIBE hospitals;
UPDATE hospitals
SET email = 'apollohospital@gmail.com'
WHERE hospital_id = 1;
DELETE FROM hospitals
WHERE hospital_id = 1;
DELETE FROM hospitals
WHERE hospital_id = 6;
