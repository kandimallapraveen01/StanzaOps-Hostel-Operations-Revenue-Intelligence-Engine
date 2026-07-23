# Data Cleaning Plan v1

## Project
StanzaOps: Hostel Operations & Revenue Intelligence Engine

## Objective
Prepare the hostel management dataset for analysis by defining a consistent data cleaning strategy while preserving the original dataset.

---

## 1. Missing Values

Affected Columns:
- Exit_Date
- Remarks

Cleaning Plan:
- Keep missing values in `Exit_Date` because they indicate residents who are currently staying in the hostel.
- Replace missing values in `Remarks` with "No Remarks".

---

## 2. Duplicate Records

Columns to Check:
- Resident_ID
- Mobile_Number

Cleaning Plan:
- Remove duplicate `Resident_ID` records.
- Remove duplicate `Mobile_Number` records if they are invalid duplicates.

---

## 3. Data Type Fixes

Convert the following columns to Date format:
- Date_of_Birth
- Check_In_Date
- Payment_Date
- Joining_Date
- Exit_Date

Convert the following columns to Numeric format:
- Monthly_Rent
- Deposit_Amount
- Amount_Paid
- Balance_Amount
- Room_Capacity
- Available_Beds

---

## 4. Category Harmonisation

Standardize the following categories:

- Gender: Male, Female
- Payment_Status: Paid, Partial, Pending
- Occupancy_Status: Occupied, Vacant
- Resident_Status: Active, Exited
- Payment_Method: Cash, UPI, PhonePe, Google Pay, Bank Transfer

---

## Version

- **Version:** v1.0
- **Status:** Final
- **Prepared By:** Kandimalla Praveen Kumar
