CREATE TABLE projects
(
    project_id          NUMBER(16) PRIMARY KEY,
    project_description VARCHAR(255),
    project_investments NUMBER(16,-3) NOT NULL,
    project_revenue     NUMBER(16,-3)
);

ALTER TABLE projects
    ADD CONSTRAINT proj_min_desc CHECK ( LENGTH(project_description) > 10 );

ALTER TABLE projects
    ADD CONSTRAINT proj_inv_min CHECK ( project_investments > 0 );

CREATE TABLE projects_emp
(
    id NUMBER NOT NULL,
    project_id NUMBER NOT NULL ,
    employee_id NUMBER NOT NULL
);

ALTER TABLE projects_emp
    ADD CONSTRAINT projmap_proj_fk
        FOREIGN KEY (project_id)
            REFERENCES projects (project_id);

ALTER TABLE projects_emp
    ADD CONSTRAINT projmap_emp_fk
        FOREIGN KEY (employee_id)
            REFERENCES employees (employee_id);