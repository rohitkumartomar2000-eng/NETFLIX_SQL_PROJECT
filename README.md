# Netflix - Movies - Tv Shows - Data Analysis - SQL

![Netflix Logo](https://github.com/rohitkumartomar2000-eng/NETFLIX_SQL_PROJECT/blob/main/BrandAssets_Logos_01-Wordmark.jpg)

# Netflix Content Analysis using SQL

## Project Summary

This project presents a comprehensive SQL-based analysis of the Netflix Movies and TV Shows dataset. The objective is to explore Netflix's content library by solving real-world business problems using PostgreSQL.

The analysis covers content distribution, audience ratings, geographical insights, release trends, genre analysis, actor and director exploration, and keyword-based content classification.

This project demonstrates practical SQL techniques used by Data Analysts and Business Intelligence professionals for data exploration and reporting.

---

## Project Objectives

The primary objectives of this project are to:

- Analyze the distribution of Movies and TV Shows.
- Identify the most common content ratings.
- Examine country-wise content production.
- Analyze yearly content release trends.
- Identify the longest movies and longest-running TV shows.
- Explore content by directors, actors, and genres.
- Detect missing information within the dataset.
- Perform keyword-based content classification using SQL.

---

## Dataset Information

**Dataset:** Netflix Movies and TV Shows

The dataset contains metadata for Netflix titles, including:

| Column | Description |
|---------|-------------|
| show_id | Unique identifier |
| type | Movie or TV Show |
| title | Title of the content |
| director | Director name |
| casts | Cast members |
| country | Country of production |
| date_added | Date added to Netflix |
| release_year | Original release year |
| rating | Audience rating |
| duration | Movie duration / TV seasons |
| listed_in | Genre |
| description | Content description |

---

# Database Schema

```sql
-- Your schema exactly as written
```

---

# Business Problems & Solutions

## 1. Count the Number of Movies vs TV Shows

### Business Requirement

Determine the distribution of Movies and TV Shows available on Netflix.

```sql
-- Your Query
```

---

## 2. Find the Most Common Rating for Movies and TV Shows

### Business Requirement

Identify the most frequently occurring content rating for each content type.

```sql
-- Your Query
```

---

## 3. List Movies Released in 2020

### Business Requirement

Retrieve all movies released during the year 2020.

```sql
-- Your Query
```

---

## 4. Top 5 Countries by Content Count

### Business Requirement

Identify the five countries contributing the highest number of titles.

```sql
-- Your Query
```

---

## 5. Identify the Longest Movie

### Business Requirement

Retrieve the movie with the maximum duration.

```sql
-- Your Query
```

---

## 6. Find Content Added During the Last Five Years

### Business Requirement

Identify recently added content available on Netflix.

```sql
-- Your Query
```

---

## 7. Find Content Directed by Rajiv Chilaka

### Business Requirement

Retrieve every Movie and TV Show directed by Rajiv Chilaka.

```sql
-- Your Query
```

---

## 8. Find TV Shows with More Than Five Seasons

### Business Requirement

Identify long-running TV Shows available on Netflix.

```sql
-- Your Query
```

---

## 9. Count Content by Genre

### Business Requirement

Calculate the total number of titles available in each genre.

```sql
-- Your Query
```

---

## 10. Analyze Netflix Content Released by India

### Business Requirement

Determine the years with the highest percentage of Netflix content released by India.

```sql
-- Your Query
```

---

## 11. Find Documentary Movies

### Business Requirement

Retrieve all documentary movies available in the dataset.

```sql
-- Your Query
```

---

## 12. Identify Content Without Director Information

### Business Requirement

Detect records where director information is unavailable.

```sql
-- Your Query
```

---

## 13. Find Salman Khan Movies Released During the Last 10 Years

### Business Requirement

Retrieve Netflix titles featuring Salman Khan released within the last decade.

```sql
-- Your Query
```

---

## 14. Top 10 Actors Appearing in Indian Content

### Business Requirement

Identify actors with the highest number of appearances in Indian-produced Netflix titles.

```sql
-- Your Query
```

---

## 15. Categorize Content Based on Keywords

### Business Requirement

Classify content as **Good Content** or **Bad Content** depending on whether the description contains the keywords **Kill** or **Violence**.

```sql
-- Your Query
```

---

# SQL Techniques Demonstrated

- Aggregate Functions
- GROUP BY
- ORDER BY
- Common Table Expressions (CTEs)
- Window Functions
- RANK()
- CASE Expressions
- Subqueries
- Date Functions
- String Functions
- Pattern Matching
- Data Transformation
- Data Cleaning

---

# Key Business Insights

- Movies account for the majority of Netflix's catalog.
- Content ratings vary significantly between Movies and TV Shows.
- The United States and India contribute a substantial portion of Netflix content.
- Drama and International Movies represent the most common genres.
- Several records contain missing director information, highlighting data quality issues.
- Keyword-based classification enables basic content moderation analysis.
- Actor analysis identifies the most frequently appearing performers in Indian productions.

---

# Tools & Technologies

- PostgreSQL
- SQL
- pgAdmin 4
- Kaggle Dataset

---

# Repository Structure

```
Netflix-SQL-Analysis
│
├── netflix.csv
├── netflix_project.sql
└── README.md
```

---

# Skills Demonstrated

- SQL Programming
- Data Exploration
- Business Analysis
- Exploratory Data Analysis (EDA)
- Query Optimization
- Data Cleaning
- Window Functions
- Common Table Expressions (CTEs)
- Reporting & Analytics

---

# Conclusion

This project demonstrates the application of SQL to solve practical business problems using a real-world dataset. It highlights proficiency in querying, transforming, and analyzing structured data while generating actionable business insights.

The techniques implemented in this project closely align with tasks performed by **Data Analysts, Business Analysts, MIS Executives, Reporting Analysts, and SQL Developers**, making it a strong addition to a professional data analytics portfolio.
