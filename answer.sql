\dt

SELECT * FROM airports WHERE name LIKE '%John F Kennedy%';
SELECT * FROM airports WHERE name LIKE '%De Gaulle%';

  id  |        name         |   city   |    country    | iata_faa | icao | latitude  | longitude  | altitude | utc_offset | dst |        tz        
------+---------------------+----------+---------------+----------+------+-----------+------------+----------+------------+-----+------------------
 3797 | John F Kennedy Intl | New York | United States | JFK      | KJFK | 40.639751 | -73.778925 | 13       | -5         | A   | America/New_York

   id  |       name        | city  | country | iata_faa | icao | latitude  | longitude | altitude | utc_offset | dst |      tz      
------+-------------------+-------+---------+----------+------+-----------+-----------+----------+------------+-----+--------------
 1382 | Charles De Gaulle | Paris | France  | CDG      | LFPG | 49.012779 | 2.55      | 392      | 1          | E   | Europe/Paris



SELECT * FROM routes WHERE origin_code LIKE 'JFK' and dest_code LIKE 'CDG';

 airline_code | airline_id | origin_code | origin_id | dest_code | dest_id | codeshare | stops |    equipment    
--------------+------------+-------------+-----------+-----------+---------+-----------+-------+-----------------
 AA           |         24 | JFK         |      3797 | CDG       |    1382 |           |     0 | 763 757
 AF           |        137 | JFK         |      3797 | CDG       |    1382 |           |     0 | 332 772 388 343
 AY           |       2350 | JFK         |      3797 | CDG       |    1382 |           |     0 | 763 757
 AZ           |        596 | JFK         |      3797 | CDG       |    1382 | Y         |     0 | 332 388 772 343
 BA           |       1355 | JFK         |      3797 | CDG       |    1382 | Y         |     0 | 763 757
 DL           |       2009 | JFK         |      3797 | CDG       |    1382 |           |     0 | 332 772 388 343
 EY           |       2222 | JFK         |      3797 | CDG       |    1382 | Y         |     0 | 763 757
 IB           |       2822 | JFK         |      3797 | CDG       |    1382 | Y         |     0 | 763 757
 QR           |       4091 | JFK         |      3797 | CDG       |    1382 | Y         |     0 | 757
 SE           |       5479 | JFK         |      3797 | CDG       |    1382 |           |     0 | 763 332
 US           |       5265 | JFK         |      3797 | CDG       |    1382 |           |     0 | 763 757
(11 rows)

SELECT COUNT(country)  FROM airports WHERE country LIKE 'Canada';


--  SELECT * FROM airports WHERE country LIKE 'Canada';

-- Select airport names IN the following countries- Algeria, Ghana, Ethiopia, order by country.

SELECT * FROM airports WHERE country IN ('Ghana', 'Algeria', 'Ethiopia') ORDER BY country;

SELECT a.name, a.city, a.country FROM airports a WHERE a.country IN ('Ghana', 'Algeria', 'Ethiopia') ORDER BY a.country;


-- Select all the airports that airlines 'Germania' flies from.
SELECT a.name, a.iata FROM airlines a WHERE a.name IN ('')



 SELECT * FROM airlines WHERE name LIKE 'Germania';
 SELECT * FROM routes WHERE name LIKE 'Germania';

 SELECT * FROM routes WHERE origin_code;


-- SELECT DISTINCT(b.name) as airports
-- FROM routes r, airlines a, airports b
-- WHERE a.id = r.airline_id
-- AND r.origin_code = b.iata_faa
-- AND a.name='Germania';
