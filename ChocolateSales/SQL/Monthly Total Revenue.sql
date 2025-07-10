-- Menghitung total revenue dari seluruh produk pada setiap bulan.
CREATE OR REPLACE VIEW Monthly_Total_Revenue AS
WITH RevenuePerformanceMonthly AS(
	SELECT
		SUM("Amount") AS Total_Revenue,
		CAST(DATE_TRUNC('Month', "Date") AS DATE) AS Monthly
	FROM
		"Chocolate_Sales"
	GROUP BY
		Monthly
),

RankedRevenue AS(
	SELECT
		*,
		RANK() OVER(PARTITION BY Monthly ORDER BY Total_Revenue DESC) AS Rank_Revenue
	FROM
		RevenuePerformanceMonthly
)

SELECT
	Monthly,
	Total_Revenue
FROM
	RankedRevenue
ORDER BY
	Monthly DESC
