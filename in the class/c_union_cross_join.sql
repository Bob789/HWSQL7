-- select 3 cross join (select 4)
-- select * from (select * from table_red cross join table_green)  cross join table_blue

-- UNION , CROSSS JOIN

SELECT v1.value AS value1, v2.value AS value2
FROM (SELECT 3 AS value UNION SELECT 5 UNION SELECT 7) AS v1
CROSS JOIN (SELECT 4 AS value UNION SELECT 6 UNION SELECT 8) AS v2;

