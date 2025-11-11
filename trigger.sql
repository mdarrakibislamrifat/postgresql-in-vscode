-- Active: 1762065643192@@127.0.0.1@5000@ph

CREATE table my_users (
    user_name VARCHAR(50),
    email VARCHAR(50)
)

INSERT INTO
    my_users (user_name, email)
VALUES (
        'Rakib',
        'rakib.islam@example.com'
    ),
    (
        'Sakib',
        'sakib.islam@example.com'
    );

SELECT * from my_users;

create table deleted_users_audit (
    deleted_user_name VARCHAR(50),
    deleted_at TIMESTAMP
)

create FUNCTION save_deleted_user ()
RETURNS TRIGGER
LANGUAGE plpgsql
as 
$$
    BEGIN
        INSERT INTO deleted_users_audit (deleted_user_name, deleted_at)
        VALUES (OLD.user_name, NOW());
        RETURN OLD;
    END
$$

CREATE TRIGGER deleted_users_trigger BEFORE DELETE ON my_users FOR EACH ROW
EXECUTE FUNCTION save_deleted_user ()






DELETE FROM my_users
WHERE user_name = 'Rakib';