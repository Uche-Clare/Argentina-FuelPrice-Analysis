-- Fuel Type Comparison --
-- How do the prices of different fuel types (e.g., gasoline, diesel, natural gas) compare over time?--
SELECT p.years,
	pt.product_type,
    ROUND(AVG(p.price),2) AS avg_fuelprice
		FROM price_table AS p
INNER JOIN seller_tables AS s
	ON p.company_id = s.company_id
GROUP BY p.years, pt.product_type;

-- Which fuel type has shown the highest price increase or decrease?

SELECT
	pt.product_type,
    ROUND(MAX(p.price),2) AS max_fuelprice,
    ROUND(MIN(p.price),2) AS min_fuelprice
		FROM price_table AS p
INNER JOIN product_table as pt
	ON p.product_id = pt.product_id
GROUP BY pt.product_type;