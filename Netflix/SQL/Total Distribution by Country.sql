CREATE OR REPLACE VIEW Country_Distribution AS
SELECT
	"country",
	COUNT(*) AS Total_Distribution
FROM
	netflix_data
GROUP BY
	"country"
ORDER BY
	Total_Distribution DESC