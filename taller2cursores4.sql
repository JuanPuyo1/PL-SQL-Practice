set serveroutput on 
DECLARE
    duplicado EXCEPTION;
    PRAGMA EXCEPTION_INIT(duplicado,-00001); 
BEGIN
    INSERT INTO REGIONS VALUES (1,'PRUEBA'); 
    COMMIT;
EXCEPTION
    WHEN duplicado THEN 
        dbms_output.put_line('Registro duplicado'); 

END;
/