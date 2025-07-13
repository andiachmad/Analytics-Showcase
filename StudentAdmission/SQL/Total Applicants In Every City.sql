CREATE OR REPLACE VIEW SA_Applicants_Every_City AS
SELECT
	"City",
	COUNT(*) AS Total_Applicants
FROM	
	studentadmission
GROUP BY
	"City"
ORDER BY
	Total_Applicants DESC