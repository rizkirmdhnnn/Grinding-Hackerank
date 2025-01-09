/*
 Query the average population of all cities in CITY where District is California.
 */
/*
 Untuk menghitung rata-rata kita bisa memanfaatkan fungsi AVG() yang disediakan oleh SQL. 
 */
select
    avg(population)
from
    CITY
where
    district = 'California'