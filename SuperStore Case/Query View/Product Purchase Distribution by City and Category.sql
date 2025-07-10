CREATE OR REPLACE VIEW view_city_category_distribution AS
SELECT
  "City",
  "Category",
  "Sub-Category",
  COUNT(*) AS total_purchase
FROM
  cleaned_data
GROUP BY
  "City", "Category", "Sub-Category"
ORDER BY total_purchase DESC;
