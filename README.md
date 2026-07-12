# Netflix Content Analysis Using PostgreSQL

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

**Dataset Source:** ([gle.com/datasets/shivamb/netflix-shows?resource=download](https://www.kaggle.com/datasets/shivamb/netflix-shows?resource=download))

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
drop table if exists netflix;
	CREATE TABLE netflix
	(show_id Varchar(8),
	type Varchar(10),
	title Varchar(150),
	director varchar(208),
	casts varchar(1000),
	country varchar(150),
	date_added varchar(50),
	release_year int,
	rating varchar(10),
	duration varchar(15),
	listed_in varchar(100),
	description varchar(250)
)
```

---

# Business Problems & Solutions

## 1. Count the Number of Movies vs TV Shows

Determine the distribution of Movies and TV Shows available on Netflix.

```sql
SELECT 
	Type,COUNT(*) as Total_content
FROM netflix
GROUP BY Type;

```

---

## 2. Find the Most Common Rating for Movies and TV Shows

Identify the most frequently occurring content rating for each content type.

```sql
SELECT 
	Type,
	rating
FROM
(SELECT 
		type,
		rating,
		count(*),
		RANK() OVER(PARTITION BY type ORDER BY COUNT(*) DESC ) as ranking
	FROM netflix
	GROUP BY 1, 2
) as t1
WHERE
	Ranking = 1;
```

---

## 3. List Movies Released in 2020

Retrieve all movies released during the year 2020.

```sql

SELECT * FROM netflix
WHERE 
	Type = 'Movie'
	AND
	release_year = 2020;
```

---

## 4. Top 5 Countries by Content Count


Identify the five countries contributing the highest number of titles.

```sql
SELECT 
	UNNEST(STRING_TO_ARRAY(country,',')) as New_country,
	COUNT(show_id) as total_content
FROM Netflix
GROUP BY 1
ORDER BY 2 DESC
LIMIT 5;
```

---

## 5. Identify the Longest Movie

### Business Requirement

Retrieve the movie with the maximum duration.

```sql
SELECT * FROM NETFLIX
WHERE TYPE = 'Movie' 
	  AND 
	  Duration = (select max(duration) from netflix);

```

---

## 6. Find Content Added During the Last Five Years

Identify recently added content available on Netflix.

```sql

SELECT * FROM NETFLIX
WHERE
	TO_DATE(date_added, 'Month DD, YYYY') >= CURRENT_DATE - INTERVAL '5 YEARS'

```

---

## 7. Find Content Directed by Rajiv Chilaka

Retrieve every Movie and TV Show directed by Rajiv Chilaka.

```sql
SELECT * FROM NETFLIX
where director ILIKE '%Rajiv Chilaka%'

```

---

## 8. Find TV Shows with More Than Five Seasons

Identify long-running TV Shows available on Netflix.

```sql

SELECT * FROM netflix
WHERE
	TYPE = 'TV Show'
	AND
	SPLIT_PART(Duration,' ',1)::numeric > 5;
```

---

## 9. Count Content by Genre

Calculate the total number of titles available in each genre.

```sql

SELECT listed_in,
UNNEST(STRING_TO_ARRAY(listed_in, ',')) as genre,
count(show_id)	
FROM netflix
GROUP BY 1
```

---

## 10. Analyze Netflix Content Released by India

Determine the years with the highest percentage of Netflix content released by India.

```sql

SELECT
	EXTRACT(YEAR FROM TO_DATE(date_added, 'Month DD,YYYY')) as Year,
	COUNT(*) as Yearly_content,
	ROUND(
	COUNT(*)::numeric/ (SELECT COUNT(*) FROM netflix Where Country = 'India')::numeric * 100 ,2)
	as avg_count_per_year
FROM Netflix
WHERE Country = 'India'
GROUP BY 1
```

---

## 11. Find Documentary Movies

Retrieve all documentary movies available in the dataset.

```sql

SELECT * FROM Netflix
WHERE
	listed_in Ilike  '%documentaries%';
```

---

## 12. Identify Content Without Director Information

Detect records where director information is unavailable.

```sql

SELECT * FROM Netflix
WHERE director IS NULL;
```

---

## 13. Find Salman Khan Movies Released During the Last 10 Years

Retrieve Netflix titles featuring Salman Khan released within the last decade.

```sql

SELECT * FROM Netflix
where casts ILIKE '%Salman Khan%' 
	and 
	release_year > EXTRACT(YEAR FROM CURRENT_DATE) - 10 ;

```

---

## 14. Top 10 Actors Appearing in Indian Content

Identify actors with the highest number of appearances in Indian-produced Netflix titles.

```sql

SELECT 
UNNEST(STRING_TO_ARRAY(Casts, ',')) as actors_name,
count(*) as total_content
FROM Netflix
WHERE Country ILIKE '%India'
GROUP BY 1
ORDER BY 2 DESC
LIMIT 10;

```

---

## 15. Categorize Content Based on Keywords

Classify content as **Good Content** or **Bad Content** depending on whether the description contains the keywords **Kill** or **Violence**.

```sql

with new_table as(
SELECT
*,
CASE
	WHEN description ILIKE '%Kill%' 
	OR
	 description ILIKE '%violence%' then 'Bad content' 
	else 'Good content'
END AS category
FROM Netflix)
SELECT 
	Category,
	count(*) as total_content
FROM New_table 
GROUP BY 1;
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
