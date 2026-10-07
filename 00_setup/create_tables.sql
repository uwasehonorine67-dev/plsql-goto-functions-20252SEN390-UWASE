SET SERVEROUTPUT ON;

-- Employees table
CREATE TABLE employees (
    employee_id NUMBER PRIMARY KEY,
    employee_name VARCHAR2(100),
    salary NUMBER(10,2),
    hire_date DATE,
    department_id NUMBER
);

-- Departments table
CREATE TABLE departments (
    department_id NUMBER PRIMARY KEY,
    department_name VARCHAR2(100)
);

-- Sample departments
INSERT INTO departments
VALUES (10, 'IT');

INSERT INTO departments
VALUES (20, 'Finance');

INSERT INTO departments
VALUES (30, 'Human Resources');

-- Sample employees
INSERT INTO employees
VALUES (1, 'John', 500000, DATE '2020-01-15', 10);

INSERT INTO employees
VALUES (2, 'Alice', 750000, DATE '2018-05-20', 20);

INSERT INTO employees
VALUES (3, 'Peter', 1200000, DATE '2015-03-10', 30);

COMMIT;

SELECT * FROM employees;

SELECT * FROM departments;