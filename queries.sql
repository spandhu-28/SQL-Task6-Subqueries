1. Subquery in WHERE (Using =)
SELECT emp_name
FROM Employees
WHERE salary = (
    SELECT MAX(salary)
    FROM Employees
);

2. Subquery using IN
SELECT emp_name
FROM Employees
WHERE dept_id IN (
    SELECT dept_id
    FROM Department
    WHERE dept_name = 'IT'
);

3. Using EXISTS
SELECT emp_name
FROM Employees e
WHERE EXISTS (
    SELECT 1
    FROM Department d
    WHERE d.dept_id = e.dept_id
    AND d.dept_name = 'HR'
);

4. Scalar Subquery in SELECT
SELECT emp_name,
       salary,
       (SELECT AVG(salary) FROM Employees) AS avg_salary
FROM Employees;

5. Subquery in FROM (Derived Table)
SELECT dept_id, AVG(salary) AS avg_salary
FROM (
    SELECT dept_id, salary
    FROM Employees
) AS dept_salary
GROUP BY dept_id;

6. Correlated Subquery
SELECT emp_name, salary
FROM Employees e1
WHERE salary > (
    SELECT AVG(salary)
    FROM Employees e2
    WHERE e1.dept_id = e2.dept_id
);