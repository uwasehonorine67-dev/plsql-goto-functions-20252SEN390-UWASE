SET SERVEROUTPUT ON;

DECLARE
    v_num NUMBER := 25;
BEGIN

    IF v_num > 0 THEN
        GOTO positive_label;

    ELSIF v_num < 0 THEN
        GOTO negative_label;

    ELSE
        GOTO zero_label;
    END IF;

    <<positive_label>>
    DBMS_OUTPUT.PUT_LINE(v_num || ' is positive.');
    GOTO end_label;

    <<negative_label>>
    DBMS_OUTPUT.PUT_LINE(v_num || ' is negative.');
    GOTO end_label;

    <<zero_label>>
    DBMS_OUTPUT.PUT_LINE('The number is zero.');

    <<end_label>>
    NULL;

END;
/