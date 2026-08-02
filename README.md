# US–UK YouTube Market Analytics

Cross-market analysis of **15,987+ trending YouTube videos** from the **United States** and **United Kingdom** using **Google BigQuery (SQL)**, with an interactive dashboard built in **Looker Studio**.

**Live Dashboard:** *(Add your public Looker Studio link here)*

---

# Overview

This project analyzes YouTube trending video data across the US and UK markets to compare:

* Content popularity (Views)
* Audience engagement (Like Rate)
* Audience sentiment (Dislike Rate)
* Performance across 15 video categories

The analysis was performed using **Google BigQuery (SQL)**, and the results were visualized in **Looker Studio**.

---

# Tech Stack

* Google BigQuery
* SQL
* Looker Studio
* Google Cloud Platform
* Kaggle Dataset

---

# Dataset

**Source:** YouTube Trending Video Statistics (Kaggle)

| Table     |    Records |
| --------- | ---------: |
| us_videos |      7,992 |
| gb_videos |      7,995 |
| **Total** | **15,987** |

Before analysis, the dataset was cleaned by:

* Removing duplicate records
* Handling malformed CSV rows
* Validating null values
* Applying a custom BigQuery schema

---

# Repository Structure

```text
├── sql/
│   ├── 01_data_cleaning_checks.sql
│   ├── 02_category_views_analysis.sql
│   ├── 03_engagement_rate_analysis.sql
│   └── 04_dislike_rate_analysis.sql
│
├── dashboard/
│   └── looker_dashboard_screenshots/
│
├── images/
│
└── README.md
```

---

# Business Questions

This project answers the following questions:

- Which video categories receive the highest average views in the US and UK?
- Which categories generate the highest audience engagement?
- Which content categories attract the highest audience negativity?
- How do user preferences differ between the US and UK markets?
- What insights can content creators and marketers derive from these trends?

---


# Analysis Performed

## 1. Data Quality Validation

* Duplicate record detection
* Null-value validation
* Data consistency checks

## 2. Category Performance Analysis

Compared video performance across all categories using:

* Average Views
* Total Views
* Video Count

## 3. Audience Engagement Analysis

Calculated engagement using:

```sql
Like Rate = (Likes / Views) × 100
```

Compared engagement across categories and between markets.

## 4. Audience Sentiment Analysis

Calculated audience sentiment using:

```sql
Dislike Rate = (Dislikes / Views) × 100
```

Used to identify the most controversial content categories.

---

# Dashboard

The interactive Looker Studio dashboard includes:

* US vs UK market comparison
* Category-wise views
* Like rate by category
* Dislike rate by category
* Interactive filters
* Comparative visualizations

*(Insert dashboard screenshots here.)*

---

# Key Insights

### Higher Viewership in the UK Music Category

The **Music** category in the UK generated **46% higher total views** than the highest-performing US category (**Entertainment**).

### Most Polarizing Category

**News & Politics** recorded the highest audience negativity in both markets.

| Market | Dislike Rate |
| ------ | -----------: |
| US     |    **19.5%** |
| UK     |    **11.5%** |

### Data Validation

During dashboard validation, a **SUM vs. AVERAGE aggregation discrepancy** was identified and corrected. The issue primarily affected categories with smaller sample sizes, such as **Nonprofits & Activism**, ensuring accurate dashboard reporting.

---

# Skills Demonstrated

* SQL
* Google BigQuery
* Data Cleaning
* Data Validation
* Exploratory Data Analysis (EDA)
* Data Aggregation
* KPI Development
* Dashboard Development
* Data Visualization
* Cross-Market Comparative Analysis
* Business Insight Generation

---

# Future Improvements

* Add time-series trend analysis
* Perform sentiment analysis on video titles
* Build predictive models for trending probability
* Automate data refresh using scheduled BigQuery queries
* Expand the analysis to additional countries

---

# Contact

If you have any questions or feedback about this project, feel free to connect with me on LinkedIn or explore my other repositories.
