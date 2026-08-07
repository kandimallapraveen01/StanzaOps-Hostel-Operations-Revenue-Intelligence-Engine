# Data Cleaning Log

## Dataset Information

**Project Name:**  
StanzaOps: Hostel Operations & Revenue Intelligence Engine

**Dataset Name:**  
Hostel_Management_Dataset.csv

**Original Dataset Size:**

- Rows: 10,000
- Columns: 43


---

# Data Cleaning Activities

## 1. Missing Value Handling

### Check_Out_Date

**Issue:**
- Check_Out_Date column contained NULL values for all active residents.

**Action Taken:**
- NULL values were retained.

**Reason:**
- Active residents do not have an exit date until they leave the hostel.


### Remarks

**Issue:**
- Remarks column contained missing values.

**Action Taken:**
- Replaced missing values with "No Remarks".

**Reason:**
- Maintains consistency and avoids empty records.


---

## 2. Duplicate Record Handling

**Duplicate Checks Performed:**

| Column | Result |
|---|---|
| Resident_ID | No duplicates found |
| Mobile_Number | No duplicates found |

**Action Taken:**
- No duplicate records were removed.


---

## 3. Data Type Conversion

The following columns were converted into proper date format:

- Date_of_Birth
- Check_In_Date
- Payment_Date
- Joining_Date

**Reason:**
- Enables accurate date-based analysis and reporting.


---

## 4. Data Standardization

### Gender

**Before:**
- Inconsistent category formats

**After:**
- Male
- Female


### Payment_Status

**Before:**
- Multiple formats

**After:**
- Paid
- Partial


---

## 5. Data Validation After Cleaning

Final Dataset Status:

- Rows: 10,000
- Columns: 43

Quality Checks:

✅ No duplicate Resident_ID values  
✅ No duplicate Mobile_Number values  
✅ Date columns converted successfully  
✅ Missing remarks handled  
✅ Categorical values standardized  


---

# Cleaning Summary

| Cleaning Activity | Status |
|---|---|
| Missing value handling | Completed |
| Duplicate check | Completed |
| Date conversion | Completed |
| Data standardization | Completed |
| Data validation | Completed |