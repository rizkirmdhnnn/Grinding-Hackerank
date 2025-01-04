/*
    Operasi Like digunakan untuk mencocokkan pola string.
    Contoh: %a% akan mencocokkan string yang memiliki karakter 'a' di dalamnya.
    %a akan mencocokkan string yang diakhiri dengan karakter 'a'.
    a% akan mencocokkan string yang diawali dengan karakter 'a'.
*/

select distinct(CITY) from STATION where CITY like 'a%' or CITY like 'i%' or CITY like 'u%' or CITY like 'e%' or CITY like 'o%'