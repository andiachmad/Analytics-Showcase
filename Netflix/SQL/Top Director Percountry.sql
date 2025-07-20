CREATE OR REPLACE VIEW top_director_per_country AS
WITH CountryDirector AS(
	SELECT
		"country",
		"director",
		COUNT(*) AS Total_Distribution
	FROM
		netflix_data
	WHERE
		"director" != 'Not Given'
	GROUP BY
		"country",
		"director"
),

RankCountry AS(
	SELECT
		*,
		ROW_NUMBER() OVER(PARTITION BY "country" ORDER BY Total_Distribution DESC) AS Ranking
	FROM
		CountryDirector
)

SELECT
	*
FROM
	RankCountry
WHERE
	Ranking = 1
