-- Mengetahui Performance Dari Penjualan Karyawan
CREATE OR REPLACE VIEW SalesPerformance AS
WITH SalesSold AS(
	SELECT
		"SalesPerson",
		COUNT(*) Total_Sales,
		SUM("Amount") AS Total_Revenue,
		ROUND(AVG("Amount")::numeric, 0) AS Average_Sales_Revenue
	FROM
		"Chocolate_Sales"
	GROUP BY
		"SalesPerson"
)

SELECT
	*,
	RANK() OVER (ORDER BY Total_Revenue DESC) AS Revenue_Rank
FROM
	SalesSold
ORDER BY
	Total_Revenue DESC