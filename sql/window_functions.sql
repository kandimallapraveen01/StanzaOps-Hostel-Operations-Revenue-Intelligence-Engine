USE stanzaops;
CREATE VIEW vw_occupancy_rate AS
SELECT
    COUNT(*) AS Total_Residents,
    SUM(CASE WHEN Occupancy_Status = 'Occupied' THEN 1 ELSE 0 END) AS Occupied_Rooms,
    ROUND(
        SUM(CASE WHEN Occupancy_Status = 'Occupied' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS Occupancy_Rate
FROM Hostel_Management;
SELECT * FROM vw_occupancy_rate;

CREATE VIEW vw_payment_summary AS
SELECT
    Payment_Status,
    COUNT(*) AS Total_Residents,
    SUM(Amount_Paid) AS Total_Amount_Paid,
    SUM(Balance_Amount) AS Total_Balance
FROM Hostel_Management
GROUP BY Payment_Status;
SELECT * FROM vw_payment_summary;

CREATE VIEW vw_revenue_by_state AS
SELECT
    State,
    SUM(Deposit_Amount) AS Total_Deposit,
    SUM(Amount_Paid) AS Total_Paid
FROM Hostel_Management
GROUP BY State;
SELECT * FROM vw_revenue_by_state;

CREATE VIEW vw_revenue_by_city AS
SELECT
    City,
    SUM(Deposit_Amount) AS Total_Deposit,
    SUM(Amount_Paid) AS Total_Paid
FROM Hostel_Management
GROUP BY City;
SELECT * FROM vw_revenue_by_city;

CREATE VIEW vw_gender_summary AS
SELECT
    Gender,
    COUNT(*) AS Total_Residents,
    AVG(Age) AS Average_Age,
    SUM(Amount_Paid) AS Total_Paid
FROM Hostel_Management
GROUP BY Gender;
SELECT * FROM vw_gender_summary;

SELECT
    Resident_ID,
    Resident_Name,
    Joining_Date,
    Amount_Paid,
    SUM(Amount_Paid) OVER (
        ORDER BY Joining_Date
    ) AS Running_Total
FROM Hostel_Management;
SELECT
    Resident_ID,
    Resident_Name,
    Date_of_Birth,
    Age,
    RANK() OVER (
        ORDER BY Age DESC
    ) AS Age_Rank
FROM Hostel_Management;
SELECT
    Resident_ID,
    Resident_Name,
    Age,
    DENSE_RANK() OVER (
        ORDER BY Age DESC
    ) AS Dense_Age_Rank
FROM Hostel_Management;
SELECT
    Resident_ID,
    Resident_Name,
    Joining_Date,
    ROW_NUMBER() OVER (
        ORDER BY Joining_Date
    ) AS Joining_Order
FROM Hostel_Management;

SELECT
    Resident_Name,
    Amount_Paid,
    IFNULL(
        LEAD(Amount_Paid) OVER (ORDER BY Joining_Date),
        0
    ) AS Next_Amount
FROM Hostel_Management;    

SELECT
    Resident_Name,
    Amount_Paid,
    IFNULL(
        LAG(Amount_Paid) OVER (ORDER BY Joining_Date),
        0
    ) AS Previous_Amount
FROM Hostel_Management;