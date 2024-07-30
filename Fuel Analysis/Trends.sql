-- GENERAL TRENDS--
-- How have average fuel prices changed over the last few years in Argentina? --

SELECT years, 
	ROUND(AVG(price),2) AS avg_fuelprice 
		FROM price_table
GROUP BY years
ORDER BY years DESC;

-- What are the yearly average fuel prices for each type of fuel? --
SELECT p.years,
	pt.product_type,
    ROUND(AVG(p.price),2) AS avg_fuelprice
		FROM price_table AS p
INNER JOIN product_table as pt
	ON p.product_id = pt.product_id
GROUP BY p.years, pt.product_type;

-- Are there any noticeable seasonal trends or patterns in fuel prices? --

ALTER TABLE price_table
ADD COLUMN months VARCHAR(255);

UPDATE price_table
SET months = MONTH(dates);

ALTER TABLE price_table
ADD COLUMN month_name VARCHAR(255);

UPDATE price_table
SET month_name = MONTHNAME(dates);

SELECT years, 
	month_name, 
   ROUND(AVG(price),2) AS avg_price
		FROM price_table
GROUP BY month_name, years
ORDER BY month_name, years DESC;


	
