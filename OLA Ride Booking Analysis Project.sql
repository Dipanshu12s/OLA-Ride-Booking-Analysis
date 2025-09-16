create database ola;
use ola;

select * from bookings;

 # Retrieve all successful bookings
 select * from bookings
 where Booking_status="Success";
 
 # Find the average ride distance for each vehicle type
 select Vehicle_type type,avg(Ride_Distance) as Average_Ride_Distance
 from bookings
 group by vehicle_type;
 
 
  # Get the total no. of cancellled rides by customers
  select count(Canceled_Rides_by_Customer) as Total_Cancelled_Rides from bookings;
  
  
  # List the top 5 customers who booked the highest number of rides
  select customer_id,count(booking_id) as Total_Booking
  from bookings
  group by customer_id
  order by total_booking desc limit 3 ;
  
  # Get the number of rides cancelled by drivers due to personal and car-related issues
  select count(Canceled_Rides_by_Driver) as Total_Cancelled_Rides
  from bookings
  where Canceled_Rides_by_Driver="Personal & Car related issue";
  
  
  # Find the maximum and minimum driver rating for Prime Sedan Booings
  select Max(Driver_ratings) As Maximum_Rating, Min(Driver_ratings) as Minimum_Rating
  from bookings
  where Vehicle_type="Prime sedan";
  
  
  # Retrieve all rides where payment was made using UPI
  select * from bookings 
  where payment_method="UPI";
  
  # Find the average customer rating per vehicle type
  select Vehicle_type,avg(customer_rating) as Average_Customer_Rating
  from bookings
  group by Vehicle_type;
  
  # Calculate the total booking value of rides completed successfully
  select sum(Booking_value) as Total_Booking_Value 
  from bookings 
  where Booking_status="Success";
  
  
  # List all incomplete rides along with the reason
  select Booking_id,incomplete_rides, Incomplete_Rides_Reason
  from bookings
  where incomplete_rides="Yes" ;
  
