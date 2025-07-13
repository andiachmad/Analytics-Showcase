CREATE OR REPLACE VIEW SA_Total_Gender AS
SELECT
	"Gender",
	COUNT(*) AS Total_Gender
FROM
	studentadmission
GROUP BY
	"Gender"