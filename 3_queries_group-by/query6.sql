SELECT students.name as student, 
AVG(assignment_submissions.duration) as avg_assignment_duration,
AVG(assignments.duration) as avg_estimated_duration 
from assignment_submissions 
INNER JOIN students on students.id = student_id 
INNER JOIN assignments on assignments.id = assignment_id 
WHERE students.end_date is null 
GROUP BY student HAVING AVG(assignment_submissions.duration) < AVG(assignments.duration) 
ORDER BY avg_assignment_duration;