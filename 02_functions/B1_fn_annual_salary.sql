CREATE OR REPLACE FUNCTION fn_annual_salary (
    p_monthly_salary NUMBER
)
RETURN NUMBER
IS
BEGIN
    RETURN p_monthly_salary * 12;
END;
/
<<testing>>
SET SERVEROUTPUT ON;

DECLARE
    v_annual_salary NUMBER;
BEGIN

    v_annual_salary := fn_annual_salary(500000);

    DBMS_OUTPUT.PUT_LINE(
        'Annual Salary = ' || v_annual_salary
    );

END;
/