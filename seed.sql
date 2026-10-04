insert into customers
(customer_name, phone, email, city) values
('rahul sharma', '9000000001', 'rahul@gmail.com', 'mumbai'),
('priya joshi', '9000000002', 'priya@gmail.com', 'pune'),
('imran khan', '9000000003', 'imran@gmail.com', 'thane'),
('neha patel', '9000000004', 'neha@gmail.com', 'navi mumbai'),
('rohan mehta', '9000000005', 'rohan@gmail.com', 'mumbai'),
('ananya kapoor', '9000000006', 'ananya@gmail.com', 'pune'),
('vikram singh', '9000000007', 'vikram@gmail.com', 'thane'),
('sneha nair', '9000000008', 'sneha@gmail.com', 'mumbai'),
('aditya verma', '9000000009', 'aditya@gmail.com', 'navi mumbai'),
('kavya rao', '9000000010', 'kavya@gmail.com', 'pune'),
('aman gupta', '9000000011', 'aman@gmail.com', 'mumbai'),
('isha malhotra', '9000000012', 'isha@gmail.com', 'thane'),
('karan shah', '9000000013', 'karan@gmail.com', 'navi mumbai'),
('meera iyer', '9000000014', 'meera@gmail.com', 'mumbai'),
('dev kulkarni', '9000000015', 'dev@gmail.com', 'pune');

insert into loan_type
(loan_type_name, loan_purpose) values
('home', 'purchase or construction of home'),
('education', 'higher education expenses'),
('vehicle', 'purchase of vehicle'),
('personal', 'personal financial needs'),
('business', 'business and commercial needs');

insert into loan
(customer_id, loan_type_id, principal, interest_rate, tenure, loan_status, start_date) values
(1, 1, 1200000, 8.50, 120, 'active', '2025-02-01'),
(2, 2, 500000, 7.50, 60, 'active', '2025-02-05'),
(3, 3, 750000, 9.00, 84, 'closed', '2025-02-10'),
(4, 4, 300000, 11.00, 36, 'active', '2025-02-15'),
(5, 1, 1500000, 8.25, 180, 'active', '2025-03-01'),

(6, 2, 400000, 7.25, 48, 'active', '2025-03-10'),
(7, 5, 2000000, 10.50, 120, 'active', '2025-03-15'),
(8, 3, 900000, 9.25, 72, 'closed', '2025-04-01'),
(10, 1, 1800000, 8.00, 180, 'active', '2025-04-10'),
(11, 5, 2500000, 10.75, 120, 'active', '2025-04-20'),

(13, 3, 800000, 9.50, 60, 'active', '2025-05-01'),
(1, 4, 250000, 11.50, 24, 'closed', '2025-05-10'),
(6, 1, 1400000, 8.40, 180, 'active', '2025-06-01'),
(12, 3, 700000, 9.10, 72, 'active', '2025-06-15'),
(15, 1, 1300000, 8.60, 120, 'pending', '2025-07-01'),

(3, 2, 450000, 7.75, 48, 'closed', '2025-07-10'),
(8, 5, 1800000, 10.25, 120, 'active', '2025-08-01'),
(4, 4, 350000, 11.25, 36, 'active', '2025-08-15'),
(9, 3, 650000, 9.00, 60, 'closed', '2025-09-01'),
(14, 2, 550000, 7.50, 60, 'active', '2025-09-15');

insert into loan_payment
(loan_id, payment_date, amount, payment_mode, payment_status) values
(1, '2025-03-01', 14800, 'upi', 'completed'),
(1, '2025-04-01', 14800, 'bank transfer', 'completed'),
(1, '2025-05-01', 14800, 'upi', 'completed'),

(2, '2025-03-05', 10020, 'bank transfer', 'completed'),
(2, '2025-04-05', 10020, 'upi', 'completed'),
(2, '2025-05-05', 10020, 'cash', 'completed'),

(3, '2025-03-10', 12000, 'bank transfer', 'completed'),
(3, '2025-04-10', 12000, 'upi', 'completed'),

(4, '2025-03-15', 9800, 'cash', 'completed'),
(4, '2025-04-15', 9800, 'upi', 'completed'),

(5, '2025-04-01', 14500, 'bank transfer', 'completed'),
(5, '2025-05-01', 14500, 'upi', 'completed'),
(5, '2025-06-01', 14500, 'bank transfer', 'completed'),

(6, '2025-04-10', 9600, 'upi', 'completed'),
(6, '2025-05-10', 9600, 'cash', 'completed'),

(7, '2025-04-15', 27000, 'bank transfer', 'completed'),
(7, '2025-05-15', 27000, 'upi', 'completed'),
(7, '2025-06-15', 27000, 'bank transfer', 'completed'),

(8, '2025-05-01', 16500, 'upi', 'completed'),
(8, '2025-06-01', 16500, 'cash', 'completed'),

(9, '2025-05-10', 17200, 'bank transfer', 'completed'),
(9, '2025-06-10', 17200, 'upi', 'completed'),

(10, '2025-05-20', 34000, 'bank transfer', 'completed'),
(10, '2025-06-20', 34000, 'upi', 'completed'),

(11, '2025-06-01', 16800, 'upi', 'completed'),
(11, '2025-07-01', 16800, 'bank transfer', 'completed'),

(12, '2025-06-10', 11700, 'cash', 'completed'),
(12, '2025-07-10', 11700, 'upi', 'completed'),

(13, '2025-07-01', 13800, 'bank transfer', 'completed'),
(13, '2025-08-01', 13800, 'upi', 'completed'),

(14, '2025-07-15', 12600, 'bank transfer', 'completed'),
(14, '2025-08-15', 12600, 'upi', 'completed'),

(15, '2025-08-01', 16200, 'upi', 'completed'),
(15, '2025-09-01', 16200, 'bank transfer', 'completed'),

(16, '2025-08-10', 11000, 'cash', 'completed'),
(16, '2025-09-10', 11000, 'upi', 'completed'),

(17, '2025-09-01', 24500, 'bank transfer', 'completed'),
(17, '2025-10-01', 24500, 'upi', 'completed'),

(18, '2025-09-15', 11500, 'cash', 'completed'),
(18, '2025-10-15', 11500, 'upi', 'completed'),

(19, '2025-10-01', 13500, 'bank transfer', 'completed'),
(19, '2025-11-01', 13500, 'upi', 'completed'),

(20, '2025-10-15', 11000, 'bank transfer', 'completed'),
(20, '2025-11-15', 11000, 'upi', 'completed');