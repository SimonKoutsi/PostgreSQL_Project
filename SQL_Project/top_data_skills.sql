-- Top 5 skills for data ralated roles
SELECT 
    ROW_NUMBER() OVER(ORDER BY COUNT(skills) DESC) AS rank,
    skills AS skills_all_lvl,
    COUNT(skills) AS skill_count
FROM
(
    SELECT 
        REPLACE(job_title_short, 'Senior ', '') AS simple_job_title,
        skills_dim.skills AS skills
    FROM job_postings_fact
    INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
    INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
) AS job_skill
WHERE simple_job_title IN ('Data Analyst', 'Data Engineer', 'Data Science')
GROUP BY skills_all_lvl
ORDER BY skill_count DESC
LIMIT 5;

-- Top 5 skills for junior data roles
SELECT 
    ROW_NUMBER() OVER(ORDER BY COUNT(skills) DESC) AS rank,
    skills AS skills_junior_lvl,
    COUNT(skills) AS skill_count
FROM
(
    SELECT 
        REPLACE(job_title_short, 'Senior ', '') AS simple_job_title,
        skills_dim.skills AS skills
    FROM job_postings_fact
    INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
    INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
    WHERE job_title LIKE '%Junior%' OR job_title LIKE '%junior%' OR job_title LIKE '%Entry%Level'

) AS job_skill
WHERE simple_job_title IN ('Data Analyst', 'Data Engineer', 'Data Science')
GROUP BY skills_junior_lvl
ORDER BY skill_count DESC
LIMIT 5;