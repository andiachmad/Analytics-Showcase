CREATE OR REPLACE VIEW Average_Duration_Season AS
With Movie AS(
SELECT
	'Movie' AS "Type",
	ROUND(AVG("movie_duration"::numeric), 1) AS Average_Movie_Duration
FROM
	netflix_data
),

TvShow AS(
SELECT
	'TvShow' AS "Type",
	ROUND(AVG("tvshow_season"::numeric), 1) AS TvShow_Season_Average
FROM
	netflix_data
)

SELECT
	*
FROM
	Movie
UNION ALL
SELECT
	*
FROM	
	TvShow