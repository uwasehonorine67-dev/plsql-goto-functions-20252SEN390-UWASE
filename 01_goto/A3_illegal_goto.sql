SET SERVEROUTPUT ON;

BEGIN

    GOTO inside_block;

    DECLARE
        v_number NUMBER := 10;
    BEGIN
        <<inside_block>>
        DBMS_OUTPUT.PUT_LINE(v_number);
    END;

END;
/

<<the corrected version>>
SET SERVEROUTPUT ON;

DECLARE
    v_number NUMBER := 10;
BEGIN

    GOTO valid_label;

    <<valid_label>>
    DBMS_OUTPUT.PUT_LINE('Correct GOTO destination.');
    
END;
/