
CREATE OR REPLACE FUNCTION MIG_FUNCTION(application_request_id IN VARCHAR2)
RETURN VARCHAR2
IS
    REQ_ID VARCHAR2(50);
BEGIN
    IF application_request_id LIKE 'MIG%' THEN
        REQ_ID := regexp_replace (substr(application_request_id,6,100), '[^0-9]','');
    ELSE
         REQ_ID := application_request_id;
    END IF;
    RETURN REQ_ID;
END MIG_FUNCTION;


