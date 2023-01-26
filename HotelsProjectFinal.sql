WITH hotels as 

(SELECT * FROM dbo.hotel2018
union
SELECT * FROM dbo.hotel2019
union
SELECT * FROM dbo.hotel2020
)
SELECT * FROM hotels
LEFT JOIN dbo.market_segment$
ON hotels.market_segment = market_segment$.market_segment 
LEFT JOIN dbo.meal_cost$
ON meal_cost$.meal = hotels.meal