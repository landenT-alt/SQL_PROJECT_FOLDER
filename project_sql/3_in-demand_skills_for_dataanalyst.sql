/*
What are the most in demand skills for data analysts?
- Use inner joins on job postings
- Identify the top 5 in demand skils for data anlalysts.
- Focus on all job posting
*/

WITH remote_job_skills AS (
    SELECT
        skills_to_job.skill_id,
        COUNT(*) AS skill_count
    FROM
        skills_job_dim AS skills_to_job
    INNER JOIN job_postings_fact AS job_postings 
        ON job_postings.job_id = skills_to_job.job_id
    WHERE
        job_postings.job_work_from_home = true
        AND job_postings.job_title_short = 'Data Analyst'
    GROUP BY
        skills_to_job.skill_id
)

SELECT
    skills.skill_id,
    skills AS skill_name,
    remote_job_skills.skill_count
FROM remote_job_skills
INNER JOIN skills_dim AS skills 
    ON skills.skill_id = remote_job_skills.skill_id
ORDER BY
    remote_job_skills.skill_count DESC
LIMIT 5;
