CREATE OR REPLACE VIEW view_region_revenue AS
SELECT
  "Region",
  ROUND(SUM("Profit")::numeric) AS total_revenue
FROM
  cleaned_data
GROUP BY "Region"
ORDER BY total_revenue DESC;
