-- 1. Create the students table
CREATE TABLE students (
    id INTEGER PRIMARY KEY,
    name TEXT,
    math INTEGER,
    english INTEGER,
    science INTEGER
);

-- 2. Insert sample student data
INSERT INTO students (id, name, math, english, science)
VALUES
(1, 'Alice', 85, 90, 78),
(2, 'Bob', 70, 75, 80),
(3, 'Charlie', 95, 88, 92),
(4, 'Diana', 60, 65, 70);

-- 3. Calculate average marks for each student
SELECT 
    name,
    (math + english + science) / 3.0 AS average_marks
FROM students;
