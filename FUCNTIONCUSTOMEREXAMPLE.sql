set serveroutput on

DECLARE 
   a varchar2(50); 
   b varchar2(50); 
   c varchar2(50); 
   d varchar2(50); 
   f number;
   
BEGIN 
   a:= 'MIG1_12312312'; 
   b:= '12312312';  
   c := MIG_FUNCTION(a);
   d := MIG_FUNCTION(b);
   f := c;
   f := d;
   dbms_output.put_line(c);
   dbms_output.put_line(d);
   dbms_output.put_line(f);
END; 
/ 