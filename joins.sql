CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50)
);

INSERT INTO students (student_id, student_name) VALUES
(1, 'Alice'),
(2, 'Bob'),
(3, 'Charlie'),
(4, 'David');

CREATE TABLE enrollments (
    enrollment_id INT PRIMARY KEY,
    student_id INT,
    course_name VARCHAR(50)
);

INSERT INTO enrollments (enrollment_id, student_id, course_name) VALUES
(101, 1, 'Math'),
(102, 1, 'English'),
(103, 2, 'Science'),
(104, 4, 'History'),
(105, 5, 'Geography');  -- Note: student_id 5 doesn't exist in students

select * from students;
select * from enrollments;

select * from students s inner join enrollments e on s.student_id = e.student_id;

select * from students s left join enrollments e on s.student_id = e.student_id;

select * from students s right join enrollments e on s.student_id = e.student_id;


