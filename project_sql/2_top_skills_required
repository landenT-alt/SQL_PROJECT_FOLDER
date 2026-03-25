/* What are the most important skills that are required for top paying jobs
- Use our first query and build on it
- Add the skils that are required for these jobs
*/

WITH top_paying_jobs AS (
SELECT
 job_id,
 job_title,
 salary_year_avg,
 name AS company_name
FROM
    job_postings_fact
LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
WHERE
    job_title_short = 'Data Analyst' AND 
    job_location = 'Anywhere' AND
    salary_year_avg IS NOT NULL
ORDER BY 
    salary_year_avg DESC
LIMIT 10  
)

SELECT 
    top_paying_jobs.*,
    skills
FROM top_paying_jobs
INNER JOIN skills_job_dim ON top_paying_jobs.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id 
ORDER BY
    salary_year_avg DESC

/*
After having the set analyzed the most demanded skills for data analysts, based on job postings are:
- SQL(8 mentions)
- Python(7 mentions)
- Tableau(6 mentions)
- Other skills suchs as R, Pandas, and Excel also have been mentioned as a sought after skill.
*/
