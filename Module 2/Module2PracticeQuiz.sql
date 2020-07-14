--1.Question 1
--For all the questions in this practice set, you will be using the Salary by Job Range Table. This is a single table titled: salary_range_by_job_classification. This table contains the following columns:
--• SetID
--• Job_Code
--• Eff_Date
--• Sal_End_Date
--• Salary_setID
--• Sal_Plan
--• Grade
--• Step
--• Biweekly_High_Rate
--• Biweekly_Low_Rate
--• Union_Code
--• Extended_Step
--• Pay_Type
--Please refer to this information to write queries to answer the questions. Are you ready to get started?
--Yes, I am ready to begin.

--2. Find the distinct values for the extended step. The code has been started for you, but you will need to program the third line yourself before running the query.
SELECT 
distinct Extended_step
from salary_range_by_job_classification;
--Which of the following values is not a distinct value?
--5

--3. Excluding $0.00, what is the minimum bi-weekly high rate of pay (please include the dollar sign and decimal point in your answer)? The code has been started for you, but you will need to add onto the last line of code to get the correct answer.
Select 
min(Biweekly_high_Rate)
From salary_range_by_job_classification
WHERE Biweekly_High_Rate <> '$0.00';
--$100.00

--4. What is the maximum biweekly high rate of pay (please include the dollar sign and decimal point in your answer)? The code has been started for you, but you will need to add onto the last line of code to get the correct answer.
SELECT 
Max(Biweekly_high_Rate) As BHR from salary_range_by_job_classification;
--$9726.38

--5. What is the pay type for all the job codes that start with '03'? The code has been started for you, but you will need to program the fourth and fifth lines yourself before running the query.
SELECT pay_type
FROM salary_range_by_job_classification
WHERE Job_Code LIKE "03%";
--B

--6.Run a query to find the Effective Date (eff_date) or Salary End Date (sal_end_date) for grade Q90H0? The code has been started for you, but you will need to program the third through the sixth lines yourself before running the query.
SELECT eff_date
	,sal_end_date
FROM salary_range_by_job_classification
WHERE Grade = "Q90H0";
--What is the Effective Date (eff_date) for grade Q90H0? (include date and time)
--12/26/2009 12:00:00 AM

--7. Sort the Biweekly low rate in ascending order. There is no starter code, as you need to write and run the query on your own. Hint: there are 4 lines to run this query.
SELECT biweekly_low_rate
FROM salary_range_by_job_classification
ORDER BY biweekly_low_rate ASC
--Are these values properly sorted?
--No

 --8. Write and run a query, with no starter code to answer this question: What Step are Job Codes 0110-0400? Hint: there are 6 lines to run this query.
SELECT Step
FROM salary_range_by_job_classification
WHERE Job_Code BETWEEN 0110
		AND 0400;
--1

--9. Write and run a query, with no starter code or hints to answer this question: What is the Biweekly High Rate minus the Biweekly Low Rate for job Code 0170?
SELECT Biweekly_High_Rate
	,Biweekly_Low_Rate AS diff
FROM salary_range_by_job_classification
WHERE Job_Code = "0170";
--0

--10. Write and run a query, with no starter code or hints to answer this question: What is the Extended Step for Pay Types M, H, and D?
SELECT Extended_step
	,Pay_Type
FROM salary_range_by_job_classification
WHERE Pay_Type IN (
		'M'
		,'H'
		,'D'
		);
--0

--11. Write and run a query, with no starter code or hints to answer this question: What is the step for Union Code 990 and a Set ID of SFMTA or COMMN?
SELECT STEP
	,Union_Code
	,SetID
FROM salary_range_by_job_classification
WHERE Union_Code = 990
	AND SetID IN (
		'SFMTA'
		,'COMMN'
		);
--1
