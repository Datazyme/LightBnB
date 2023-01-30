-- When a user is logged in, they will have an option to view all of their reservations. 
-- This page will show details about a reservation and details about the property associated with the reservation.

SELECT reservations.id, properties.title, properties.cost_per_night, reservations.start_date, avg(rating) as average_rating
FROM reservations
JOIN properties ON reservations.property_id = properties.id
JOIN property_reviews ON properties.id = property_reviews.property_id
WHERE reservations.guest_id = 1
GROUP BY properties.id, reservations.id
ORDER BY reservations.start_date
LIMIT 10;

-- \i 1_queries/all_my_reservations.sql
-- expected result
--    id    |     title      | cost_per_night | start_date |   average_rating   
-- ---------+----------------+----------------+------------+--------------------
--  1017016 | Married rich   |          64002 | 2014-05-17 | 4.1666666666666667
--  1010127 | Sudden troops  |          16503 | 2014-08-17 | 3.7777777777777778
--  1012625 | Chapter still  |           2936 | 2015-07-30 | 4.2727272727272727
--  1013921 | Popular some   |          30184 | 2016-05-11 | 4.2857142857142857
--  1010623 | Law expression |          50749 | 2016-07-08 | 4.1666666666666667
--  1011691 | About journey  |          79978 | 2017-07-01 | 3.8333333333333333
--  1015180 | Due correctly  |          51261 | 2019-07-23 | 4.0000000000000000
--  1019776 | Earth log      |          48377 | 2019-12-20 | 4.4666666666666667
--  1014540 | Pure had       |          59153 | 2020-11-28 | 3.4285714285714286
--  1016099 | Any my         |          94209 | 2021-02-22 | 3.3333333333333333
-- (10 rows)