
-- Volume of junior level job postings and the average salary for each
SELECT 
    REPLACE(job_title_short, 'Senior ', '') AS job_category,
    COUNT(job_title_short) AS junior_level_jobs,
    ROUND(AVG(salary_year_avg)) AS average_salary_USD
FROM
    job_postings_fact
WHERE 
    job_title LIKE '%Junior%' OR job_title LIKE '%junior%' OR job_title LIKE '%Entry%Level'
GROUP BY
    job_category
ORDER BY
    junior_level_jobs DESC