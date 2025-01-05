/*
Enter your query here.
*/

select distinct(STATION.CITY) from STATION where CITY not REGEXP '^[aiueo]' or CITY not REGEXP '[aiueo]$'