CREATE OR REPLACE VIEW SA_Avg_Score_Test AS
SELECT
	ROUND(AVG("Admission Test Score")::numeric, 2) AS Average_Test_Score
FROM
	studentadmission