-- To copy data to superstore table from CSV FILE;

COPY superstore
FROM 'E:\SQL\SQL_PROJECTS\SUPER_STORE\datasets\superstore_data.csv'
DELIMITER ','
CSV HEADER
ENCODING 'LATIN1';


SELECT *
FROM superstore
LIMIt 1000;