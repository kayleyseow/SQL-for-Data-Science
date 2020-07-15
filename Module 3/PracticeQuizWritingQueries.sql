--All of the questions in this quiz pull from the open source Chinook Database. Please refer to the ER Diagram below and familiarize yourself with the table and column names to write accurate queries and get the appropriate answers.
--1. How many albums does the artist Led Zeppelin have?
SELECT COUNT(albumId) AS total
FROM albums
WHERE ArtistId IN (
		SELECT ArtistId
		FROM artists
		WHERE Name LIKE "Led Zeppelin"
		);
--14

--2. Create a list of album titles and the unit prices for the artist "Audioslave".
SELECT a.Title
	,t.UnitPrice
FROM Albums a
INNER JOIN Tracks t ON a.AlbumId = t.AlbumId -- join tracks and albums by AlbumID
INNER JOIN Artists ar ON ar.ArtistID = a.ArtistID -- join above by ArtistID
WHERE ar.Name = 'Audioslave'; -- where name is "AudioSlave"
--How many records are returned?
--Only 25 records will be shown in the output so please look at the bottom of the output to see how many records were retrieved.
--40

--3. Find the first and last name of any customer who does not have an invoice. Are there any customers returned from the query?
SELECT n.FirstName
	,n.LastName
	,i.Invoiceid
FROM customers n
LEFT JOIN invoices i ON n.Customerid = i.Customerid
WHERE InvoiceId IS NULL;
--No

--4. Find the total price for each album.
SELECT t.Title
	,SUM(p.UnitPrice)
FROM albums t
INNER JOIN tracks p ON t.Albumid = p.Albumid
WHERE t.Title = 'Big Ones'
GROUP BY t.Title;
--What is the total price for the album “Big Ones”?
--14.85

--5. How many records are created when you apply a Cartesian join to the invoice and invoice items table?
SELECT a.InvoiceId D
FROM invoices a
CROSS JOIN invoice_items b;
--Only 25 records will be shown in the output so please look at the bottom of the output to see how many records were retrieved.
--922880
