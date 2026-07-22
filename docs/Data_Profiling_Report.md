# Data Profiling Report

## Project
StanzaOps: Hostel Operations & Revenue Intelligence Engine

## Dataset
Hostel_Management_Dataset_Filled.csv

## 1. Data Type Validation
- Converted Date_of_Birth, Check_In_Date, Payment_Date, and Joining_Date to datetime format.
- Verified numeric columns have appropriate integer data types.
- No data type inconsistencies were found after conversion.

## 2. Invalid / Out-of-Range Value Validation
- Age was calculated from Date_of_Birth and validated within the range of 0–100 years.
- Invalid Age Records: 0
- Invalid Deposit_Amount Records: 0
- Invalid Amount_Paid Records: 0
- No out-of-range values were detected.

## 3. Category Validation
- Gender categories are consistent (Male, Female).
- City names are consistently formatted.
- State names are consistently formatted.
- No inconsistent categorical values were detected.

## Conclusion
The dataset was successfully profiled and validated. No major data quality issues were identified. The cleaned dataset is suitable for exploratory data analysis, SQL analysis, dashboard development, and reporting.
