set serveroutput on;

DECLARE
    a number := 5;
	b number := 10;
	c number:=0;
    
BEGIN 
   menor_entre(a,b,c);
   dbms_output.put_line('El menor es '||c);

END;
/