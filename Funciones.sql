set serveroutput on;

DECLARE
 -- Definicion de funciones y variables
    
    nombre nvarchar2(50);
    apellido nvarchar2(50);
    nombrecompleto nvarchar2(50);
    hoy date :=sysdate;
    nombre2 nvarchar2(50);
BEGIN

    nombre:='Juan';
    apellido:= 'Puyo';
    
    nombrecompleto :=nombre || ' ' || apellido;
    --funcion texto

    dbms_output.put_line('Longitud Cadena ' || length(nombre));
    dbms_output.put_line('TRIM ' || trim(nombre));
    dbms_output.put_line('Minusculas ' || lower(nombre));
    dbms_output.put_line('Mayusculas ' || upper(nombre));
    nombre:= trim(nombre);
    dbms_output.put_line((nombre));
    
    dbms_output.put_line('CORTAR');
    
      -- Funciones de fecha
    dbms_output.put_line('Hoy '||hoy);
    dbms_output.put_line('Agregar Mes '||add_months(hoy,1));
    dbms_output.put_line('Agregar dia '||(hoy + 1));
    
   
END;
/