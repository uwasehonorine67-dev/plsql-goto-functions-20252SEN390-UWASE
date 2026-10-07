SET SERVEROUTPUT ON;

BEGIN

    DBMS_OUTPUT.PUT_LINE(
        fn_validate_payroll(500000)
    );

    DBMS_OUTPUT.PUT_LINE(
        fn_validate_payroll(0)
    );

    DBMS_OUTPUT.PUT_LINE(
        fn_validate_payroll(NULL)
    );

END;
/