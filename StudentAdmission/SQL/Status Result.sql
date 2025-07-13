CREATE OR REPLACE VIEW SA_Status_Result AS
SELECT
	"Admission Status",
	COUNT(*) Applicants
FROM
	"studentadmission"
GROUP BY
	"Admission Status"