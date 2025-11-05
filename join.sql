-- Active: 1762065643192@@127.0.0.1@5000@ph


SELECT * from "user";

SELECT * from post;

ALTER Table post 
    alter COLUMN user_id DROP NOT NULL

INSERT INTO post(id,title,user_id) VALUES(5,'test',NULL);


SELECT title,user_name FROM post
    JOIN "user" ON post.user_id = "user".id ;



SELECT * FROM post
    LEFT JOIN "user" ON post.user_id = "user".id ;

SELECT * FROM "user"
    LEFT JOIN post ON "user".id = post.id ;


SELECT * FROM post
    RIGHT JOIN "user" ON post.user_id = "user".id ;



SELECT * FROM post
    FULL JOIN "user" ON post.user_id = "user".id ;



