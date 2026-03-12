# Student Academic Performance Analysis (SQL + Power BI)
End-to-end student performance data analysis using SQL for data cleaning and exploratory analysis and Power BI for visualization.
## Project Overview

This project analyzes student academic performance across multiple schools using SQL for data cleaning and exploratory analysis and Power BI for interactive visualization.

The objective of this project is to uncover patterns in student enrollment, attendance, subject performance, and academic scores to generate insights that can support data-driven decision-making in educational institutions.

The project demonstrates an end-to-end data analysis workflow, starting from raw data preparation to insight generation through visualization.

## Business Overview

Educational institutions collect large volumes of data related to student demographics, academic performance, attendance records, and enrollment patterns. Analyzing this data can help schools better understand student performance trends and identify areas for academic improvement.

This dataset contains student information from multiple schools including student demographics, subjects taken, academic scores, attendance records, and enrollment years.

By analyzing this data, institutions can gain insights into academic outcomes, attendance behavior, and subject performance across different schools and classes.
 
## Business Problem

Schools often face challenges in identifying the key factors influencing student performance and attendance. Without structured data analysis, it becomes difficult to answer important questions such as:

Which schools demonstrate the strongest academic performance?

Which subjects have the lowest or highest scores?

How does attendance vary across classes and schools?

What trends exist in student enrollment across years?

This project aims to answer these questions by analyzing the dataset and uncovering patterns that can support better academic planning and student performance monitoring.

## Dataset Description

The dataset contains student academic and demographic information across several schools.

#### Key variables include:

Student_ID:	        Unique identifier for each student

Student_Name:	      Name of the student

School:	            School attended by the student

Class:	            Student class level

Gender:	            Gender of the student

Age:	              Age of the student

Subject:	          Subject taken

Term:	              Academic term

Score:	            Student score in the subject

Attendance_Days:	  Number of attendance days

Enrollment_Year:	  Year the student enrolled

## Project Workflow
### 1. Data Cleaning (SQL)

The raw dataset was imported into SQL for data cleaning to ensure accuracy and consistency before analysis.

Key cleaning steps included:

Creating a duplicate working table to preserve the original dataset

Checking and identifying duplicate records

Removing extra spaces using TRIM

Standardizing text values using LOWER and UPPER

Correcting spelling errors in student names, subjects, and schools

Fixing inconsistent entries in columns such as gender, class, and term

Checking for incomplete or invalid records

These cleaning processes improved the overall quality and reliability of the dataset for analysis.

### 2. Exploratory Data Analysis (SQL)

Exploratory Data Analysis (EDA) was performed using SQL to identify trends and patterns within the dataset.

Key analyses included:

Total number of students in the dataset

Age distribution of students

Gender distribution

Score statistics (minimum, maximum, average)

School performance comparison

Attendance trends across classes and subjects

Enrollment trends across different years

These queries helped uncover patterns that guided the development of the Power BI dashboard.

## Data Analyst Questions Answered in this Project

This analysis was designed to answer key questions related to student performance, enrollment trends, and attendance patterns.

1. How many students are included in the dataset?

Understanding the total number of students helps determine the scale of the dataset and provides context for the analysis.

2. What is the age distribution of students?

Analyzing the minimum, maximum, and average student age provides insight into the demographic structure of the student population.

3. What is the gender distribution of students?

This analysis identifies the proportion of male, female, and other gender categories to understand enrollment diversity.

4. Which schools have the highest number of enrolled students?

Comparing student counts across schools helps identify institutions with the largest student populations.

5. Which school records the highest academic performance?

By aggregating student scores by school, we can identify which institution demonstrates the strongest academic results.

6. Which subjects have the highest and lowest scores?

This helps identify subjects where students perform well and subjects that may require additional academic support.

7. How does attendance vary across schools and subjects?

Attendance patterns can highlight engagement levels and help identify subjects or schools with lower student participation.

8. Which classes record the highest attendance levels?

Understanding attendance by class level helps identify where student participation is strongest.

9. How has student enrollment changed over the years?

Enrollment trends help determine whether student populations are increasing, decreasing, or remaining stable over time.

10. Which students achieved the highest overall scores?

This helps identify top-performing students and evaluate overall academic performance within the dataset.

### 3. Data Visualization (Power BI)

An interactive dashboard was developed in Power BI to present the insights derived from the dataset.

The dashboard includes visualizations such as:

Total students, total scores, and attendance metrics

Student distribution across schools

Subject performance comparison

Enrollment trends by year and gender

Attendance distribution by school and subject

Class attendance analysis by academic term

These visualizations allow stakeholders to quickly understand student performance trends and institutional comparisons.

## Dashboard Preview
<img width="1331" height="717" alt="student dashboard 1" src="https://github.com/user-attachments/assets/179d4941-ee5f-4478-a96f-6be5000342ae" />
<img width="1326" height="723" alt="student Dashboard 2" src="https://github.com/user-attachments/assets/96e16664-dc05-4506-8010-fc3be40a5885" />

## Key Insights

The analysis revealed several important insights:

Rural Model School C recorded the highest number of enrolled students among all schools.

Female students represented the highest percentage of student enrollment.

Government Secondary School A recorded the highest overall academic score despite not having the largest student population.

English subject recorded the lowest average score, even though attendance levels were relatively high.

SS2 class recorded the highest total attendance, indicating strong student participation at that level.

These insights highlight differences in academic performance and attendance patterns across schools and subjects.

## Recommendations

Based on the findings from the analysis:

Schools should investigate potential causes for lower English scores despite strong attendance levels.

Academic strategies used in high-performing schools could be studied and applied to lower-performing institutions.

Classes with lower attendance rates may require improved engagement strategies.

Continuous monitoring of enrollment and performance trends can help schools improve student outcomes and academic planning.

## Tools & Technologies

The following tools were used in this project:

SQL (MySQL) – Data cleaning and exploratory analysis

Microsoft Power BI – Data visualization and dashboard development

Microsoft Excel – Initial dataset source

GitHub – Project documentation



