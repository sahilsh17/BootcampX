select SUM(assignment_submissions.duration) as total_duration
from assignment_submissions 
INNER JOIN students on assignment_submissions.student_id = students.id 
WHERE students.name LIKE 'Ibrahim Schimmel';