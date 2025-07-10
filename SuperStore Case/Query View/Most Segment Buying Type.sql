CREATE OR REPLACE VIEW view_segment_subcategory_popular AS
SELECT
  "Segment",
  "Sub-Category",
  COUNT(*) AS purchase_count
FROM
  cleaned_data
GROUP BY
  "Segment", "Sub-Category"
ORDER BY purchase_count DESC;
