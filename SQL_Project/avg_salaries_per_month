
-- Job posting and salaries per month, for specific job titles, for 2023
SELECT 
    job_title_short,
    EXTRACT(MONTH FROM job_posted_date) AS posted_month,
    COUNT(*) AS number_of_jobs,
    ROUND(AVG(salary_year_avg)) AS average_salary_USD
    --PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY salary_year_avg) AS median  --> In case we want the median salary
FROM 
    job_postings_fact
WHERE 
    job_title_short IN ('Data Analyst', 'Data Engineer', 'Data Scientist', 'Machine Learning Engineer' ) 
    AND EXTRACT(YEAR FROM job_posted_date) = 2023
GROUP BY 
    job_title_short, posted_month
ORDER BY 
    posted_month, number_of_jobs