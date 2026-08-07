# StanzaOps – Data Dictionary

## Dataset Overview

- Project: StanzaOps – Hostel Operations & Revenue Intelligence Engine
- Records: 10,000 residents
- Columns: 43
- Domain: Hostel Operations and Revenue Management

## Resident Information

| Column | Description |
|---|---|
| Resident_ID | Unique identifier for each resident |
| Resident_Name | Name of the resident |
| Gender | Gender of the resident |
| Date_of_Birth | Resident's date of birth |
| Mobile_Number | Resident's contact number |
| Email | Resident's email address |
| Aadhaar_Number | Aadhaar reference field; sensitive number should not be stored |
| Company_Name | Resident's company/organization |
| Employee_ID | Employee identifier |
| Occupation | Resident's occupation |

## Stay and Room Information

| Column | Description |
|---|---|
| Check_In_Date | Date resident checked into the hostel |
| Check_Out_Date | Date resident checked out |
| Room_Number | Assigned room number |
| Bed_Number | Assigned bed number |
| Room_Type | Type/category of room |
| Floor | Hostel floor |
| Monthly_Rent | Monthly rent charged |
| Occupancy_Status | Current room occupancy status |
| Resident_Status | Current resident status |
| Bed_Status | Current bed status |
| Room_Capacity | Total capacity of the room |
| Available_Beds | Number of available beds |

## Payment Information

| Column | Description |
|---|---|
| Deposit_Amount | Security deposit collected |
| Amount_Paid | Amount paid by resident |
| Balance_Amount | Remaining amount payable |
| Payment_Date | Date of payment |
| Payment_Method | Method used for payment |
| Payment_Status | Payment completion status |

## Emergency and Family Information

| Column | Description |
|---|---|
| Emergency_Contact | Emergency contact number |
| Parent_Name | Parent/guardian name |
| Parent_Contact | Parent/guardian contact number |
| Permanent_Address | Resident's permanent address |

## Location and Identity Information

| Column | Description |
|---|---|
| City | Resident's city |
| State | Resident's state |
| Pincode | Postal code |
| Nationality | Resident's nationality |
| Religion | Resident's religion |
| ID_Proof_Type | Type of identity proof |

## Document Information

| Column | Description |
|---|---|
| Aadhaar_Copy | Indicates availability/reference of Aadhaar document |
| Voter_ID_Copy | Indicates availability/reference of voter ID document |

## Date and Exit Information

| Column | Description |
|---|---|
| Joining_Date | Date resident joined |
| Exit_Date | Date resident exited |
| Remarks | Additional operational remarks |