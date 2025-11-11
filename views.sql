-- Active: 1762065643192@@127.0.0.1@5000@ph

SELECT * from employees

CREATE View dept_avg_salary as
SELECT department_name, avg(salary)
from employees
GROUP BY
    department_name

SELECT * from dept_avg_salary