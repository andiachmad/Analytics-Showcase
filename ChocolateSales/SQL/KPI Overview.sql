-- KPI Card

CREATE OR REPLACE VIEW Kpi_Chocolate_Overview AS
WITH TopCountry AS(
	SELECT
		"Country",
		COUNT(*) AS Total_Order
	FROM
		"Chocolate_Sales"
	GROUP BY
		"Country"
	ORDER BY
		Total_Order DESC
	LIMIT 1
),

TopProduct AS(
	SELECT
		"Product",
		COUNT(*) AS Total_Sold
	FROM
		"Chocolate_Sales"
	GROUP BY
		"Product"
	ORDER BY
		Total_Sold DESC
	LIMIT 1
),

Revenue AS(
	SELECT
		SUM("Amount") AS Total_Revenue
	FROM
		"Chocolate_Sales"
),

Shipped AS(
	SELECT
		SUM("BoxShipped") AS Total_Box_Shipped
	FROM
		"Chocolate_Sales"
)

SELECT
	c."Country" AS Most_Purchasing_Country,
	p."Product" AS Top_Selling_Product,
	r.Total_Revenue,
	s.Total_Box_Shipped
FROM 
	TopCountry c
CROSS JOIN
	TopProduct p
CROSS JOIN
	Revenue r
CROSS JOIN
	Shipped s


