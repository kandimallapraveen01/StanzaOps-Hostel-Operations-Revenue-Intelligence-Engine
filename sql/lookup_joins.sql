SHOW TABLES;
SELECT
    Resident_ID,
    Resident_Name,
    Gender,
    City,
    State
FROM Hostel_Management;

CREATE TABLE Gender_Lookup (
    Gender_ID INT PRIMARY KEY,
    Gender_Name VARCHAR(20)
);

INSERT INTO Gender_Lookup VALUES
(1,'Male'),
(2,'Female');
SELECT
    hm.Resident_ID,
    hm.Resident_Name,
    gl.Gender_Name
FROM Hostel_Management hm
JOIN Gender_Lookup gl
ON hm.Gender = gl.Gender_ID;
SELECT DISTINCT Gender
FROM Hostel_Management;
CREATE TABLE City_Lookup (
    City_ID INT PRIMARY KEY,
    City_Name VARCHAR(50)
);
INSERT INTO City_Lookup VALUES
(1,'Vijayawada'),
(2,'Hyderabad'),
(3,'Guntur'),
(4,'Chennai');
CREATE TABLE State_Lookup (
    State_ID INT PRIMARY KEY,
    State_Name VARCHAR(50)
);
INSERT INTO State_Lookup VALUES
(1,'Andhra Pradesh'),
(2,'Telangana'),
(3,'Tamil Nadu');
SELECT
    hm.Resident_ID,
    hm.Resident_Name,
    cl.City_Name,
    sl.State_Name
FROM Hostel_Management hm
JOIN City_Lookup cl
ON hm.City = cl.City_Name
JOIN State_Lookup sl
ON hm.State = sl.State_Name;
SELECT
    Gender,
    COUNT(*) AS Total_Residents,
    AVG(Age) AS Average_Age,
    SUM(Deposit_Amount) AS Total_Deposit,
    SUM(Amount_Paid) AS Total_Amount_Paid
FROM Hostel_Management
GROUP BY Gender;
SELECT
    SUM(Deposit_Amount) AS Total_Deposit,
    SUM(Amount_Paid) AS Total_Amount_Paid
FROM Hostel_Management;
SELECT
    hm.Resident_ID,
    hm.Resident_Name,
    gl.Gender_Name
FROM Hostel_Management hm
JOIN Gender_Lookup gl
ON hm.Gender = gl.Gender_ID;
SELECT
    hm.Resident_ID,
    hm.Resident_Name,
    gl.Gender_Name
FROM Hostel_Management hm
JOIN Gender_Lookup gl
ON hm.Gender = gl.Gender_Name;
SELECT
    hm.Resident_ID,
    hm.Resident_Name,
    gl.Gender_Name,
    cl.City_Name,
    sl.State_Name
FROM Hostel_Management hm
JOIN Gender_Lookup gl
ON hm.Gender = gl.Gender_Name
JOIN City_Lookup cl
ON hm.City = cl.City_Name
JOIN State_Lookup sl
ON hm.State = sl.State_Name;
SELECT
    City,
    COUNT(*) AS Total_Residents,
    AVG(Age) AS Average_Age,
    SUM(Deposit_Amount) AS Total_Deposit,
    SUM(Amount_Paid) AS Total_Amount_Paid
FROM Hostel_Management
GROUP BY City
ORDER BY City;
SELECT
    State,
    COUNT(*) AS Total_Residents,
    AVG(Age) AS Average_Age,
    SUM(Deposit_Amount) AS Total_Deposit,
    SUM(Amount_Paid) AS Total_Amount_Paid
FROM Hostel_Management
GROUP BY State
ORDER BY State;
SELECT COUNT(*) AS Total_Residents
FROM Hostel_Management;
SELECT
    SUM(Amount_Paid) AS Total_Revenue
FROM Hostel_Management;
SELECT
    SUM(Deposit_Amount) AS Total_Deposit
FROM Hostel_Management;
SELECT
    SUM(Balance_Amount) AS Outstanding_Balance
FROM Hostel_Management;
SELECT
    ROUND(AVG(Age), 2) AS Average_Age
FROM Hostel_Management;
SELECT
    COUNT(*) AS Occupied_Beds
FROM Hostel_Management
WHERE Bed_Status = 'Occupied';
SELECT
    COUNT(*) AS Available_Beds
FROM Hostel_Management
WHERE Bed_Status = 'Available';
SELECT
ROUND(
    COUNT(CASE WHEN Bed_Status = 'Occupied' THEN 1 END) * 100.0 /
    COUNT(*),
2) AS Occupancy_Rate
FROM Hostel_Management;
SELECT
    Payment_Status,
    COUNT(*) AS Total_Residents
FROM Hostel_Management
GROUP BY Payment_Status;
SELECT
    City,
    SUM(Amount_Paid) AS Total_Revenue
FROM Hostel_Management
GROUP BY City
ORDER BY Total_Revenue DESC;
SELECT
    State,
    SUM(Amount_Paid) AS Total_Revenue
FROM Hostel_Management
GROUP BY State
ORDER BY Total_Revenue DESC;