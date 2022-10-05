CREATE OR replace TRIGGER insert_log
    AFTER DELETE
OR INSERT
    ON EMPLOYEES
    FOR EACH ROW
        DECLARE

first_name employment_logs.first_name%type;
last_name employment_logs.last_name%type;
employment_action employment_logs.employment_action%type;
BEGIN
IF INSERTING
    THEN
    first_name := :new.first_name;
    last_name := :new.last_name;
    employment_action := 'HIRED';
    create_log(first_name, last_name, employment_action);
ELSE
    first_name := :old.first_name;
    last_name := :old.last_name;
    employment_action := 'FIRED';
    create_log(first_name, last_name, employment_action);
END IF;
END;