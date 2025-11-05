-- Active: 1762065643192@@127.0.0.1@5000@ph


CREATE Table departments(
    dept_id int,
    dept_name VARCHAR(50)
)

create TABLE employees(
    emp_id int,
    emp_name VARCHAR(50),
    dept_id int
)

SELECT * from departments;

SELECT * from employees

INSERT INTO departments VALUES
(101,'Human resource'),
(102,'Marketing')


INSERT into employees VALUES
(1,'John Doe',101),
(2,'jabe Smith',102)


-- cross join
SELECT * from employees
CROSS JOIN departments;



-- when we want to natural join two table then each table have a common column
SELECT * FROM employees
NATURAL JOIN departments;