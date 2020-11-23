SELECT SUM(assignment_submissions.duration) as total_duration from assignment_submissions 
INNER JOIN students on assignment_submissions.student_id = students.id 
INNER JOIN cohorts on students.cohort_id = cohorts.id 
WHERE cohorts.name LIKE 'FEB12';