SELECT AVG(total_duration) as avg_total_duration from (SELECT SUM(completed_at-started_at) as total_duration 
from assistance_requests 
INNER JOIN students on students.id=student_id 
INNER JOIN cohorts on cohorts.id=cohort_id 
GROUP BY cohorts.name) as total_durations;
 