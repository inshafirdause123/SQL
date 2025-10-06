📚 Library Management Data Analysis (SQL Project)
Link datasets :
 https://github.com/inshafirdause123/SQL/blob/main/library_dataset_random%202.csv 

🧩 Project Overview

This project analyzes a library database containing detailed book information such as title, author, category, storage location (cabinet, rack, row), signal strength, status, and timestamps of when books were added.

The dataset (library_dataset_random 2.csv) is imported into MySQL and used to perform both basic and advanced SQL queries involving filtering, aggregation, subqueries, window functions, and date-time analysis.

🗂️ Dataset Details

File: library_dataset_random 2.csv
Table Name: library_books

Table Structure:
Column Name	Data Type	Description
Book_ID	INT	Unique ID for each book
Title	VARCHAR(255)	Name of the book
Author	VARCHAR(255)	Author of the book
Category	VARCHAR(100)	Category/genre
Cabinet	INT	Cabinet number where the book is placed
Rack_library	INT	Rack number
Row_library	INT	Row number
Signal_Strength	INT	Strength indicator (condition/availability metric)
Status_library	VARCHAR(100)	Book status (Issued / Available / Missing)
Date_library	DATE	Date when the book was added
Time_library	TIME	Time when the book was added
Minute_library	INT	Minute value of the time added
