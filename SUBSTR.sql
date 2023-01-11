set serveroutput on
    
    UPDATE employees set phone_number = 'RWEB123123';
    
DECLARE 
   c number(6);
   a employees.employee_id%type; 
   b employees.phone_number%type; 
   
BEGIN 
   c := 101;
   
   SELECT employee_id, SUBSTR(phone_number,1,4) into a,b from employees
   where employee_id = 100;
   if (a = c) then
        if(b = 'RWEB') then
            dbms_output.put_line(a);
        end if;
   else 
        dbms_output.put_line(b);
        null;
  end if;

END; 
/ 
