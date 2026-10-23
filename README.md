# UPI Transaction Risk Analysis

## Project Overview

This project analyzes UPI transaction data to identify payment failures, examine fraud-flagged transactions, understand transaction patterns, and generate actionable insights using Python, SQL, MySQL, Excel, and Power BI.

The objective is to demonstrate an end-to-end data analytics workflow, from data preparation and exploratory analysis to SQL-based investigation and interactive dashboard reporting.

> **Data Disclaimer:** If using synthetic transaction-level data, the results are illustrative and do not represent actual customer transactions or confirmed financial fraud.

## Business Objectives

- Analyze total transaction volume and transaction value.
- Measure transaction failure rates and identify failure patterns.
- Examine fraud-flagged transactions and potential risk indicators.
- Compare transaction performance across banks, devices, merchant categories, and states.
- Analyze monthly trends and time-based transaction behavior.
- Develop data-driven recommendations to improve payment reliability and risk monitoring.

## Tools & Technologies

| Tool | Purpose |
|---|---|
| Python | Data preparation and analysis |
| Pandas | Data cleaning, transformation, and aggregation |
| Jupyter Notebook / VS Code | Analysis and development |
| Excel | Data inspection and cleaning |
| MySQL | Data storage and querying |
| SQL | Business analysis and KPI calculations |
| Power BI | Interactive dashboards and visualization |

## Project Workflow

1. **Data Collection:** Load the original transaction dataset.
2. **Data Cleaning:** Inspect missing values, data types, inconsistent values, and duplicate records.
3. **Exploratory Data Analysis:** Investigate transaction amounts, statuses, and behavioral patterns using Python and Pandas.
4. **SQL Analysis:** Analyze monthly trends, bank-level failures, transaction statuses, and fraud-flagged activity.
5. **Dashboard Development:** Present key metrics and trends through interactive Power BI reports.
6. **Risk Insights:** Translate analytical findings into recommendations for monitoring and further investigation.

## Dataset Information

The dataset contains transaction-level fields such as:

- Transaction ID and timestamp
- Transaction type and merchant category
- Transaction amount in INR
- Transaction status
- Sender and receiver age groups
- Sender state and sender/receiver banks
- Device type and network type
- Fraud flag
- Hour of day, day of week, and weekend indicator

The exact fields depend on the version of the dataset used in the analysis.

## Power BI Dashboard

The dashboard is organized into four analytical pages:

### 1. Overview
- Total transactions
- Failed transactions
- Fraud-flagged transactions
- Transaction failure rate
- Monthly transaction trends and transaction value

### 2. Failure Deep-Dive
- Failure patterns by bank
- Device and merchant-category analysis
- Time-based and state-level comparisons
- Failed transaction value

### 3. Fraud & Risk Analysis
- Fraud-flagged transaction counts and rates
- Analysis by bank, device, merchant category, and state
- Comparison of failure and fraud-flag rates

### 4. Recommendations
- Summary of key analytical findings
- Identification of areas requiring further investigation
- Suggested monitoring and payment-reliability improvements

*Dashboard figures and conclusions should be updated to match the final validated results.*

## Key Performance Indicators (KPIs)

- **Total Transactions:** Number of transaction records.
- **Failure Rate:** Failed transactions divided by total transactions.
- **Fraud-Flag Rate:** Transactions marked by the dataset's fraud flag divided by total transactions.
- **Total Transaction Value:** Sum of transaction amounts.
- **Failed Transaction Value:** Sum of amounts associated with failed transactions.
- **Average Flagged Transaction Amount:** Total value of fraud-flagged transactions divided by the number of flagged transactions.

A fraud flag indicates a record marked by the dataset, not independently confirmed fraud. Failed transaction value is not necessarily money lost.

## Business Recommendations

Depending on the validated findings, the analysis can support recommendations such as:

- Monitor banks and transaction categories with elevated failure rates.
- Investigate recurring device or network-related failure patterns.
- Review unusual transaction patterns for further risk assessment.
- Monitor changes in transaction volume and value over time.
- Track failure and fraud-flag rates regularly to identify emerging patterns.

These recommendations are analytical suggestions, not proof of causation or realized financial savings.

## Repository Structure

```text
UPI-Transaction-Risk-Analysis/
├── data/
│   ├── raw/
│   └── cleaned/
├── python/
│   └── analysis_notebook.ipynb
├── sql/
│   └── analysis_queries.sql
├── dashboard/
│   ├── UPI_Risk_Analysis.pbix
│   └── screenshots/
├── README.md
├── requirements.txt
└── .gitignore
```

*Adapt this structure to your existing filenames and folders; you do not need to recreate files just to match this example.*

## How to Run

1. Clone or download this repository.
2. Install the required Python libraries.
3. Open the existing Jupyter Notebook in Jupyter or VS Code.
4. Configure your MySQL connection using environment variables or local configuration.
5. Load the dataset and run the analysis cells in order.
6. Execute the SQL queries against your configured MySQL database.
7. Open the Power BI `.pbix` file in Power BI Desktop and configure the data source if necessary.

## Python Dependencies

Common libraries used in this workflow may include:

- pandas
- numpy
- sqlalchemy
- pymysql
- matplotlib
- seaborn
- openpyxl

Only include packages that your existing code actually uses in `requirements.txt`.

## Limitations

- Findings depend on the quality and completeness of the dataset.
- Synthetic data cannot establish real-world UPI fraud rates.
- Fraud flags are treated as indicators for analysis, not confirmed fraud cases.
- Observational patterns do not establish causation.
- Any estimated operational impact should be clearly labeled as a scenario rather than actual savings.

## Future Improvements

- Automate incremental Python-to-MySQL data loading.
- Add scheduled pipeline execution and logging.
- Expand data-quality and duplicate-ID validation.
- Add further risk indicators and anomaly analysis.
- Improve dashboard refresh and reporting workflows.

## Skills Demonstrated

Python · Pandas · SQL · MySQL · Excel · Power BI · Data Cleaning · Exploratory Data Analysis · KPI Development · Data Visualization · Risk Analytics · Business Recommendations

---

**Project:** UPI Transaction Risk Analysis  
**Purpose:** Data Analytics Portfolio Project
