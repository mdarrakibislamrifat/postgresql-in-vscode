-- Active: 1762065643192@@127.0.0.1@5000@test_db

create table employees (
    employee_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(50),
    department_id INT REFERENCES departments (department_id),
    salary DECIMAL(10, 2),
    hire_date DATE
)

create table departments (
    department_id SERIAL PRIMARY KEY,
    department_name VARCHAR(50)
)

select * from departments;

SELECT * from employees;

INSERT INTO
    departments (department_name)
VALUES ('HR'),
    ('Marketing'),
    ('Finance'),
    ('IT'),
    ('Sales'),
    ('Engineering'),
    ('Customer Support'),
    ('Research'),
    ('Administrators')

INSERT INTO
    employees (
        employee_name,
        department_id,
        salary,
        hire_date
    )
VALUES (
        'John Smith',
        1,
        55000.00,
        '2020-02-15'
    ),
    (
        'Emily Johnson',
        2,
        62000.00,
        '2021-06-10'
    ),
    (
        'Michael Brown',
        3,
        70000.00,
        '2019-11-01'
    ),
    (
        'Sophia Davis',
        1,
        58000.00,
        '2022-01-20'
    ),
    (
        'Liam Wilson',
        4,
        52000.00,
        '2018-09-12'
    ),
    (
        'Olivia Taylor',
        3,
        75000.00,
        '2021-04-07'
    ),
    (
        'Noah Anderson',
        2,
        68000.00,
        '2019-03-18'
    ),
    (
        'Ava Thomas',
        1,
        54000.00,
        '2020-12-05'
    ),
    (
        'James Jackson',
        4,
        51000.00,
        '2017-08-25'
    ),
    (
        'Mia White',
        3,
        72000.00,
        '2022-05-14'
    ),
    (
        'Elijah Harris',
        2,
        66000.00,
        '2020-01-30'
    ),
    (
        'Isabella Martin',
        1,
        60000.00,
        '2018-07-03'
    ),
    (
        'William Lee',
        3,
        74000.00,
        '2019-05-22'
    ),
    (
        'Charlotte Perez',
        4,
        53000.00,
        '2021-02-17'
    ),
    (
        'Benjamin Clark',
        2,
        69000.00,
        '2020-09-09'
    ),
    (
        'Amelia Lewis',
        1,
        56000.00,
        '2017-10-10'
    ),
    (
        'Henry Walker',
        3,
        78000.00,
        '2022-03-25'
    ),
    (
        'Harper Hall',
        4,
        50000.00,
        '2018-11-14'
    ),
    (
        'Alexander Allen',
        2,
        71000.00,
        '2019-01-08'
    ),
    (
        'Evelyn Young',
        1,
        59000.00,
        '2020-06-21'
    );

SELECT *
from employees
    JOIN departments on employees.department_id = departments.department_id

SELECT * from employees JOIN departments USING (department_id);

SELECT department_name, round(avg(salary)) as avg_salary
from employees
    JOIN departments USING (department_id)
GROUP BY
    department_name