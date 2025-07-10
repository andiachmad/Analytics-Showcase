CREATE OR REPLACE VIEW view_product_popularity AS
SELECT
  "Category",
  "Sub-Category",
  COUNT(*) AS total_purchase
FROM
  cleaned_data
GROUP BY
  "Category", "Sub-Category"
ORDER BY total_purchase DESC;
