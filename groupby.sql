-- Active: 1762065643192@@127.0.0.1@5000@ph


SELECT * FROM students;


SELECT country, count(*),avg(age) FROM students 
     GROUP BY country;



SELECT country,avg(age) FROM students 
     GROUP BY country
     HAVING avg(age)>22;



SELECT extract(year from dob) as birth_year ,count(*) 
    from students
    GROUP BY birth_year;




create table "user"(
    id SERIAL PRIMARY KEY,
    user_name VARCHAR(25) NOT NULL
)



create table post(
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES "user"(id) ON Delete CASCADE
)

-- on delete cascade
-- on delete set null
-- on delete set default default 2 - default value

ALTER Table post 
alter COLUMN user_id set NOT NULL;


INSERT INTO "user" (user_name) VALUES
('akash'),
('batash'),
('sagor'),
('nodi')

SELECT * from "user";

SELECT * from post;

INSERT INTO post (title,user_id) VALUES
('Enjoying a sunny day with Akash😁',2),
('Batash just shared an amazing recipe',1),
('Exploring adventures with Sagor',4),
('Nodi wisdom always leaves as inpired',4)