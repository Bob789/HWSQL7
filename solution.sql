-- sol A Display the list of courses and the instructor teaching
--       the course, where an instructor is assigned to the course.
-- INNER JOIN
SELECT  -- 35 ROWS effected
	course_id,
	course_name,
	l.first_name,
	l.last_name
FROM courses c
JOIN lecturers l ON l.lecturer_id = c.lecturer_id;

-- sol B Display the list of courses without lecturers
SELECT  -- 15 ROWS effected
	course_id,
	course_name
FROM courses c
WHERE c.lecturer_id IS NULL;

-- C Display the list of all courses and the assigned instructor,
--   if no instructor is assigned, NULL will appear in the instructor's details
-- LEFT INCLUSIVE JOIN -- return all the liens
SELECT  -- 50 ROWS effected
	course_id,
	course_name,
	l.first_name,
	l.last_name
FROM courses c
LEFT JOIN lecturers l ON l.lecturer_id = c.lecturer_id;

-- D Display the list of instructors and the courses they teach, only for assigned instructors.
-- INNER JOIN
SELECT  -- 35 ROWS effected
	l.lecturer_id ,
	l.first_name,
	l.last_name,
	course_name
FROM lecturers l
JOIN courses c ON l.lecturer_id = c.lecturer_id
GROUP BY l.lecturer_id;

-- E Display the list of instructors who are not assigned to any course.
-- RIGHT EXCLUSIVE JOIN -- return all the liens with null
SELECT  -- 15 ROWS effected
	l.lecturer_id,
	l.first_name,
	l.last_name
FROM courses c
RIGHT JOIN lecturers l
ON l.lecturer_id = c.lecturer_id
WHERE c.lecturer_id IS NULL;

-- F Display all instructors and the courses they teach,
 --  if an instructor is not assigned to any course, NULL will appear in the course details.
-- RIGHT INCLUSIVE JOIN
SELECT  -- 50 ROWS effected
	l.lecturer_id,
	l.first_name,
	l.last_name,
	c.course_name
FROM courses c
RIGHT JOIN lecturers l
ON l.lecturer_id = c.lecturer_id
ORDER BY l.lecturer_id;

-- G Display the list of all courses and their assigned instructor; if no instructor is assigned, NULL will appear in the instructor's details, along with all instructors and the courses they teach; if an instructor is not assigned to any course,
 --  NULL will appear in the course details.
 -- FULL JOIN
 SELECT  -- 65 ROWS effected
	l.lecturer_id,
	l.first_name,
	l.last_name,
	c.course_name
FROM courses c
FULL JOIN lecturers l
ON l.lecturer_id = c.lecturer_id
ORDER BY l.lecturer_id;

-- H Display a list where each instructor teaches every course.
-- CROSS JOIN
WITH result AS ( -- 2500 ROWS effected
    SELECT
        l.lecturer_id,
        l.first_name,
        l.last_name,
        c.course_id,
        c.course_name
    FROM lecturers l
    CROSS JOIN courses c
)
SELECT *, (SELECT COUNT(*) FROM result) AS affected_rows FROM result;