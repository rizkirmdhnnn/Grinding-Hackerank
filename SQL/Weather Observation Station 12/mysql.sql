/*
Enter your query here.
*/

select distinct(STATION.CITY) from STATION where CITY not REGEXP '^[aiueo]' and CITY not REGEXP '[aiueo]$'