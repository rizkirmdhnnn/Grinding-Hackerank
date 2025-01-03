/*
    Distinct for unique values
    % is the modulo operator
*/
SELECT DISTINCT(STATION.CITY) FROM STATION WHERE STATION.ID % 2 = 0