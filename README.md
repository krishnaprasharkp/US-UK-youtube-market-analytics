US-UK YouTube Market Analytics — SQL Queries

Cross-market analysis of 15,987+ trending YouTube videos (US and UK) using Google BigQuery. Live dashboard: Looker Studio Report

Overview

This project analyzes trending video data across two markets to compare content performance (views), audience engagement (like rate), and audience sentiment (dislike rate) across 15 video categories.

Dataset
Source: YouTube Trending Video Statistics (Kaggle)
Tables: us_videos (7,992 rows after cleaning), gb_videos (7,995 rows after cleaning)
Loaded into Google BigQuery with custom schema handling for malformed CSV rows
Files
01_data_cleaning_checks.sql — duplicate and null-value checks performed before analysis
02_category_views_analysis.sql — average views and like rate by category (US)
03_engagement_rate_analysis.sql — like rate calculation with category mapping
04_dislike_rate_analysis.sql — dislike/controversy rate by category (US)
Key Findings
The UK's top category (Music) generated 46% higher total views than the US's top category (Entertainment)
News & Politics was the most polarizing category in both markets: 19.5% dislike rate in the US vs. 11.5% in the UK
Caught and corrected a SUM-vs-AVERAGE aggregation discrepancy during dashboard validation, affecting small-sample categories (e.g., Nonprofits & Activism)
