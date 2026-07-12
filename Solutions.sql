	--Netflix Project--
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

select * from netflix;

select 
	count(*) as total_content
from netflix;



select 
	distinct type
from netflix;

-- 15 Business Problems--

--1. Count the number of Movies VS  TV Shows

SELECT 
	Type,COUNT(*) as Total_content
FROM netflix
GROUP BY Type;


--2. Find the most comman rating for Movies and TV Shows

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


--3. List all Movies released in a specific year (e.g..2020)

--Filter 2020
--Movies

SELECT * FROM netflix
WHERE 
	Type = 'Movie'
	AND
	release_year = 2020;



--4. Find the top 5 countries with the most content on Netflix

SELECT 
	UNNEST(STRING_TO_ARRAY(country,',')) as New_country,
	COUNT(show_id) as total_content
FROM Netflix
GROUP BY 1
ORDER BY 2 DESC
LIMIT 5;


--5. Identify the Longest Movies?

SELECT * FROM NETFLIX
WHERE TYPE = 'Movie' 
	  AND 
	  Duration = (select max(duration) from netflix);



--6. Find content added in the last 5 Years

SELECT * FROM NETFLIX
WHERE
	TO_DATE(date_added, 'Month DD, YYYY') >= CURRENT_DATE - INTERVAL '5 YEARS'



--7. Find all the Movies/TV Shows By director 'Rajiv Chilaka'

SELECT * FROM NETFLIX
where director ILIKE '%Rajiv Chilaka%'



--8. list all TV shows with more than 5 seasons

SELECT * FROM netflix
WHERE
	TYPE = 'TV Show'
	AND
	SPLIT_PART(Duration,' ',1)::numeric > 5;


--9. Count the number of content items in a each genre

SELECT listed_in,
UNNEST(STRING_TO_ARRAY(listed_in, ',')) as genre,
count(show_id)	
FROM netflix
GROUP BY 1

--10.ind each year and the average numbers of content released by India on Netflix.
--Return the top 5 years with the highest average content release.

SELECT
	EXTRACT(YEAR FROM TO_DATE(date_added, 'Month DD,YYYY')) as Year,
	COUNT(*) as Yearly_content,
	ROUND(
	COUNT(*)::numeric/ (SELECT COUNT(*) FROM netflix Where Country = 'India')::numeric * 100 ,2)
	as avg_count_per_year
FROM Netflix
WHERE Country = 'India'
GROUP BY 1


--11. List all movies that are documentaries

SELECT * FROM Netflix
WHERE
	listed_in Ilike  '%documentaries%';


--12.Find all content without a director

SELECT * FROM Netflix
WHERE director IS NULL;

--13. Find how many movies actor 'Salman Khan' appeared in last 10 years!

SELECT * FROM Netflix
where casts ILIKE '%Salman Khan%' 
	and 
	release_year > EXTRACT(YEAR FROM CURRENT_DATE) - 10 ;

--14. Find the top 10 actors who have appeared in the highest number of movies produced in India.

SELECT 
UNNEST(STRING_TO_ARRAY(Casts, ',')) as actors_name,
count(*) as total_content
FROM Netflix
WHERE Country ILIKE '%India'
GROUP BY 1
ORDER BY 2 DESC
LIMIT 10;

--15. Categorize the content based on the presence of the keywords 'kill' and 'violence' in the description field.
--Label content containing these keywords as 'Bad' and all other content as 'Good'. 
--Count how many items fall into each category.


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