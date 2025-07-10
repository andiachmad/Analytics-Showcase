CREATE OR REPLACE VIEW view_shipmode_frequent AS
SELECT
  "Ship Mode",
  COUNT(*) AS count_used
FROM
  cleaned_data
GROUP BY
  "Ship Mode"
ORDER BY count_used DESC;
