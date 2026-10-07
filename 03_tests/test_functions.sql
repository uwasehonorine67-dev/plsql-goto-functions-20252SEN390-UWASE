SET SERVEROUTPUT ON;

DECLARE
    v_annual_salary NUMBER;
    v_years NUMBER;
    v_tax NUMBER;
    v_department VARCHAR2(100);
BEGIN

    v_annual_salary := fn_annual_salary(500000);

    DBMS_OUTPUT.PUT_LINE(
        'Annual Salary: ' || v_annual_salary
    );


    v_years := fn_years_of_service(DATE '2020-01-15');

    DBMS_OUTPUT.PUT_LINE(
        'Years of Service: ' || v_years
    );


    v_tax := fn_calculate_tax(750000);

    DBMS_OUTPUT.PUT_LINE(
        'Tax: ' || v_tax
    );


    v_department := fn_dept_name(10);

    DBMS_OUTPUT.PUT_LINE(
        'Department: ' || v_department
    );

END;
/