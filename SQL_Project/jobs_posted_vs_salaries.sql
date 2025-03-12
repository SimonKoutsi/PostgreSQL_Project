-- Total jobs posted and average yearly salary per job title
SELECT 
    job_title_short AS job_title,
    COUNT(job_title_short) AS number_of_jobs,
    ROUND(AVG(salary_year_avg)) AS average_salary_USD
FROM
    job_postings_fact
GROUP BY
    job_title_short
ORDER BY
    number_of_jobs DESC;