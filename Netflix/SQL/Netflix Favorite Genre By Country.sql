CREATE OR REPLACE VIEW Favorite_Genre_Country AS
WITH CountryGenre AS(
	SELECT
		nd.country AS Country,
		ng.genre_list AS Favorite_Genre,
		COUNT(*) AS Total_Use
	FROM
		netflix_data AS nd
	JOIN
		netflix_genrelist AS ng ON nd.show_id = ng.show_id
	GROUP BY
		nd.country,
		ng.genre_list
),

RankGenre AS(
	SELECT
		*,
		ROW_NUMBER() OVER(PARTITION BY Country ORDER BY Total_Use DESC) AS Ranking
	FROM
		CountryGenre
)

SELECT
	*
FROM	
	RankGenre
WHERE
	Ranking = 1
ORDER BY
	Country DESC