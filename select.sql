
CREATE Table students(
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age int,
    grade CHAR(2),
    course VARCHAR(50),
    email VARCHAR(50),
    dob DATE,
    blood_group VARCHAR(5),
    country VARCHAR(50)

)


INSERT INTO students (first_name, last_name, age, grade, course, email, dob, blood_group, country) VALUES
('Rakib', 'Islam', 22, 'A+', 'Computer Science', 'rakib.islam@example.com', '2003-04-15', 'O+', 'Bangladesh'),
('Saima', 'Zannat', 21, 'A', 'Software Engineering', 'saima.zannat@example.com', '2004-02-11', 'B+', 'Bangladesh'),
('Hasib', 'Khan', 23, 'B', 'Information Technology', 'hasib.khan@example.com', '2002-09-25', 'A+', 'Bangladesh'),
('Arif', 'Hossain', 24, 'A', 'Data Science', 'arif.hossain@example.com', '2001-12-03', 'O-', 'Bangladesh'),
('Nusrat', 'Jahan', 22, 'A+', 'Computer Science', 'nusrat.jahan@example.com', '2003-06-08', 'AB+', 'Bangladesh'),
('Tanvir', 'Ahmed', 25, 'B', 'Cyber Security', 'tanvir.ahmed@example.com', '2000-10-22', 'A-', 'Bangladesh'),
('Rafi', 'Hasan', 23, 'A', 'Artificial Intelligence', 'rafi.hasan@example.com', '2002-07-15', 'O+', 'India'),
('Mehjabin', 'Akter', 21, 'A+', 'Software Engineering', 'mehjabin.akter@example.com', '2004-05-09', 'B-', 'Bangladesh'),
('Naim', 'Uddin', 26, 'B', 'Computer Science', 'naim.uddin@example.com', '1999-11-30', 'A+', 'Nepal'),
('Farhana', 'Rahman', 24, 'A', 'Data Analytics', 'farhana.rahman@example.com', '2001-03-12', 'O+', 'Bangladesh'),
('Imran', 'Khaled', 22, 'A+', 'Information Technology', 'imran.khaled@example.com', '2003-09-19', 'B+', 'Pakistan'),
('Sadia', 'Khatun', 21, 'A', 'Computer Science', 'sadia.khatun@example.com', '2004-08-06', 'AB-', 'Bangladesh'),
('Rashid', 'Mahmud', 23, 'B', 'Software Engineering', 'rashid.mahmud@example.com', '2002-01-27', 'O-', 'Bangladesh'),
('Taslima', 'Begum', 25, 'A+', 'Artificial Intelligence', 'taslima.begum@example.com', '2000-04-04', 'A+', 'India'),
('Rony', 'Haque', 24, 'B', 'Data Science', 'rony.haque@example.com', '2001-07-13', 'B+', 'Bangladesh'),
('Shamim', 'Reza', 22, 'A+', 'Cyber Security', 'shamim.reza@example.com', '2003-10-10', 'O-', 'Bangladesh'),
('Faria', 'Nabila', 21, 'A', 'Information Technology', 'faria.nabila@example.com', '2004-12-22', 'AB+', 'Bangladesh'),
('Tarek', 'Hasan', 23, 'B', 'Computer Science', 'tarek.hasan@example.com', '2002-03-29', 'O+', 'Nepal'),
('Jui', 'Akter', 22, 'A+', 'Data Analytics', 'jui.akter@example.com', '2003-05-18', 'A-', 'Bangladesh'),
('Nabil', 'Rahman', 25, 'A', 'Software Engineering', 'nabil.rahman@example.com', '2000-11-05', 'B+', 'Bangladesh');



SELECT * FROM students ORDER BY first_name Asc;


SELECT DISTINCT country from students;

SELECT DISTINCT blood_group from students;

SELECT * FROM students WHERE country='Bangladesh';


SELECT * FROM students WHERE country='Bangladesh' OR country='Nepal';


select * from students where blood_group='O+';