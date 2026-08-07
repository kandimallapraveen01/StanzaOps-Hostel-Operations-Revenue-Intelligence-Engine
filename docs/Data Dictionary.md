Stanza Ops – Data Dictionary
1. Dataset Overview
Project: Stanza Ops – Hostel Operations & Revenue Intelligence Engine
Dataset: Hostel Management Dataset
Rows: 10,000
Columns: 43
Purpose:
This dataset contains resident, room, occupancy, payment, identification, and hostel management information used for operational analysis and dashboard reporting.
________________________________________
2. Column Definitions
Column	Description	Data Type	Example / Notes
Resident ID	Unique identifier for each resident	object	Unique resident ID
Resident name	Name of the resident	object	Resident name
Gender	Gender of the resident	object	Male / Female
Date of Birth	Date of birth of the resident	object	Date value
Mobile Number	Resident contact number	int64	10-digit contact number
Email	Resident email address	object	Email address
Aadhaar Number	Aadhaar reference field	int64	Sensitive identifier; not exposed in portfolio outputs
Company Name	Company or organisation associated with the resident	object	Company name
Employee ID	Employee identifier	object	Employee ID
Occupation	Occupation of the resident	object	Occupation
Check In Date	Date on which the resident checked into the hostel	object	Date value
Check Out Date	Date on which the resident checked out	float64	NULL for current records
Room Number	Room assigned to the resident	object	Room number
Bed Number	Bed assigned to the resident	object	Bed number
Room Type	Type/category of the assigned room	object	Room type
Floor	Floor on which the room is located	int64	Floor number
Monthly Rent	Monthly rent charged to the resident	int64	Monetary value
Deposit Amount	Security deposit amount	int64	Monetary value
Amount Paid	Amount paid by the resident	int64	Monetary value
Balance Amount	Remaining amount to be paid	int64	Monetary value
Payment Date	Date on which payment was recorded	object	Date value
Payment Method	Method used to make payment	object	Payment method
Payment Status	Current payment completion status	object	Paid / Partial
Occupancy Status	Current occupancy status	object	Occupied / Vacant
Resident Status	Current status of the resident	object	Active / Inactive
Emergency Contact	Emergency contact number	int64	Contact number
Parent Name	Name of parent or guardian	object	Parent/guardian name
Parent Contact	Parent or guardian contact number	int64	Contact number
Permanent Address	Permanent residential address	object	Address
City	City associated with the resident	object	Guntur
State	State associated with the resident	object	Andhra Pradesh
Pin code	Postal/pin code of the address	int64	Postal code
Nationality	Nationality of the resident	object	Nationality
Religion	Religion recorded for the resident	object	Dataset category
ID Proof Type	Type of identity proof recorded	object	ID proof type
Aadhaar Copy	Availability/reference of Aadhaar copy	object	Dataset indicator
Voter ID Copy	Availability/reference of voter ID copy	object	Dataset indicator
Joining Date	Date on which the resident joined	object	Date value
Exit Date	Date on which the resident exited	float64	NULL for current records
Bed Status	Current status of the assigned bed	object	Bed status
Room Capacity	Total number of beds  capacity in the room	int64	Capacity value
Available Beds	Number of currently available beds	int64	Bed count
Remarks	Additional notes related to the resident record	float64	NULL in current dataset
________________________________________
3. Missing Value Handling
The current dataset contains missing values in three columns:
Column	Missing Values	Handling
Check Out Date	10,000	Kept NULL because residents may still be active
Exit Date	10,000	Kept NULL because exit information is not available for current records
Remarks	10,000	Currently NULL in the loaded dataset
All other columns contain 0 missing values in the current dataset.
________________________________________
4. Data Quality Notes
•	Dataset contains 10,000 records and 43 columns.
•	Resident ID was checked for duplicate records.
•	Mobile Number was checked for duplicate values.
•	Date-related fields were reviewed during the cleaning process.
•	Categorical values such as Gender and Payment Status were standardised.
•	Check Out Date and Exit Date are allowed to remain NULL when the information is not applicable or not yet available.
•	Sensitive identification information should not be exposed in public portfolio outputs.
________________________________________
5. Business Usage
The dataset supports analysis of:
•	Resident demographics
•	Hostel occupancy
•	Room and bed allocation
•	Payment collection
•	Payment status
•	Revenue
•	Deposits
•	Monthly rent
•	Resident status
•	City and state distribution
•	Operational hostel performance
The data dictionary should be updated if the dataset schema changes in future versions.

