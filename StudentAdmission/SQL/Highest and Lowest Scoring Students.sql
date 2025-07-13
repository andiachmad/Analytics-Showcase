CREATE OR REPLACE VIEW SA_Hi_and_Low_Score AS
WITH StudentScore AS(
	SELECT
		"Name",
		"City",
		"Admission Test Score",
		'Top 5' AS Category
	FROM	
		"studentadmission"
	ORDER BY
		"Admission Test Score" DESC
	LIMIT 5
),

Top5Down AS(
	SELECT
		"Name",
		"City",
		"Admission Test Score",
		'Bottom 5' AS Category
	FROM	
		"studentadmission"
	ORDER BY
		"Admission Test Score" ASC
	LIMIT 5
)

SELECT * FROM StudentScore
UNION ALL
SELECT * FROM Top5Down

	
	
