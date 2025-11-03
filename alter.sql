-- Active: 1762144830724@@127.0.0.1@5432@ph

CREATE Table person2(
    user_id SERIAL PRIMARY KEY,
    user_name VARCHAR(50) NOT NULL,
    user_age INT,
    user_email VARCHAR(50)
);

INSERT INTO person2 VALUES(1,'test',45,'test@egmail.com');
INSERT INTO person2 VALUES(2,'test',45,'test@egmail.com');
INSERT INTO person2 VALUES(3,'test',45,'test@egmail.com');
INSERT INTO person2 VALUES(4,'test',45,'test@egmail.com');

SELECT * from person2;

ALTER TABLE person2
ADD COLUMN email VARCHAR(50) DEFAULT 'default@gmail.com' NOT NULL;

INSERT INTO person2 VALUES(5,'test',45,'test@egmail.com');

ALTER Table person2
DROP COLUMN email;

ALTER Table person2
RENAME COLUMN age to user_age;


ALTER TABLE person2
Alter COLUMN user_name type VARCHAR(100);



ALTER Table person2
alter COLUMN user_age set NOT NULL;


ALTER Table person2
alter COLUMN user_age DROP NOT NULL;

ALTER Table person2
ADD constraint unique_user_id UNIQUE(user_id);


ALTER Table person2
DROP constraint unique_user_id;


TRUNCATE table person2;