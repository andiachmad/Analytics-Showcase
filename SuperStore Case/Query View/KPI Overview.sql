CREATE OR REPLACE VIEW view_kpi_overview AS
SELECT
  ROUND(SUM("Sales")::numeric) AS total_sales,
  ROUND(SUM("Profit")::numeric) AS total_profit,
  SUM("Quantity") AS total_quantity,
  ROUND(AVG("Discount")::numeric, 2) AS avg_discount
FROM
  cleaned_data;
