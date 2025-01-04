/*
    Alih alih menggunakan like dan or untuk mencari string yang akhirnya dengan huruf vokal, kita bisa menggunakan REGEXP.
    REGEXP adalah operator yang digunakan untuk mencocokkan string dengan ekspresi reguler.
    Contoh: [aeiou]$ akan mencocokkan string yang diakhiri dengan huruf vokal.
    '^' digunakan untuk mencocokkan string yang diawali dengan karakter tertentu.
*/

select distinct(CITY) from STATION where CITY REGEXP '[aeiou]$'