CREATE OR REPLACE FUNCTION fn_validate_payroll (
    p_salary NUMBER
)
RETURN VARCHAR2
IS
BEGIN

    IF p_salary IS NULL THEN
        RETURN 'INVALID: Salary is NULL';

    ELSIF p_salary <= 0 THEN
        RETURN 'INVALID: Salary must be greater than 0';

    ELSE
        RETURN 'VALID: Payroll information is correct';

    END IF;

END;
/