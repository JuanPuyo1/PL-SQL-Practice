set serveroutput on;

DECLARE
    
    nota number := 2;

BEGIN
     -- nota = 2 or nota = 3
  IF ( nota between 2 and 3 ) THEN
  
      nota := 3;
  
  END IF;

  dbms_output.put_line('Nota: ' || nota );
  
  IF ( nota >= 3 ) THEN
    dbms_output.put_line('Paso la clase');
  ELSE
    dbms_output.put_line('Lo siento... reprobo la clase. ');
  END IF;
  
END;
/
