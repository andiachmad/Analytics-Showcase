CREATE OR REPLACE VIEW SA_Average_Score_City AS
SELECT
	"City",
	ROUND(AVG("Admission Test Score")::numeric, 2) AS Average_Test,
	ROUND(AVG("High School Percentage")::numeric, 2) AS Average_HSP
FROM
	"studentadmission"
GROUP BY
	"City"
ORDER BY
	"City"
	
