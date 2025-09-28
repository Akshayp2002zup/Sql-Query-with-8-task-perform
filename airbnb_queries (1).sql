SELECT COUNT(*) AS total_listings FROM listings;


        SELECT neighbourhood, COUNT(*) AS listing_count
        FROM listings
        GROUP BY neighbourhood
        ORDER BY listing_count DESC;
    


        SELECT id, name, price, room_type
        FROM listings
        WHERE price IS NULL OR room_type IS NULL;
    


        SELECT id, name, price,
               CASE
                   WHEN price < 100 THEN 'Budget'
                   WHEN price BETWEEN 100 AND 200 THEN 'Midrange'
                   ELSE 'Premium'
               END AS price_category
        FROM listings
        LIMIT 10;
    


        SELECT room_type, ROUND(AVG(price),2) AS avg_price
        FROM listings
        GROUP BY room_type
        ORDER BY avg_price DESC;
    


        SELECT id, name, neighbourhood, room_type, price, availability_365
        FROM listings
        WHERE availability_365 = 365
        ORDER BY price DESC
        LIMIT 5;
    


        SELECT id, name, price, availability_365
        FROM listings
        WHERE neighbourhood = 'Manhattan'
          AND price < 150
          AND availability_365 > 200
        ORDER BY price ASC;
    


        SELECT host_id, COUNT(*) AS total_listings
        FROM listings
        GROUP BY host_id
        ORDER BY total_listings DESC
        LIMIT 1;
    