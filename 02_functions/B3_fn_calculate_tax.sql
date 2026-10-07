CREATE OR REPLACE FUNCTION fn_calculate_tax (
    p_salary NUMBER
)
RETURN NUMBER
IS
    v_tax NUMBER := 0;
BEGIN

    IF p_salary <= 300000 THEN

        v_tax := 0;

    ELSIF p_salary <= 600000 THEN

        v_tax := (p_salary - 300000) * 0.10;

    ELSIF p_salary <= 1000000 THEN

        v_tax := (300000 * 0.10)
                 + ((p_salary - 600000) * 0.20);

    ELSE

        v_tax := (300000 * 0.10)
                 + (400000 * 0.20)
                 + ((p_salary - 1000000) * 0.30);

    END IF;

    RETURN v_tax;

END;
/