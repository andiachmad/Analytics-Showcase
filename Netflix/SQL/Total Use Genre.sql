CREATE OR REPLACE VIEW total_genre AS
SELECT
	"genre_list" AS genre_type,
	COUNT(*) AS total_use
FROM
	netflix_genrelist
GROUP BY
	"genre_list"
ORDER BY
	total_use DESC