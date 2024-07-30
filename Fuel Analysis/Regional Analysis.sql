-- Regional Differences --

-- How do fuel prices vary across different regions or provinces in Argentina?--
SELECT s.region,
	province,
    ROUND(AVG(p.price),2) AS avg_fuelprice
		FROM price_table AS p
INNER JOIN seller_tables as s
	ON p.company_id = s.company_id
GROUP BY s.region, province;

-- Total Market Size for each company --

SELECT ROUND(SUM(price),2) AS total_market_volume
FROM price_table
WHERE dates BETWEEN '2017-01-12' AND '2023-10-28';

SELECT 
    s.company_name,
    ROUND(SUM(p.price), 2) AS total_market_volume,
    ROUND((SUM(p.price) / total.total_price) * 100, 2) AS market_share
FROM 
    price_table AS p
INNER JOIN 
    seller_tables AS s
ON 
    s.company_id = p.company_id
INNER JOIN 
    (SELECT SUM(price) AS total_price
     FROM price_table
     WHERE dates BETWEEN '2017-01-12' AND '2023-10-28') AS total
WHERE 
    p.dates BETWEEN '2017-01-12' AND '2023-10-28'
GROUP BY 
    s.company_name, total.total_price;

-- Which fuel types exhibit the highest price volatility?--
SELECT 
    product_type,
    ROUND(STDDEV(price), 2) AS price_volatility
FROM 
    price_table AS  p
INNER JOIN product_table AS pt
ON p.product_id = pt.product_id
WHERE dates BETWEEN '2017-01-12' AND '2023-10-28'
GROUP BY product_type
ORDER BY price_volatility DESC;
