SET SERVEROUTPUT ON
DECLARE
   reg_max EXCEPTION;
   regn NUMBER;
   regt varchar2(200);
BEGIN
   regn:=90;
   regt:='ASIA';
   IF regn > 100 THEN
         RAISE reg_max;  
    ELSE
       insert into regions values (regn,regt);
       DBMS_OUTPUT.PUT_LINE('Registro Agregado exitosamente');
       commit;
      END IF;
EXCEPTION
  WHEN reg_max THEN  
    DBMS_OUTPUT.PUT_LINE('La region no puede ser mayor de 100.');
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Error indefinido');
END;
/