#  *This project is still in progress! 

# About this project
For this project we will try to look for insights regarding the Data job market and technology sectors. As a dataset we will be using a free dataset, provided by Luke Barousse (find the CSV files [here](https://drive.google.com/drive/folders/1moeWYoUtUklJO6NJdWo9OV8zWjRn0rjN)). The dataset is a collection of 787686 rows, witch contains real information about job postings around the world, for 2023, such job locations, salaries, skills requiered and more. 

# Tools used for the analysis
- SQL: The main tool that was used for this analysis in order to make queries.
- PostgreSQL: As the database managment system.
- VScode: As an integrated development environment (IDE).
- Git and Github: As a version control in order to share this project.
- Python: In order to visualize some data.

# The Analysis
1. First query ([jobs_posted_vs_salaries](/SQL_Project/jobs_posted_vs_salaries.sql)) of this project was in order to find how many job posting where made, in 2023, for each job category and how do their average yearly salaries compare. 

    ![Volume of jobs posted and average salaries](assets\jobs_posted_volume_salaries.png)*The results of this table indicate that the data job market offers the most job openings. However data analyst roles offer significantly lower average salaries, compared to data scientists and engineers, even though it is in the top of job postings.*

2. Next ([jobs_posted_per_month](/SQL_Project/jobs_posted_per_month.sql)) thing to look into is the volume of job postings throughout 2023, for each month. 

    ![Jobs posted per month](assets\jobs_posted_per_month.png)*This graph showcases a descending trend in the job offering volume from the start of the year to its end*

    In order to confirm this trend it would be usefull to look into how the top 3 job roles postings change throughout the months.

    ![Top 3 jobs posted per month](assets\top3_jobs_posted_per_month.png)*This graph confirms the general trend as each job title relatively follows the observed trend*

3. For the next part ([avg_salaries_per_month](/SQL_Project/avg_salaries_per_month.sql)), it would be intersting to check if there is a trend in the average salary that is offered regarding the month of the job posting. More specifically a comparison between the top 3 roles and machine learning engineers is interesting, as the second is a relatively more recent job market.

    ![Average salaries per month](assets\avg_salaries_per_month.png)*In this graph the top 3 data jobs keep, pretty much, a steady average salary througout the 2023. However the machine learning engineers are being offered a significant higher salary as the year comes to its end.*

    This result is kind of expected us today it is well known that the past years Machine learning (ML) and AI have had a great improvement and the need for more ML and AI specialists is constantly increasing. So is and the budget that is spent in this sector. 
    (It would be interesting to have more data to look if this trend continued in 2024!)