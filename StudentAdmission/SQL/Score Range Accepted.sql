CREATE OR REPLACE VIEW SA_Score_Range AS
SELECT
	CASE
		WHEN "Admission Test Score" >= 90 THEN '90-100'
		WHEN "Admission Test Score" >= 80 THEN '80-89'
		WHEN "Admission Test Score" >= 70 THEN '70-79'
		ELSE '<70'
	END AS Score_Range,
	COUNT(*) AS Total_Accepted
FROM
	studentadmission
WHERE
	"Admission Status" = 'Accepted'
GROUP BY
	Score_Range
ORDER BY
	Score_Range DESC