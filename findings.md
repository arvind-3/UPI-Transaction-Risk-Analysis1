## Key Findings

Full analysis with charts and statistical tests: [`UPI_Insights_and_Analysis.ipynb`](UPI_Insights_and_Analysis.ipynb)

> **Data note:** the dataset is synthetic (Kaggle "UPI Transactions 2024", 250,000 transactions, Jan–Dec 2024). Results show the analysis method, not real UPI behaviour. A fraud flag is a dataset label, not confirmed fraud.

**Headline numbers:** 250,000 transactions worth ₹32.79 Cr. Failure rate 4.95%. Failed payments are ₹1.68 Cr (5.1% of value). 480 transactions (0.19%) are fraud-flagged.

| # | Insight | Evidence | Recommended action |
|---|---|---|---|
| 1 | Payments peak in the evening | 17:00–20:59 holds 31.3% of transactions; 03:00–04:59 holds about 0.5% per hour | Schedule maintenance for 03:00–05:00; size capacity and alerting for the evening |
| 2 | A few large payments carry the value | Top 10% of payments hold 43% of value; ₹10,000+ is 0.7% of transactions but 7.4% of value | Report and monitor reliability and risk by value, not only by count |
| 3 | Category rankings differ by count and value | Education is 3.0% of transactions but 11.8% of value; Transport is 8.0% but 1.9% | Prioritise reliability work by value at risk (Shopping, Utilities, Education) |
| 4 | Failures are not explained by any attribute | Failure rate is about 5% for every bank, device, network, category, state and age group; none of 20 tests is significant after Bonferroni correction | Do not rank banks on this data; collect failure reason codes |
| 5 | High-value payments are flagged slightly more | Fraud-flag rate 0.30% above ₹5,000 vs 0.19% below (33 cases, p = 0.013), but this does not survive correction for 20 tests | Pilot extra checks on high-value payments and validate on confirmed fraud labels |
| 6 | No trend or seasonality | About 680–690 transactions per day every month; failure rate 4.7%–5.4% | Compare with real NPCI monthly statistics |

**Limitations:** synthetic data; only 480 fraud-flagged cases; no failure reason codes, customer IDs or merchant IDs; many tests on one dataset, so results are read cautiously.
