SELECT
COUNT(*) AS FISH_COUNT
FROM FISH_INFO AS F INNER JOIN FISH_NAME_INFO AS I
ON F.FISH_TYPE = I.FISH_TYPE
WHERE I.FISH_NAME = "BASS" OR I.FISH_NAME = "SNAPPER"