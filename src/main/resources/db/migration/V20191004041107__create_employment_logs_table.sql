CREATE TABLE employment_logs
(
    employment_log_id              NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY,
    first_name                     VARCHAR(255) NOT NULL,
    last_name                      VARCHAR(255) NOT NULL,
    employment_action              VARCHAR(5)   NOT NULL,
    employment_status_updtd_tmstmp TIMESTAMP
);

ALTER TABLE employment_logs
    ADD CONSTRAINT emp_act_check CHECK (employment_action = 'HIRED' or employment_action = 'FIRED');

create
or replace PROCEDURE create_log(
first_name employment_logs.first_name%type
, last_name employment_logs.last_name%type
, employment_action employment_logs.employment_action%type
)
    IS
BEGIN
INSERT INTO employment_logs(first_name, last_name, employment_action, employment_status_updtd_tmstmp)
VALUES (first_name, last_name, employment_action, CURRENT_TIMESTAMP);
END;