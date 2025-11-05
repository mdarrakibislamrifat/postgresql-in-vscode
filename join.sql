-- Active: 1762065643192@@127.0.0.1@5000@ph


SELECT * from "user";

SELECT * from post;



SELECT title,user_name FROM post
    JOIN "user" ON post.user_id = "user".id ;


