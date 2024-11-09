-- Insert departments
INSERT INTO departments (name) VALUES
\c SQL_Tracker_db

('HR'),
('Engineering'),
('Sales'),
('Legal'),
('Marketing'),
('Finance'),
('IT'),
ON CONFLICT (name) DO NOTHING;

-- Insert roles
INSERT INTO roles (title, salary, department_id) VALUES
('HR Manager', 75000, 1),
('Engineer', 90000, 2),
('Salesperson', 60000, 3),
('Lawyer', 80000, 4),
('Marketing Manager', 80000, 5),
('Accountant', 70000, 6),
('IT Manager', 85000, 7)
ON CONFLICT (title) DO NOTHING;

-- Insert employees
INSERT INTO employees (first_name, last_name, role_id, manager_id) VALUES
('Oliver', 'Queen', 1, NULL),
('Peggy', 'Carter', 2, 1),
('Steve', 'Rogers', 3, 1),
('Felicity', 'Smoak', 4, 1),
('Barry', 'Allen', 5, 1),
('Courtney', 'Witmore', 6, 1),
('Jill', 'Monroe', 7, 1)
ON CONFLICT (first_name, last_name) DO NOTHING;









