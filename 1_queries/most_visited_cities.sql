-- Get a list of the most visited cities.
SELECT properties.city, count(reservations) as total_reservations
FROM reservations
JOIN properies ON property_id = properties.id
GROUP BY properties.city
ORDER by total_reservations DESC;