-- 1. Create the students table
CREATE TABLE students (
    student_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    math INTEGER NOT NULL,
    english INTEGER NOT NULL,
    science INTEGER NOT NULL
);

-- 2. Insert sample student data
INSERT INTO students (student_id, name, math, english, science)
VALUES
(1, 'Alice', 85, 90, 78),
(2, 'Bob', 70, 75, 80),
(3, 'Charlie', 95, 88, 92),
(4, 'Diana', 60, 65, 70),
(5, 'Ethan', 55, 50, 60);

-- 3. Calculate average marks and determine pass/fail
SELECT 
    student_id,
    name,
    math,
    english,
    science,
    ROUND((math + english + science) / 3.0, 2) AS average_marks,
    CASE 
        WHEN (math + english + science) / 3.0 >= 60 THEN 'Pass'
        ELSE 'Fail'
    END AS status
FROM students;

-- 4. Optional: Rank students by average marks
SELECT 
    student_id,
    name,
    ROUND((math + english + science) / 3.0, 2) AS average_marks,
    RANK() OVER (ORDER BY (math + english + science) / 3.0 DESC) AS rank
FROM students;
