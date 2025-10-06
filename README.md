📚 Library Management Data Analysis (SQL Project)
Link datasets :
 https://github.com/inshafirdause123/SQL/blob/main/library_dataset_random%202.csv 

🧩 Project Overview

This project analyzes a library database containing detailed book information such as title, author, category, storage location (cabinet, rack, row), signal strength, status, and timestamps of when books were added.

The dataset (library_dataset_random 2.csv) is imported into MySQL and used to perform both basic and advanced SQL queries involving filtering, aggregation, subqueries, window functions, and date-time analysis.

The dataset (library_dataset_random 2.csv) contains details such as:

- Book ID, Title, Author, and Category

- Cabinet, Rack, and Row locations

- Signal Strength (book presence tracking)

- Status (Issued, Missing, Checked Out, etc.)

- Date and Time added to the library

🛠️ Tech Stack

Language: SQL (MySQL)

Database: library_mangt

Dataset Source: Local CSV (library_dataset_random 2.csv)

Tools Used: MySQL Workbench

  The project helps answer questions like:
  1.How To Create Database and use its?
  2.How To Rename Table ?
  3.Display All Details from the Dataset ?
  4.How To Distinct Categories Of Books and their counts?
  5.How To Filter Data by Where clause?
  6.Top 20 Books by Signal Strength?
  7.Number of Books per Cabinet & Their Average Strength?
  8.Show How Many Books Each Authors Have?
  9.Find which Category has the most books?
  10. Show the average Signal_Strength for each category?
  11.Find the cabinet and rack combination with the most books?
  12.Find all books added in '12/11/2024' between  '10:05:00' and '12:49:00'?
  13.Count how many books were added per hours?
  14.Show all books where Status_library = 'Issued'?
  15. Rank books in each cabinet by Signal_Strength using RANK()?
  16.Find books with Signal_Strength above the overall average?
  17.Find books in the cabinet with the most books?
  18.Find the most popular category?
  19.Find row with the least number of books?
  
  

  📊 Key Insights

- The most crowded cabinet and rack combination can be identified to optimize shelf space.

- Authors with the most titles highlight popular contributors to the collection.

- Signal strength patterns may indicate tracking system effectiveness.

- Time-based analysis reveals when most books are added (hourly trend).

- Missing or checked-out books help in understanding resource availability.

🚀 Advanced SQL Features Used

- Aggregate functions: COUNT, AVG, MIN, MAX

- Filtering with multiple conditions (AND/IN)

- Subqueries for comparisons

- Window functions (RANK)

- Date and Time functions (HOUR, BETWEEN)

- Sorting and grouping logic
