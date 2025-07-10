--  Negara mana yang paling banyak menerima kiriman produk.
CREATE OR REPLACE VIEW Top_Countries_Shipped AS
WITH MostCountryShipped AS(
	SELECT
		"Country",
		SUM("BoxShipped") AS Total_Shipped
	FROM
		"Chocolate_Sales"
	GROUP BY
		"Country"
		
)

SELECT
	*,
	RANK() OVER(ORDER BY Total_Shipped DESC) AS Ship_Rank
FROM
	MostCountryShipped
