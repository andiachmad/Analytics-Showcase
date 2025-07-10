-- Tren Penjualan
CREATE OR REPLACE VIEW Trend_Product_PerMonth AS
WITH ProductBulanan AS(
	SELECT
		CAST(DATE_TRUNC('Month', "Date") AS DATE) AS Monthly,
		"Product",
		COUNT(*) AS Total_Sold
	FROM
		"Chocolate_Sales"
	GROUP BY
		Monthly, "Product"
),

RankingSales AS(
	SELECT
		Monthly,
		"Product",
		Total_Sold,
		RANK() OVER(PARTITION BY Monthly ORDER BY Total_Sold DESC) AS Product_Ranking
	FROM
		ProductBulanan
)

SELECT
	Monthly,
	STRING_AGG("Product", ', ') AS Trending_Product,
	MAX(Total_Sold) AS Total_Sold
FROM
	RankingSales
WHERE
	Product_Ranking = 1
GROUP BY
	Monthly
ORDER BY
	Monthly DESC

