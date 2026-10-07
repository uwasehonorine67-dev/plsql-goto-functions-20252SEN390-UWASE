SET SERVEROUTPUT ON;

SELECT
    employee_id,
    employee_name,
    salary,
    fn_annual_salary(salary) AS annual_salary,
    fn_years_of_service(hire_date) AS years_of_service,
    fn_dept_name(department_id) AS department_name
FROM employees;