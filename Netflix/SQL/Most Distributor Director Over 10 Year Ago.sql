CREATE OR REPLACE VIEW Most_Distribution_Director_10Y_Ago AS
WITH MostDirector AS(
SELECT
	director,
	release_year AS year,
	COUNT(*) Total_Distribution
FROM
	netflix_data
WHERE
	release_year >= 2011 AND
	director != 'Not Given'
GROUP BY
	director,
	release_year
),

DirectorRank AS(
SELECT
	*,
	ROW_NUMBER() OVER(PARTITION BY year ORDER BY Total_Distribution DESC) AS Ranking
FROM
	MostDirector
)

SELECT
	*
FROM
	DirectorRank
WHERE
	Ranking = 1
ORDER BY
	year DESC