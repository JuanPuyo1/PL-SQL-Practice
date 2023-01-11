
SET SERVEROUTPUT ON 
DECLARE
    nombre_empleado employees.first_name%TYPE; 
    salario number;
BEGIN
    SELECT salary iNTO salario FROM employees WHERE employee_id = 100; 
    salario:=salario/0; dbms_output.put_line(salario);
EXCEPTION 
        WHEN no_data_found THEN 
        dbms_output.put_line('No existe el empleado.');
    WHEN TOO_MANY_ROWS THEN 
        DBMS_OUTPUT.PUT_LINE('Empleado duplicado.'); 
    WHEN OTHERS THEN 
        DBMS_OUTPUT.PUT_LINE('CODIGO:'||SQLCODE); 
        DBMS_OUTPUT.PUT_LINE('MENSAJE:'||SQLERRM);
END;
/