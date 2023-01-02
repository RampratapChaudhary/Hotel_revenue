use hotel_revenue;

SELECT * FROM hotel_revenue.hotel_revenue_csv;
alter table hotel_revenue_csv to hotel_revenue2018_csv

SELECT * FROM hotel_revenue2019_csv;
with hotels as (
SELECT * FROM hotel_revenue.hotel_revenue_csv
union
select * from hotel_revenue.hotel_revenue2019_csv
union
select * from hotel_revenue.hotel_revenue2020_csv)
select * from hotels left join hotel_revenue.hotel_revenue_marketsegment_csv
on hotels.market_segment= hotel_revenue_marketsegment_csv.market_segment
left join hotel_revenue.hotel_revenue_meal_csv
on hotel_revenue_meal_csv.meal=hotels.meal