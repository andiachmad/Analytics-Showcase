CREATE OR REPLACE VIEW Trend_Type AS
WITH TypeYearCount AS (
SELECT
	"release_year" AS "Tahun",
	"type",
	COUNT(*) AS Total_Making
FROM
	netflix_data
GROUP BY
	"Tahun",
	"type"
),

TypeRank AS(
SELECT
	*,
	ROW_NUMBER() OVER(PARTITION BY "Tahun" ORDER BY Total_Making) AS Ranking
FROM
	TypeYearCount
)

SELECT
	*
FROM
	TypeRank
WHERE
	Ranking = 1
ORDER BY
	"Tahun" DESC
LIMIT 10
