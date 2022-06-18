CREATE TABLE students(
id int AUTO_INCREMENT PRIMARY KEY,
first_name varchar(100));

CREATE TABLE papers(
title varchar(100),
grade int,
student_id int,
FOREIGN KEY(student_id) REFERENCES students(id));

SELECT first_name, title, grade FROM students
RIGHT JOIN papers
ON id = papers.student_id
ORDER BY grade DESC;

SELECT first_name, title, grade FROM students
LEFT JOIN papers
ON id = papers.student_id;

SELECT first_name, IFNULL(title,'MISSING'), IFNULL(grade,0) FROM students
LEFT JOIN papers
ON id = papers.student_id;

SELECT first_name, IFNULL(AVG(grade),0) AS average FROM students
LEFT JOIN papers
ON id = papers.student_id
GROUP BY first_name
ORDER BY average DESC;



SELECT first_name, IFNULL(AVG(grade),0) AS average,
CASE
    WHEN AVG(grade) > 75 then 'PASSING'
    ELSE 'FAILING'
END AS passing_status
FROM students
LEFT JOIN papers
ON id = papers.student_id
GROUP BY first_name
ORDER BY average DESC;