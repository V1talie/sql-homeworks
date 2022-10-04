INSERT INTO regions
VALUES (1,
        null);

INSERT INTO countries
VALUES ('US', 'USA', 1);

INSERT INTO locations
VALUES (1500,null,null,null,null,'US');

INSERT INTO departments
VALUES ( 10, 'Administration', null, 1500);

INSERT INTO jobs
VALUES ( 'AD_PRES', 'President', 20080, 40000);

INSERT INTO employees
VALUES ( 101
       , 'Neena'
       , 'Kochhar'
       , 'NKOCHHAR'
       , '515.123.4568'
       , TO_DATE('21-09-2005', 'dd-MM-yyyy')
       , 'AD_PRES'
       , 21000
       , NULL
       , null
       , 10);

INSERT INTO job_history
VALUES ( 101
       , TO_DATE('13-FEB-2000', 'dd-MM-yyyy')
       , TO_DATE('19-JUL-2001', 'dd-MM-yyyy')
       , 'AD_PRES'
       , 10);