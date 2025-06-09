select * from netflix;
select * from netflix_data;
show tables;
select * from netflix_titles;

select * from netflix_data;

SELECT country, COUNT(*) AS total_titles
FROM netflix_titles
GROUP BY country
ORDER BY total_titles DESC;   

SELECT 
    country,
    ROW_NUMBER() OVER (PARTITION BY country ORDER BY date_added) AS row_num,
    title,
    type,
    date_added
FROM netflix_titles
ORDER BY country, row_num;

SELECT 
    country,
    ROW_NUMBER() OVER (PARTITION BY country ORDER BY date_added) AS row_num,
    title,
    type,
    date_added
FROM netflix_titles
ORDER BY country, row_num;

SELECT 
    country,
    ROW_NUMBER() OVER (PARTITION BY title ORDER BY date_added) AS row_num,
    title,
    type,
    date_added
FROM netflix_titles;

with dup AS
( 
SELECT 
    country,
    ROW_NUMBER() OVER (PARTITION BY title ORDER BY date_added) AS row_num,
    title,
    type,
    date_added
FROM netflix_titles
)
select * from dup
where row_num > 1 ;

select distinct *
from netflix_titles
order by type
;

SELECT country, COUNT(*) AS total_count
FROM netflix_titles
group BY country;

SELECT * 
from netflix_titles
where country like '%United States%' ;

UPDATE netflix_titles
set country = 'Multiverse'
where country like '%United States%';

Select *
from netflix_titles 
where director = ''
;


Update netflix_titles
set director = 'Unknown'
where director = '';

Select *
from netflix_titles 
where director = ''
;

Update netflix_titles
set cast = 'Unknown'
where cast = '';

Update netflix_titles
set director = 'Unknown'
where director = '';

select * from netflix_titles;

Update netflix_titles
set country = 'Unknown'
where country = '';


