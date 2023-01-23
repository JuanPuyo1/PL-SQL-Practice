set serveroutput on;

DECLARE
  -- Definimos los arreglos
   type alumnosArray is varray(5) of nvarchar2(100);
   type notasArray is varray(5) of number;
   
   -- Utilizar los arreglos
   alumnos alumnosArray;
   notas notasArray;
  
BEGIN
    
    alumnos := alumnosArray('Johan','Andrea','Juan','Valeria','Daniella');
    notas := notasArray( 4.5,5,3.5,4,4 );
    
    dbms_output.put_line(   alumnos(1)  );
    dbms_output.put_line(   alumnos(2)  );
    dbms_output.put_line(   alumnos(3)  );
    
    dbms_output.put_line(   notas(1)  );
    dbms_output.put_line(   notas(2)  );
    dbms_output.put_line(   notas(3)  );

    notas(1) := 5;
    dbms_output.put_line(   notas(1)  );
  
END;
/