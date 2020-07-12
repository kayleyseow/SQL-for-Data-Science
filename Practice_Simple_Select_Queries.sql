--To prepare for the graded coding quiz, you will be asked to execute a query, read the results, and select the correct answer you found in the results. This question is for you to practice executing queries. I have provided you the script for this query, a simple select statement. Think of this as a sandbox for you to practice. As you practice executing queries, take time to read the results in order to prepare for the quiz and get comfortable writing a basic select statement.
--1. Run query: Retrieve all the data from the tracks table. Who is the composer for track 18?
Select Composer From Tracks where TrackId = 18;
--AC/DC

--2. Run Query: Retrieve all data from the artists table. Look at the list of artists, how many artists are you familiar with (there is no wrong answer here)?
Select *
From Artists;
-- 5

--3. Run Query: Retrieve all data from the invoices table. What is the billing address for customer 31?
Select *
From Invoices;
--194A Chain Lake Drive, Halifax, NS, CANADA B3S 1C5

--4. Run Query: Return the playlist id, and name from the playlists table. How many playlists are there? Which would you classify is your favorite from this list?
Select Playlistid,
Name
From Playlists;
--18, Music Videos

--5. Run Query: Return the Customer Id, Invoice Date, and Billing City from the Invoices table. What city is associated with Customer ID number 42? What was the invoice date for the customer in Santiago?
Select CustomerId,
InvoiceDate, 
BillingCity 
From Invoices;
--Bordeaux, 2009-04-04 00:00:00

--6. Run Query: Return the First Name, Last Name, Email, and Phone, from the Customers table. What is the telephone number for Jennifer Peterson?
Select FirstName, 
LastName, 
Email, 
Phone
From Customers;
--+1 (604) 688-2255

--7. Run Query: Return the Track Id, Genre Id, Composer, Unit Price from the Tracks table. How much do these tracks cost?
Select TrackId, 
GenreId, 
Composer, 
UnitPrice 
From Tracks;
--0.99

--8. Run Query: Select all the columns from the Playlist Track table and limit the results to 10 records. How might this information be used?
Select *
From Playlist_track 
Limit 10;
--To show which tracks are in a specific playlist.

--9. Run Query: Select all the columns from the Media Types table and limit the results to 50 records. What happened when you ran this query? Were you able to get all 50 records?
Select *
From Media_types
Limit 50;
--I was only able to get 5 records.

--10. Run Query: Select all the columns from the Albums table and limit the results to 5 records. How many columns are in the albums table?
--What is the name of the 9th album in this list?
Select *
From Albums;
--Plays Metallica By Four Cellos
