CREATE OR REPLACE function promedio_notas(nota1 number, nota2 number, nota3 number, nota4 number)
return number is

 promedio number(5):=0;

BEGIN

    promedio:= (nota1 + nota2 + nota3 + nota4 )/4;
    return promedio;
    
    EXCEPTION
    WHEN OTHERS then
        promedio:=0;
    
        RETURN promedio;
END;
/
