SET SERVEROUTPUT ON

DECLARE
    EMPL Empleados%ROWTYPE;
BEGIN
    SELECT * INTO EMPL
    FROM Empleados
    WHERE id >1;
    
    DBMS_OUTPUT.PUT_LINE(EMPL.nombre);
    
EXCEPTION
-- NO_DATA_FOUND   ORA-01403
-- TOO_MANY_ROWS
-- ZERO_DIVIDE
-- DUP_VAL_ON_INDEX
   WHEN NO_DATA_FOUND THEN 
       DBMS_OUTPUT.PUT_LINE('ERROR, EMPLEADO INEXISTENTE');
WHEN TOO_MANY_ROWS THEN
        DBMS_OUTPUT.PUT_LINE('ERROR, DEMASIADOS EMPLEADO');
   WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('ERROR INDEFINIDO');

END;