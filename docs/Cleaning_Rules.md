# Cleaning Rules

## Project
StanzaOps: Hostel Operations & Revenue Intelligence Engine

## Purpose
This document defines the keep, drop, and impute rules for all affected columns in the hostel management dataset.

| Column Name | Issue | Rule | Reason |
|-------------|-------|------|--------|
| Exit_Date | Missing Values | Keep NULL | Resident is still staying in the hostel |
| Remarks | Missing Values | Replace with "No Remarks" | Optional field |
| Resident_ID | Duplicate Records | Drop duplicate records | Resident_ID must be unique |
| Mobile_Number | Duplicate Records | Drop duplicate records | One mobile number per resident |
| Date_of_Birth | Incorrect Data Type | Convert to datetime | Required for date analysis |
| Check_In_Date | Incorrect Data Type | Convert to datetime | Required for date analysis |
| Payment_Date | Incorrect Data Type | Convert to datetime | Required for date analysis |
| Joining_Date | Incorrect Data Type | Convert to datetime | Required for date analysis |
| Exit_Date | Incorrect Data Type | Convert to datetime | Required for date analysis |
| Gender | Inconsistent Categories | Standardize to Male/Female | Ensure consistency |
| Payment_Status | Inconsistent Categories | Standardize to Paid/Partial/Pending | Ensure consistency |
| Occupancy_Status | Inconsistent Categories | Standardize to Occupied/Vacant | Ensure consistency |
| Resident_Status | Inconsistent Categories | Standardize to Active/Exited | Ensure consistency |
| Payment_Method | Inconsistent Categories | Standardize payment method names | Ensure consistency |

## Version

- **Cleaning Rules Version:** v1.0
- **Status:** Final
- **Prepared By:** Kandimalla Praveen Kumar
- **Project:** StanzaOps: Hostel Operations & Revenue Intelligence Engine
