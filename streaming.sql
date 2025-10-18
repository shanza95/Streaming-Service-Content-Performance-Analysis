create database streaming;
use streaming;

# after creating a connection with pandas through Python script, we imported the tables dataset using SQLAlchemy and to_sql() function.

## Q1: Top-watched genres by region
SELECT 
    Region_Availability,
    Genre,
    COUNT(*) AS Total_Watches
FROM content_library
GROUP BY Region_Availability, Genre
ORDER BY Region_Availability, Total_Watches DESC
LIMIT 10;


## Q2: Viewer retention analysis
# Viewer Retention Analysis is the process of measuring how long viewers stay engaged with a piece of content (like a video, movie, or episode) over time -- 
# and where they drop off.

SELECT 
    c.Genre,
    AVG(u.Watch_Time_Minutes) AS Avg_Watch_Time
FROM user_viewing_data AS u
JOIN content_library AS c
    ON u.Content_ID = c.Content_ID
GROUP BY c.Genre
ORDER BY Avg_Watch_Time DESC;

## Q3: Monthly subscriber growth

SELECT
    DATE_FORMAT(Start_Date, '%d-%m-%Y') AS Month,
    COUNT(Subscription_ID) AS New_Subscribers
FROM subscription_data
GROUP BY Month
ORDER BY Month DESC;





