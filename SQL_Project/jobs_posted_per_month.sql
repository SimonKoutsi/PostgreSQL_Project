-- Total job postings for each month for 2023
SELECT 
    EXTRACT(MONTH FROM job_posted_date) AS posted_month,
    COUNT(*) AS number_of_jobs
FROM 
    job_postings_fact
WHERE 
    EXTRACT(YEAR FROM job_posted_date) = 2023
GROUP BY 
    posted_month
ORDER BY 
    posted_month;

