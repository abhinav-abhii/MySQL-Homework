INSERT INTO students(id,name,course,fees_paid,status)
VALUES
(1, 'Alice', 'Web Development', 5000, 'Inactive'),
(2, 'Bob', 'Data Science', 7000, 'Inactive'),
(3, 'Charlie', 'UI/UX Design', 4000, 'Active');

SELECT * FROM `students`
WHERE fees_paid>5000; 

UPDATE students
SET status='Active'
WHERE course='Web Development';

UPDATE students
SET fees_paid=8000
WHERE course='Data Science';

UPDATE students
SET status='Inactive',fees_paid=3500
WHERE id=3;

DELETE FROM students
WHERE id=2;

DELETE FROM students
WHERE status='Inactive';