# StanzaOps – Hostel Operations & Revenue Intelligence Engine

##  Project Overview

**StanzaOps** is a data analytics project designed to analyse hostel operations, resident information, room occupancy, bed allocation, and payment performance.

The project transforms hostel management data into structured insights using **Python, SQL, and Power BI**.

The goal is to help hostel management monitor operational performance, understand payment patterns, and make data-driven decisions.

---

## Business Problem

Traditional hostel management processes can make it difficult to:

* Track resident information efficiently
* Monitor room and bed occupancy
* Track payments and outstanding balances
* Analyse revenue and deposits
* Monitor resident status
* Identify operational trends
* Generate management-ready reports

StanzaOps provides a centralised analytics workflow to address these requirements.

---

##  Project Solution

The project follows a complete data analytics workflow:

**Raw Data → Data Cleaning → Exploratory Analysis → SQL Analysis → KPI Development → Power BI Dashboard → Business Insights**

The cleaned dataset contains **10,000 resident records and 43 columns** covering resident, room, occupancy, payment, and operational information.

---

## Key KPIs

| KPI                  |  Value | Description                              |
| -------------------- | -----: | ---------------------------------------- |
| Total Residents      | 10,000 | Total number of resident records         |
| Total Revenue        |   ₹70M | Total amount paid by residents           |
| Total Deposit        |  ₹100M | Total security deposit collected         |
| Payment Success Rate |    75% | Percentage of residents with Paid status |
| Occupancy Rate       |   100% | Percentage of occupied rooms             |
| Average Monthly Rent |    ₹8K | Average monthly rent per resident        |

---

##  Key Business Insights

* The dataset contains **10,000 resident records** across multiple cities and states.
* Total recorded payments amount to approximately **₹70 million**.
* Total recorded deposits amount to approximately **₹100 million**.
* **75% of residents** have a `Paid` payment status, while **25%** are classified as `Partial`.
* The reported occupancy rate is **100%**, indicating full occupancy in the analysed dataset.
* Average monthly rent is approximately **₹8,000**.
* Deposit values show no variation in the analysed dataset, limiting deposit-based outlier analysis.
* Payment amounts vary across resident segments and locations, providing opportunities for further operational analysis.

---

##  Data Cleaning

The dataset was reviewed and cleaned before analysis.

Major cleaning activities included:

* Duplicate validation using `Resident_ID`
* Duplicate validation using `Mobile_Number`
* Date field validation
* Standardisation of categorical values
* Payment status standardisation
* Missing-value analysis
* Outlier analysis for key numerical variables
* Data type validation

### Missing Values

The final analysed dataset contains missing values in:

* `Check_Out_Date`
* `Exit_Date`
* `Remarks`

`Check_Out_Date` and `Exit_Date` were retained as NULL where exit information was unavailable or not applicable.

---

##  Analysis Performed

### Exploratory Data Analysis

Analysis was performed on:

* Age
* Deposit Amount
* Amount Paid
* Gender
* City
* State
* Payment Status
* Resident Status

### Outlier Analysis

Outlier detection was performed using:

* IQR method
* Z-score method

Key findings included:

* No significant age outliers were detected.
* Deposit amount showed no variation in the analysed dataset.
* Payment amounts showed limited variation associated with payment categories.

---

##  SQL Analysis

SQL was used for:

* Aggregations
* KPI calculations
* Payment analysis
* Occupancy analysis
* Gender-wise analysis
* City-wise analysis
* State-wise analysis
* Revenue and deposit analysis
* SQL views for reporting

---

##  Power BI Dashboard

Power BI was used to create a management-oriented dashboard containing KPI cards and analytical visualisations.

### Dashboard KPIs

* Total Residents
* Total Revenue
* Total Deposit
* Payment Success Rate
* Occupancy Rate
* Average Monthly Rent

The dashboard is designed to provide a quick overview of hostel operational and financial performance.

---

##  Tools & Technologies

| Tool / Technology | Purpose                         |
| ----------------- | ------------------------------- |
| Python            | Data cleaning, EDA and analysis |
| Pandas            | Data manipulation               |
| NumPy             | Numerical analysis              |
| SQL / MySQL       | Data querying and KPI analysis  |
| Power BI          | Dashboard and visualisation     |
| Jupyter Notebook  | Python analysis                 |
| Git & GitHub      | Version control and portfolio   |
| Markdown          | Project documentation           |

---

##  Project Structure

```text
StanzaOps/
│
├── data/
│   ├── raw/
│   └── processed/
│
├── dashboard/
│   └── PowerBI dashboard files
│
├── docs/
│   ├── Data_Dictionary.md
│   └── Dashboard_Documentation.md
│
├── notebooks/
│   └── Python analysis notebooks
│
├── sql/
│   └── SQL scripts and KPI queries
│
└── README.md
```

---

##  Documentation

Project documentation includes:

* [Data Dictionary](docs/Data_Dictionary.md)
* Dashboard documentation
* Data cleaning documentation
* SQL analysis
* Python analysis notebooks

---

##  Data Privacy

The dataset contains fields representing personal and identification information.

Sensitive information such as Aadhaar details, contact information, and other personally identifiable information should not be exposed in public portfolio outputs.

Only anonymised or appropriate project data should be published to GitHub.

---

##  Project Outcome

StanzaOps demonstrates an end-to-end **Data Analytics workflow**, from data preparation and quality validation to SQL analysis, KPI development, dashboard creation, and business recommendations.

The project can support hostel management in monitoring:

* Occupancy
* Revenue
* Payments
* Deposits
* Resident status
* Room and bed allocation
* Operational performance

---

##  Author

**Praveen Kumar**

**Skills:** Python | SQL | Data Analysis | Power BI

**Project:** StanzaOps – Hostel Operations & Revenue Intelligence Engine
