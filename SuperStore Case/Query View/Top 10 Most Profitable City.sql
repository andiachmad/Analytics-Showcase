CREATE OR REPLACE VIEW view_top10_profitable_city AS
SELECT
  "City",
  ROUND(SUM("Profit")::numeric) AS total_revenue
FROM
  cleaned_data
GROUP BY "City"
ORDER BY total_revenue DESC
LIMIT 10;
