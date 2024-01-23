#To know the size of the tables in MB

SELECT table_name AS "Table",
ROUND(((data_length + index_length) / 1024 / 1024), 2) AS "Size (MB)"
FROM information_schema.TABLES
WHERE table_schema like "%TABLE_NAME%"
ORDER BY (data_length + index_length) DESC;


SELECT table_name AS "Table", table_rows AS "Rows"
FROM information_schema.TABLES
WHERE table_schema like "%TABLE_NAME%";
