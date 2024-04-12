SELECT
COUNT(*) AS FISH_COUNT, 
MAX(F.LENGTH) AS MAX_LENGTH, 
F.FISH_TYPE
FROM (SELECT FISH_TYPE, IFNULL(LENGTH,10) AS LENGTH
      FROM FISH_INFO) AS F
GROUP BY F.FISH_TYPE
HAVING AVG(F.LENGTH) >= 33
ORDER BY F.FISH_TYPE