SET SERVEROUTPUT ON;

DECLARE
    v_salary NUMBER := 750000;
BEGIN

    IF v_salary >= 1000000 THEN
        GOTO high_salary;

    ELSIF v_salary >= 500000 THEN
        GOTO normal_salary;

    ELSE
        GOTO low_salary;
    END IF;

    <<high_salary>>
    DBMS_OUTPUT.PUT_LINE('Salary category: HIGH');
    GOTO finish;

    <<normal_salary>>
    DBMS_OUTPUT.PUT_LINE('Salary category: NORMAL');
    GOTO finish;

    <<low_salary>>
    DBMS_OUTPUT.PUT_LINE('Salary category: LOW');

    <<finish>>
    DBMS_OUTPUT.PUT_LINE('Salary review completed.');

END;
/