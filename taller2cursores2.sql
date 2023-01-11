SET SERVEROUTPUT ON 
    
    
    DECLARE
    nombre_empleado employees.first_name%TYPE; 
BEGIN
    SELECT first_name INTO nombre_empleado FROM employees WHERE employee_id>100;
    DBMS_OUTPUT.PUT_LINE(nombre_empleado); 
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('No existe el empleado.'); 
    WHEN TOO_MANY_ROWS THEN
        DBMS_OUTPUT.PUT_LINE('Empleado duplicado.');
END;
/


