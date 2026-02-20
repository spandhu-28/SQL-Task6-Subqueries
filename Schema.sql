CREATE TABLE Department (
    dept_id INTEGER PRIMARY KEY,
    dept_name TEXT
);

CREATE TABLE Employees (
    emp_id INTEGER PRIMARY KEY,
    emp_name TEXT,
    salary REAL,
    dept_id INTEGER,
    FOREIGN KEY (dept_id) REFERENCES Department(dept_id)
);

INSERT INTO Department VALUES
(1, 'HR'),
(2, 'IT'),
(3, 'Finance');

INSERT INTO Employees VALUES
(1, 'Amit', 40000, 1),
(2, 'Sneha', 60000, 2),
(3, 'Rahul', 50000, 2),
(4, 'Priya', 70000, 3),
(5, 'Kiran', 45000, 1);