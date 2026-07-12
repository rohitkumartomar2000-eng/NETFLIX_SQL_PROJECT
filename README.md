# Netflix - Movies - Tv Shows - Data Analysis - SQL

![Netflix Logo](https://github.com/rohitkumartomar2000-eng/NETFLIX_SQL_PROJECT/blob/main/BrandAssets_Logos_01-Wordmark.jpg)


# Netflix Content Analysis Using SQL

## Project Overview

This project performs an end-to-end SQL analysis of the Netflix Movies and TV Shows dataset to generate actionable business insights. The analysis covers content distribution, audience ratings, geographical trends, release patterns, genre analysis, and content classification.

The project demonstrates the practical application of SQL for data exploration and business intelligence by solving real-world analytical questions commonly encountered in Data Analyst and Business Intelligence roles.

---

## Business Objective

The objective of this project is to analyze Netflix's content library and answer business-driven questions such as:

- What is the distribution of Movies and TV Shows?
- Which content ratings appear most frequently?
- Which countries contribute the most content?
- How has Netflix content evolved over time?
- Which actors and directors appear most frequently?
- What genres dominate the platform?
- Can content be classified using textual descriptions?

---

## Dataset

**Source:** Kaggle – Netflix Movies and TV Shows Dataset

The dataset contains information about Netflix titles, including:

- Show ID
- Content Type
- Title
- Director
- Cast
- Country
- Date Added
- Release Year
- Rating
- Duration
- Genre
- Description

---

## Database Schema

```sql
CREATE TABLE netflix
(
    show_id      VARCHAR(8),
    type         VARCHAR(10),
    title        VARCHAR(150),
    director     VARCHAR(208),
    casts        VARCHAR(1000),
    country      VARCHAR(150),
    date_added   VARCHAR(50),
    release_year INT,
    rating       VARCHAR(10),
    duration     VARCHAR(15),
    listed_in    VARCHAR(100),
    description  VARCHAR(250)
);
```

---

# Business Questions Solved

The project addresses the following analytical questions:

### 1. Content Distribution

- Count the total number of Movies and TV Shows available on Netflix.

### 2. Rating Analysis

- Determine the most common content rating for both Movies and TV Shows.

### 3. Release Year Analysis

- Retrieve all movies released in a specified year.

### 4. Country Analysis

- Identify the top five countries contributing the highest number of titles.

### 5. Duration Analysis

- Find the longest movie available on Netflix.

### 6. Recent Content Analysis

- Retrieve content added to Netflix during the last five years.

### 7. Director Analysis

- List all Movies and TV Shows directed by **Rajiv Chilaka**.

### 8. TV Show Analysis

- Identify TV Shows with more than five seasons.

### 9. Genre Analysis

- Count the number of titles available within each genre.

### 10. India Content Trend Analysis

- Calculate yearly content releases in India and identify the top five years with the highest contribution.

### 11. Documentary Analysis

- Retrieve all documentary movies.

### 12. Data Quality Analysis

- Identify titles with missing director information.

### 13. Actor Analysis

- Count Salman Khan's Netflix appearances during the last ten years.

### 14. Top Actors Analysis

- Identify the ten actors appearing most frequently in Indian Netflix content.

### 15. Content Classification

- Categorize titles as **Good** or **Bad** based on the presence of keywords such as **Kill** and **Violence** in the description.

---

# SQL Skills Demonstrated

This project utilizes a wide range of SQL concepts, including:

- Data Filtering
- Aggregate Functions
- GROUP BY
- ORDER BY
- CASE Statements
- Common Table Expressions (CTEs)
- Window Functions
- Ranking Functions
- Date Functions
- String Functions
- Data Cleaning
- Text Processing
- Multi-level Aggregation

---

# Key Insights

The analysis produced several meaningful business insights, including:

- Movies constitute the majority of Netflix's content library.
- Certain maturity ratings dominate specific content types.
- The United States and India contribute a significant share of Netflix content.
- Netflix has consistently expanded its content library over recent years.
- Drama and International Movies are among the most common genres.
- Several records contain incomplete metadata, particularly missing director information.
- Keyword-based classification provides a simple approach for identifying potentially sensitive content.

---

# Technologies Used

- SQL
- PostgreSQL
- pgAdmin
- Kaggle Dataset

---

# Project Structure

```
Netflix-SQL-Analysis/
│
├── Netflix_Dataset.csv
├── Netflix_SQL_Project.sql
└── README.md
```

---

# Learning Outcomes

Through this project, I strengthened my understanding of:

- Writing efficient SQL queries
- Solving real-world business problems using SQL
- Data exploration and exploratory data analysis (EDA)
- Window Functions and Common Table Expressions (CTEs)
- Working with textual and date-based datasets
- Converting raw data into meaningful business insights

---

# Conclusion

This project demonstrates how SQL can be leveraged to perform comprehensive exploratory data analysis and generate business insights from real-world datasets. By applying advanced SQL techniques such as Window Functions, Common Table Expressions (CTEs), string manipulation, and data transformation, the project answers practical business questions and highlights SQL's effectiveness as a data analysis tool.

This project reflects the analytical skills expected from Data Analysts, Business Analysts, MIS Executives, and SQL Developers, making it a valuable addition to a professional data analytics portfolio.
