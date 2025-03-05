-- Modify each table by copying the corresponding data from each csv file

COPY company_dim
FROM 'C:\Coding\SQL_Projects\PostgreSQL_Project\csv_files\company_dim.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

COPY skills_dim
FROM 'C:\Coding\SQL_Projects\PostgreSQL_Project\csv_files\skills_dim.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

COPY job_postings_fact
FROM 'C:\Coding\SQL_Projects\PostgreSQL_Project\csv_files\job_postings_fact.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

COPY skills_job_dim
FROM 'C:\Coding\SQL_Projects\PostgreSQL_Project\csv_files\skills_job_dim.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');
