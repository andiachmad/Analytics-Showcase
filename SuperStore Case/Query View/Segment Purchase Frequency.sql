CREATE OR REPLACE VIEW view_segment_purchase_count AS
SELECT
  "Segment",
  COUNT(*) AS purchase_count
FROM
  cleaned_data
GROUP BY "Segment";
