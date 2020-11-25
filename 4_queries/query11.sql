SELECT day, COUNT(*) as number_of_assignments, 
SUM(duration) from assignments 
GROUP BY day order by day;