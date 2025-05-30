/*
 Query the total population of all cities in CITY where District is California.
 */
select
    sum(population)
from
    CITY
where
    district = 'California'