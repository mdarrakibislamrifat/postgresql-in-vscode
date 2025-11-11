-- Active: 1762065643192@@127.0.0.1@5000@ph
CREATE Table employees (
    employee_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(50) NOT NULL,
    department_name VARCHAR(50),
    salary DECIMAL(10, 2),
    hire_date DATE
)

INSERT INTO
    employees (
        employee_name,
        department_name,
        salary,
        hire_date
    )
VALUES (
        'John Smith',
        'Sales',
        55000.00,
        '2018-03-15'
    ),
    (
        'Jane Doe',
        'Marketing',
        62000.00,
        '2019-07-22'
    ),
    (
        'Robert Johnson',
        'IT',
        75000.00,
        '2020-01-10'
    ),
    (
        'Emily Davis',
        'HR',
        50000.00,
        '2017-11-05'
    ),
    (
        'Michael Brown',
        'Finance',
        68000.00,
        '2016-09-12'
    ),
    (
        'Sarah Wilson',
        'IT',
        72000.00,
        '2021-04-18'
    ),
    (
        'David Lee',
        'Sales',
        58000.00,
        '2018-06-30'
    ),
    (
        'Laura Martinez',
        'Marketing',
        61000.00,
        '2019-12-03'
    ),
    (
        'James Anderson',
        'Finance',
        70000.00,
        '2015-08-21'
    ),
    (
        'Linda Taylor',
        'HR',
        52000.00,
        '2020-02-14'
    ),
    (
        'Daniel Thomas',
        'IT',
        74000.00,
        '2019-09-01'
    ),
    (
        'Patricia Moore',
        'Sales',
        56000.00,
        '2020-05-23'
    ),
    (
        'Christopher Jackson',
        'Marketing',
        63000.00,
        '2018-10-10'
    ),
    (
        'Barbara White',
        'Finance',
        69000.00,
        '2017-01-15'
    ),
    (
        'Matthew Harris',
        'IT',
        71000.00,
        '2021-07-12'
    ),
    (
        'Elizabeth Martin',
        'HR',
        51000.00,
        '2016-04-25'
    ),
    (
        'Anthony Thompson',
        'Sales',
        57000.00,
        '2019-03-17'
    ),
    (
        'Jennifer Garcia',
        'Marketing',
        64000.00,
        '2020-11-09'
    ),
    (
        'Joshua Martinez',
        'Finance',
        72000.00,
        '2018-08-05'
    ),
    (
        'Susan Robinson',
        'IT',
        73000.00,
        '2017-12-20'
    );

SELECT * from employees;

SELECT *
from employees
WHERE
    salary > (
        select max(salary)
        from employees
        WHERE
            department_name = 'HR'
    );

select max(salary) from employees WHERE department_name = 'HR';

select *, ( select sum(salary) from employees ) from employees;

SELECT *
from (
        SELECT department_name, sum(salary)
        from employees
        GROUP BY
            department_name
    ) as sum_dept_salary

SELECT department_name, sum(salary)
from employees
GROUP BY
    department_name