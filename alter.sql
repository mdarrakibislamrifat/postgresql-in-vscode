-- Active: 1762065643192@@127.0.0.1@5000@ph

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