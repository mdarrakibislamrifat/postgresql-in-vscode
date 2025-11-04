

SHOW timezone;



SELECT now();

create table timez (ts TIMESTAMP without time zone,tsz TIMESTAMP with time zone);

INSERT INTO timez VALUES('2025-11-04 10:50:00','2025-11-04')

SELECT * FROM timez;

SELECT now()


SELECT CURRENT_DATE;

SELECT now()::time;

SELECT now()::date;

SELECT to_char(now(),'dd/mm/yyyy');

SELECT to_char(now(),'Month');


SELECT CURRENT_DATE - INTERVAL '1 year';

SELECT age(CURRENT_DATE ,'2000-05-16');



SELECT * from students;

SELECT * , age(CURRENT_DATE,dob) from students;



SELECT extract(year from '2025-11-04'::date);

SELECT 1::BOOLEAN;