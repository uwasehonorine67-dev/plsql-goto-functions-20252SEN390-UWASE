SET SERVEROUTPUT ON;

DECLARE
    v_number NUMBER := 10;
BEGIN

    IF v_number > 0 THEN

        DBMS_OUTPUT.PUT_LINE('The number is POSITIVE.');

    ELSIF v_number < 0 THEN

        DBMS_OUTPUT.PUT_LINE('The number is NEGATIVE.');

    ELSE

        DBMS_OUTPUT.PUT_LINE('The number is ZERO.');

    END IF;

    DBMS_OUTPUT.PUT_LINE('Classification completed.');

END;
/