-- Active: 1762065643192@@127.0.0.1@5000@ph

SELECT * from employees;

CREATE Function emp_count()
RETURNS INT
LANGUAGE SQL
as
$$
    SELECT count(*) from employees;
$$

SELECT emp_count ();

CREATE or REPLACE Function delete_emp_by_id(emp_id INT)
RETURNS void
LANGUAGE SQL
as
$$
    DELETE from employees where employee_id = emp_id;
$$

SELECT delete_emp_by_id (1);