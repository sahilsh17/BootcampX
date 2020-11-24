SELECT students.name, AVG(duration) as average_assignment_submission 
FROM assignment_submissions 
INNER JOIN students on students.id = student_id 
where students.end_date is null 
GROUP BY students.name 
ORDER BY average_assignment_submission DESC;