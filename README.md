📊 SQL Data Analysis Project: Data Analyst Job Market
📌 Overview

This project explores the data analyst job market using SQL. The goal is to identify:

High-paying data analyst roles, 
In-demand skills, 
Skills associated with higher salaries, and
Optimal skills to learn based on demand and compensation

The analysis is performed using SQL on a dataset containing job postings, companies, and required skills. I analyzed this data set using VS code along with postgres admin.

🗂️ Project Structure

sql_load/
Database creation and table setup

csv_files/
Raw datasets (job postings, skills, companies)

project_sql/
Core analysis queries:

1_top_paying_jobs.sql

2_top_skills_required.sql

3_in-demand_skills_for_dataanalyst.sql

4_top_paying_skills.sql

5_optimal_skills.sql

images/
Visualizations of key findings

💰 1. Top Paying Data Analyst Jobs

This query identifies the highest-paying data analyst roles by:

Filtering for relevant job titles

Sorting by salary in descending order

Limiting results to top positions

Insight:

High-paying roles are often associated with specialized skills and larger companies.

🛠️ 2. Skills Required for Top Jobs

This analysis joins job postings with skills data to determine:

Which skills appear most frequently in top-paying roles

Insight:

High-paying jobs consistently require:
SQL
Python
Cloud/Big Data tools

📈 3. In-Demand Skills

This query counts how often each skill appears across job postings.

Insight:

The most in-demand skills include:
SQL, 
Python, 
Excel, 
Tableau / Power BI

💵 4. Top Paying Skills

This analysis calculates the average salary associated with each skill.

Insight:

Skills tied to higher salaries include:
Cloud technologies, 
Advanced programming (Python, R), 
Data engineering-related tools, 

⚖️ 5. Optimal Skills (High Demand + High Pay)

This combines:

Skill demand (COUNT)
Average salary (AVG)

Insight:

The most valuable skills are those that are:
Frequently requested
Associated with high salaries

👉 These represent the best ROI skills to learn

🧩 SQL Techniques Used

This project demonstrates strong SQL fundamentals, including:

SELECT, WHERE, ORDER BY, LIMIT
GROUP BY and HAVING
Aggregate functions (COUNT, AVG, MAX)
Multiple table joins
Data filtering and transformation

📌 Key Takeaways
SQL is a powerful tool for analyzing real-world datasets
Data analyst roles require a mix of:
Technical skills (SQL, Python) and
Visualization tools (Tableau, Power BI)

🚀 Future Improvements
Add dashboards (Tableau / Power BI)
Automate data pipeline updates
Expand analysis to other roles (Data Scientist, Engineer)
