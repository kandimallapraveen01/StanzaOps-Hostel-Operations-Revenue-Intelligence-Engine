SELECT COUNT(*) AS Total_Records
FROM Hostel_Management;

SELECT *
FROM Hostel_Management
LIMIT 5;

SELECT DISTINCT Gender
FROM Hostel_Management;

SELECT DISTINCT City
FROM Hostel_Management
ORDER BY City;

SELECT DISTINCT State
FROM Hostel_Management
ORDER BY State;

SELECT DISTINCT City
FROM Hostel_Management;

SELECT DISTINCT State
FROM Hostel_Management;

SELECT Mobile_Number, COUNT(*) AS Duplicate_Count
FROM Hostel_Management
GROUP BY Mobile_Number
HAVING COUNT(*) > 1;