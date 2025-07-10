-- Total Revenue Permasing-masing Product
CREATE OR REPLACE VIEW Revenue_Product AS
SELECT
	"Product",
	SUM("Amount") AS Total_Revenue
FROM
	"Chocolate_Sales"
GROUP BY
	"Product"