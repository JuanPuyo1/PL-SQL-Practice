set serveroutput on;

DECLARE
   
   nombre nvarchar2(200);
   salario number;
   dias_trabajados number;
   salario_diario number;
   salario_a_pagar number;
   
   
   CURSOR c_empleado is
        
        select nombre, salario, dias_trabajados from empleados order by nombre asc;

BEGIN
    
    
    
    
    
    OPEN c_empleado;
    LOOP
        FETCH c_empleado into nombre, salario, dias_trabajados;
        salario_diario := salario /30;
        salario_a_pagar := (salario_diario * dias_trabajados);
        
        EXIT WHEN c_empleado%notfound;
        
        dbms_output.put_line( 'Nombre empleado: '  || nombre || ' dias trabajados: ' || dias_trabajados || ' salario diario: ' || salario_diario || ' salario a pagar: ' || salario_a_pagar  );
                
    END LOOP;
    
    CLOSE c_empleado;

END;
/