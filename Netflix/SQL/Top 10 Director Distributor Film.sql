CREATE OR REPLACE VIEW Top_10_Director AS
SELECT
	"director",
	COUNT(*) AS Total_Making_Film
FROM
	netflix_data
GROUP BY
	"director"
ORDER BY
	Total_Making_Film DESC
LIMIT 10