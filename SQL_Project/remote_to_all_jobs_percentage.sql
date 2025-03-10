-- Remote jobs to all jobs persentage per month
WITH all_jobs AS (
    SELECT 
        EXTRACT(MONTH FROM job_posted_date) AS posted_month,
        COUNT(*) AS number_of_jobs
    FROM job_postings_fact
    GROUP BY posted_month
)
SELECT 
    all_jobs.posted_month,
    all_jobs.number_of_jobs AS all_jobs,
    remote_jobs.number_of_jobs AS remote_jobs,
    ROUND(
        (remote_jobs.number_of_jobs * 100.0) / all_jobs.number_of_jobs, 
        2
    ) AS remote_percentage 
FROM all_jobs
INNER JOIN (
    SELECT 
        EXTRACT(MONTH FROM job_posted_date) AS posted_month,
        COUNT(*) AS number_of_jobs
    FROM job_postings_fact
    WHERE job_location = 'Anywhere'
    GROUP BY posted_month
) AS remote_jobs ON all_jobs.posted_month = remote_jobs.posted_month
ORDER BY all_jobs.posted_month