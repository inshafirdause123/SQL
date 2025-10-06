-- Create Database
CREATE DATABASE library_mangt;
use  library_mangt;

-- Details Of Library
SELECT * 
   FROM library_mangt.`library_dataset_random 2`;

-- Rename Table 
ALTER TABLE `library_dataset_random 2` RENAME TO library_books;

-- For The Details 
Select *
   from library_books;
   
-- Distinct Categories Of Books
SELECT Title, COUNT(*) AS `individual books`
    FROM library_books
     GROUP BY Title;
     
-- Filtering Data
Select*
  from library_books
  where  author ="Jordan brown" and  cabinet =4 and signal_strength <="-59" ;
  
  -- Library Strength In Top  Books
  select Book_id , Title , signal_strength
    from library_books
    order by signal_strength desc 
    limit 20 ;

-- Each Cabinet Books Numbers And Their Total_strength
SELECT 
    Cabinet,
    COUNT(*) AS each_books,
    COUNT(Title) AS num_of_books,
    AVG(Signal_Strength) AS total_strength
FROM library_books
GROUP BY Cabinet;

-- Show How Many Books Each Authors Have
Select author ,count(title) as num_of_books
 From Library_books
 group by author ;
 
 -- Find which Category has the most books
 Select category , count(title) as num_of_books
  from library_books
  group by category;
  
  -- Show the average Signal_Strength for each category
  Select  category , avg(signal_strength)
   from library_books
   group by category;
   
   -- Find the cabinet and rack combination with the most books
   SELECT 
    Cabinet,
    Rack_library,
    COUNT(*) AS total_books
FROM library_books
GROUP BY Cabinet, Rack_library
ORDER BY total_books DESC
LIMIT 3;

-- Find all books added in '12/11/2024' between  '10:05:00' and '12:49:00'
SELECT*
FROM library_books
WHERE Date_library = '12/11/2024'
  AND Time_library BETWEEN '10:05:00' AND '12:49:00';

 -- Count how many books were added per hours
 SELECT HOUR(Time_library) AS hour_of_day,
       COUNT(*) AS books_per_hour
FROM library_books
GROUP BY hour_of_day
ORDER BY hour_of_day ASC;

-- Show all books where Status_library = 'Issued'.
 Select status_library , count(*) as num_of_books
  from library_books
  where status_library in ( "missing" , "present" , "checked out")
  group by status_library;
  
  -- Rank books in each cabinet by Signal_Strength using RANK()
  SELECT 
    Cabinet,
    Title,
    Author,
    Signal_Strength,
    RANK() OVER (PARTITION BY Cabinet ORDER BY Signal_Strength DESC) AS rank_in_cabinet
FROM library_books
ORDER BY Cabinet, rank_in_cabinet;

 -- Find books with Signal_Strength above the overall average
 SELECT *
FROM library_books
WHERE Signal_Strength > (SELECT AVG(Signal_Strength) FROM library_books);
 
 -- Find books in the cabinet with the most books
 Select *
   from library_books
   where cabinet =(
           select cabinet 
           from library_books 
           group by cabinet
           order by  count(*)  desc 
           limit 1) ;

-- Find the most popular category
Select category , count(*) as most_popular
from library_books
group by category 
order by most_popular desc;

-- Find row with the least number of books
SELECT Row_library, COUNT(*) AS num_books , cabinet , COUNT(*) AS less_books
FROM library_books
GROUP BY Row_library , cabinet
ORDER BY num_books , less_books desc
LIMIT 1;

 
 

  




 

