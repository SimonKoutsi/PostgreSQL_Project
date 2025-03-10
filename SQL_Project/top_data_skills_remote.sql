-- Top skill for remote data jobs
SELECT 
    ROW_NUMBER() OVER(ORDER BY COUNT(skills) DESC) AS rank,
    skills,
    COUNT(skills) AS skill_count
FROM
(
    SELECT 
        REPLACE(job_title_short, 'Senior ', '') AS simple_job_title,
        skills_dim.skills AS skills,
        job_postings_fact.job_location
    FROM job_postings_fact
    INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
    INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
) AS job_skill
WHERE 
    job_location = 'Anywhere' 
    AND simple_job_title IN ('Data Analyst', 'Data Engineer', 'Data Science')
GROUP BY skills
ORDER BY skill_count DESC
LIMIT 5;