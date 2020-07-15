--All of the questions in this quiz refer to the open source Chinook Database. Please familiarize yourself with the ER diagram in order to familiarize yourself with the table and column names in order to write accurate queries and get the appropriate answers.
--1. Pull a list of customer ids with the customer’s full name, and address, along with combining their city and country together. Be sure to make a space in between these two and make it UPPER CASE.
SELECT CustomerId,
       FirstName || " " || LastName AS FullName,
       Address,
       UPPER(City || " " || Country) AS CityCountry
FROM Customers;
--What is the city and country result for CustomerID 16?
--MOUNTAIN VIEW USA

--2. Create a new employee user id by combining the first 4 letters of the employee’s first name with the first 2 letters of the employee’s last name. Make the new field lower case and pull each individual step to show your work.
SELECT FirstName,
       LastName,
       LOWER(SUBSTR(FirstName,1,4)) AS A,
       LOWER(SUBSTR(LastName,1,2)) AS B,
       LOWER(SUBSTR(FirstName,1,4)) || LOWER(SUBSTR(LastName,1,2)) AS userId
FROM Employees;
--What is the final result for Robert King?
--robeki

--3. Show a list of employees who have worked for the company for 15 or more years using the current date function. Sort by lastname ascending.
SELECT FirstName,
       LastName,
       HireDate,
       (STRFTIME('%Y', 'now') - STRFTIME('%Y', HireDate)) 
          - (STRFTIME('%m-%d', 'now') < STRFTIME('%m-%d', HireDate)) 
          AS YearsWorked
FROM Employees
WHERE YearsWorked >= 15
ORDER BY LastName ASC;
--What is the lastname of the last person on the list returned?
--Peacock

--4. Profiling the Customers table, answer the following question.
SELECT COUNT(*)
FROM Customers
WHERE PostalCode IS NULL;
--Are there any columns with null values? Indicate any below. Select all that apply.
--Postal Code, Phone, Company, Fax

--5. Find the cities with the most customers and rank in descending order.
SELECT City,
       COUNT(*)
FROM Customers
GROUP BY City
ORDER BY COUNT(*) DESC;
--Which of the following cities indicate having 2 customers?
--London, São Paulo, Mountain View

--6. Create a new customer invoice id by combining a customer’s invoice id with their first and last name while ordering your query in the following order: firstname, lastname, and invoiceID.
SELECT C.FirstName,
       C.LastName,
       I.InvoiceId,
       C.FirstName || C.LastName || I.InvoiceID AS NewId
FROM Customers C INNER JOIN Invoices I
ON C.CustomerId = I.CustomerID
WHERE NewId LIKE 'AstridGruber%';
--Select all of the correct "AstridGruber" entries that are returned in your results below. Select all that apply.
--AstridGruber273, AstridGruber296, AstridGruber370
