#Instructions to Run the OLA Ride Booking Analysis SQL Project

Prerequisites

## Setup Steps

1. **Create the Database**
Open your MySQL client and run this command to create the database:
CREATE DATABASE ola;

2. **Select the Database**
Switch to the newly created database by running:
USE ola;

3. **Execute the SQL Script**
Run the provided OLA-Project.sql script which contains your table commands and queries.

-If you are using the MySQL command line, run:
mysql -u your_username -p ola < OLA-Project.sql

-Or open the file in a GUI client and execute it entirely.

## How to Use the Project

- The SQL script contains multiple queries that analyze different aspects of OLA ride data.

- Run each of the individual queries in the script to retrieve insights such as:

- All successful bookings

- Average ride distance by vehicle type

- Total cancelled rides by customers and drivers

- Top customers by number of rides

- Driver ratings for Prime Sedan

- Rides paid via UPI

- Average customer rating by vehicle type

- Total booking value of successful rides

- Details of incomplete rides with reasons

- You can copy the queries and run them one by one, or run the entire script to see all results.

## Tips

- Customize or enhance the queries to explore additional business questions.

- Make sure your MySQL user has permissions to create databases and run queries.

- If you add more data, rerun the queries for updated insights.

--- If you face any issues during setup or execution, verify that MySQL service is running and you have the correct credentials.
