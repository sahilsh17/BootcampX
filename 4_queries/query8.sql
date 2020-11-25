SELECT cohorts.name as cohort, 
SUM(completed_at-started_at) as total_duration 
from assistance_requests 
INNER JOIN students on students.id=student_id 
INNER JOIN cohorts on cohorts.id=cohort_id 
GROUP BY cohorts.name 
ORDER BY total_duration;