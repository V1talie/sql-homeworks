CREATE TABLE work_hours
(
    employee_id NUMBER(16) NOT NULL,
    project_id  NUMBER(16) NOT NULL,
    hours       NUMBER(8)
);

ALTER TABLE work_hours
    ADD CONSTRAINT emp_id_prj_id PRIMARY KEY (employee_id, project_id);

ALTER TABLE work_hours
    ADD CONSTRAINT wh_emp_id FOREIGN KEY (employee_id)
        REFERENCES employees (employee_id);

ALTER TABLE work_hours
    ADD CONSTRAINT wh_prj_id FOREIGN KEY (project_id)
        REFERENCES projects (project_id);