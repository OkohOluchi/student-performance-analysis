SELECT*
FROM `student grade dataset`;
#Creating another table like the imported dataset and inserting each data, row and column to the newly created table 
#Creating table to avoid altering the initial dataset,incase there's a need to go back to the initial dataset  
CREATE TABLE Student_dataset2
LIKE `student grade dataset`;
SELECT*
FROM student_dataset2;
INSERT INTO student_dataset2
SELECT*
FROM `student grade dataset`;
#Checking for duplicate value using partition by, row_num aand duplicate CTE to check if there's any duplicate value
SELECT*
FROM student_dataset2;
SELECT*,
     ROW_NUMBER() 
     OVER( PARTITION BY  Student_Name, Class, Gender,Age,Subject,Term,Score,Attendance_Days,Enrollment_Year) 
     As row_num
FROM student_dataset2;
     WITH Duplicate_CTE as
(
SELECT*,
ROW_NUMBER() 
OVER( PARTITION BY  Student_Name, Class, Gender,Age,Subject,Term,Score,Attendance_Days,Enrollment_Year) As row_num
FROM student_dataset2
)
    SELECT*
	FROM Duplicate_CTE
    WHERE row_num > 1;
SELECT*
FROM student_dataset2;
#cleaning each rows and columns, Trimming columns to remove space
#Standardilizing dataset, updating column and dataset 
#Checking for incomplete values, incorrect spelling and error on the dataset  
SELECT Student_Name
FROM student_dataset2;
SELECT Student_Name, TRIM(Student_Name)
FROM student_dataset2;
UPDATE student_dataset2
SET Student_Name = TRIM(Student_Name);
SELECT Student_Name, Lower(Student_Name)
FROM student_dataset2;
UPDATE student_dataset2
SET Student_Name = Lower(Student_Name); 
SELECT Student_Name
FROM student_dataset2
WHERE Student_Name LIKE "john doe%";
UPDATE student_dataset2
SET Student_Name = "John Doe"
WHERE Student_Name Like "john doe";
SELECT Student_Name
FROM student_dataset2 
WHERE Student_Name LIKE "iasha bello%";
UPDATE student_dataset2
SET Student_Name = "Aisha Bello"
WHERE Student_Name LIKE "iasha bello";
SELECT*
FROM student_dataset2; 
SELECT Class
FROM student_dataset2; 
SELECT Class, TRIM(UPPER(Class))
FROM student_dataset2; 
UPDATE student_dataset2
SET Class = TRIM(UPPER(Class)); 
SELECT Class
FROM student_dataset2
WHERE Class LIKE "JS2S%";
UPDATE student_dataset2
SET Class = "JSS2"
WHERE Class LIKE "JS2S";
SELECT*
FROM student_dataset2;
SELECT Gender
FROM student_dataset2;
SELECT Gender, TRIM(Lower(Gender))
FROM student_dataset2;
UPDATE student_dataset2
SET Gender = TRIM(Lower(Gender));
SELECT Gender
FROM student_dataset2
WHERE Gender LIKE "feamle%";
UPDATE student_dataset2
SET Gender = "Female"
WHERE Gender LIKE "feamle";
SELECT Term
FROM student_dataset2;
SELECT Term, TRIM(Lower(Term)) 
FROM student_dataset2;
UPDATE student_dataset2
SET Term = TRIM(Lower(Term));
SELECT Term
FROM student_dataset2
WHERE Term LIKE "trem3%";
UPDATE student_dataset2
SET Term = "Term3"
WHERE Term LIKE "trem3";
SELECT*
FROM student_dataset2;
SELECT Subject
FROM student_dataset2;
SELECT Subject, TRIM(Subject)
FROM student_dataset2;
UPDATE student_dataset2
SET Subject = TRIM(Lower(Subject));
SELECT Subject
FROM student_dataset2
WHERE Subject LIKE "neglish%";
UPDATE student_dataset2
SET Subject = "English"
WHERE Subject LIKE "neglish";
#Altering and changeing column names with error, checking dataset decription and cleaning dataset 
ALTER TABLE student_dataset2
CHANGE COLUMN ï»¿Student_ID Student_ID VARCHAR(20) NULL;
DESCRIBE student_dataset2;
ALTER TABLE student_dataset2
CHANGE COLUMN `Unity Academy` School TEXT NULL;
SELECT School
FROM student_dataset2;
SELECT School, TRIM(School)
FROM student_dataset2;
UPDATE student_dataset2
SET School = TRIM(School);
SELECT School
FROM student_dataset2
WHERE School LIKE "Community Hgih School B%";
UPDATE student_dataset2
SET School = "Community High School B"
WHERE School LIKE "Community Hgih School B";
#checking for rows with all round blanks
#checking for rows that won't be useful for this analysis 
SELECT*
FROM student_dataset2;
SELECT*
FROM student_dataset2
WHERE Score = ""
AND Attendance_Days = ""  
AND Enrollment_Year = "" 
AND Age = "";

#Exploratory Data Analysis
#Analyzing dataset to get insight 
SELECT*
FROM student_dataset2;
#Total Count of student ID in dataset 
SELECT COUNT(*) Student_ID
FROM student_dataset2;
#Calculating the Mininum, Maximum and Average Age of Student, where student age is not NUll 
SELECT MIN(Age), Max(Age), Avg(Age)
FROM student_dataset2
WHERE Age >=1;
#Calculating the Count of each gender, to get the gender with the highest number or population of student
SELECT Gender, COUNT(*) Gender 
FROM student_dataset2
GROUP BY Gender
ORDER BY Gender DESC;
#Calcualting the Mininum, Maximum And Average School of Student, to know the least, highest and Average Score from this dataset 
SELECT MIN(Score), Max(Score), Avg(Score)
FROM student_dataset2
WHERE Score >0;
#Calculating and Sum Score base on School, to know the school with the highest score or performance 
SELECT School, Sum(Score)
FROM student_dataset2
GROUP BY School
ORDER BY School DESC;
#Calculating School With Student ID to identify school with the student range
#To identify the school with the highest or the lowest  number of enrolled student 
SELECT School, Count(*) Student_ID
FROM student_dataset2
GROUP BY School
ORDER BY Student_ID DESC;
#Calculating the Minimum attendance and Maximum Attdendance of School Student
SELECT MIN(Attendance_Days), MAX(Attendance_Days)
FROM student_dataset2
WHERE Attendance_Days >0;
#Calculating and identifying subjects with the highest or lowest attendance from student in Various schools
SELECT Subject, School, Count(*) Attendance_Days
FROM student_dataset2
GROUP BY Subject, School
ORDER BY Subject, School DESC;
#Calculating to know the Minimum and maximum  enrollment year on this dataset. 
#To identify the start year and End year that the dataset contains 
SELECT MIN(Enrollment_Year), MAX(Enrollment_Year)
FROM student_dataset2
WHERE Enrollment_Year > 0;
#Identifying the trend in each enrollment year for the various school 
#Identifying if there is an increase, decrease or static trend for enrollment each year for the different school
#Calculating and Identifying the school with the highest and lowest enrollment for each year
SELECT Enrollment_Year, School, Count(*) Student_ID
FROM student_dataset2
GROUP BY Enrollment_Year, School
ORDER BY Enrollment_Year DESC;
#Calculating and identifying class with the higest and least attendance days 
SELECT Class, Sum(Attendance_Days) 
FROM student_dataset2 
GROUP BY Class 
ORDER BY Class DESC;
SELECT Sum(Attendance_Days)
FROM student_dataset2;
#Identifying the year with the highest and least enrollment
#To identify the enrollment trend over the years
SELECT Enrollment_Year, COUNT(*) Num_Of_Enrollment 
FROM student_dataset2
GROUP BY Enrollment_Year
ORDER BY Enrollment_Year DESC;
#Identifying the term with the highest attendance
SELECT Term, Count(*) Attendance_Days
FROM student_dataset2
GROUP BY Term;
#Calculating student with the highest and least Score 
SELECT Student_Name, School, SUM(Score)
FROM student_dataset2
GROUP BY Student_Name, School
ORDER BY Student_Name;
SELECT Student_Name, SUM(Score)
FROM student_dataset2
GROUP BY Student_Name
ORDER BY SUM(Score) DESC;
SELECT SUM(Score)
FROM student_dataset2; 

