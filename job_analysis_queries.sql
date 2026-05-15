CREATE DATABASE job_market_analysis;
CREATE TABLE jobs (
    work_year TEXT,
    experience_level TEXT,
    employment_type TEXT,
    job_title TEXT,
    salary TEXT,
    salary_currency TEXT,
    salary_in_usd TEXT,
    employee_residence TEXT,
    remote_ratio TEXT,
    company_location TEXT,
    company_size TEXT
);
SELECT * FROM jobs
LIMIT 5;

-- Top 10 Most Common Job Roles
SELECT
    job_title,
    COUNT(*) AS total_jobs
FROM jobs
GROUP BY job_title
ORDER BY total_jobs DESC
LIMIT 10;

-- Average Salary by Experience Level
SELECT
    experience_level,
    ROUND(AVG(CAST(salary_in_usd AS NUMERIC)), 2) AS avg_salary
FROM jobs
GROUP BY experience_level
ORDER BY avg_salary DESC;

--Remote Work Distribution
SELECT
    remote_ratio,
    COUNT(*) AS total_jobs
FROM jobs
GROUP BY remote_ratio
ORDER BY remote_ratio;

-- Highest Paying Roles
SELECt
    job_title,
    ROUND(AVG(CAST(salary_in_usd AS NUMERIC)), 2) AS avg_salary
FROM jobs
GROUP BY job_title
ORDER BY avg_salary DESC
LIMIT 10;

--Employment Type Distribution
SELECT
    employment_type,
    COUNT(*) AS total_jobs
FROM jobs
GROUP BY employment_type;

