CREATE OR REPLACE FUNCTION fn_years_of_service (
    p_hire_date DATE
)
RETURN NUMBER
IS
BEGIN
    RETURN TRUNC(MONTHS_BETWEEN(SYSDATE, p_hire_date) / 12);
END;
/


<<testing>>

SET SERVEROUTPUT ON;

DECLARE
    v_years NUMBER;
BEGIN

    v_years := fn_years_of_service(DATE '2020-01-15');

    DBMS_OUTPUT.PUT_LINE(
        'Years of Service = ' || v_years
    );

END;
/