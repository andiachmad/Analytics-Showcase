-- Rata-rata jumlah box yang dikirim per produk
CREATE OR REPLACE VIEW Average_Box_Product_Shipped AS
WITH AvgShipped AS(
	SELECT
		"Product",
		ROUND(AVG("BoxShipped")::numeric, 0) AS Average_Shipping
	FROM
		"Chocolate_Sales"
	GROUP BY
		"Product"
)

SELECT 
	*,
	DENSE_RANK() OVER(ORDER BY Average_Shipping DESC) AS DNSE_RANK
FROM
	AvgShipped
