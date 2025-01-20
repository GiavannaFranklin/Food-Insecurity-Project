--This code includes some exploratory data analysis and creates a table to use for data visualizations related to factors reflective of food insecurity in Kansas City, MO. The initial data transformations were done in Python.

--observe the tables
SELECT *
FROM `food_insecurity.snap`;

SELECT *
FROM `food_insecurity.under_200_pct_fpl`;

SELECT *
FROM `food_insecurity.obesity`;

SELECT *
FROM `food_insecurity.no_vehicles`;

SELECT *
FROM `food_insecurity.tracts`;

SELECT*
FROM `food_insecurity.fips_codes`;

--create view with geographic information
--this view merges data from the 'tracts' table and 'fips_codes' table to provide information on GEOID, county, and state
CREATE VIEW `food_insecurity.tracts_view` AS
SELECT 
    GEOID AS geo_id, 
    COUNTYFP AS countyfp, 
    County_Name AS county, 
    State AS state
FROM `food_insecurity.tracts`
JOIN `food_insecurity.fips_codes`
  ON `food_insecurity.tracts`.COUNTYFP = `food_insecurity.fips_codes`.FIPS_County
WHERE County_Name IN('Cass', 'Clay', 'Jackson', 'Platte') AND State = 'Missouri';

--view results
SELECT *
FROM `food_insecurity.tracts_view`;

--count number of tracts
SELECT COUNT(geo_id)
FROM `food_insecurity.tracts_view`;

--count number of tracts in each county
SELECT COUNT(county), county
FROM `food_insecurity.tracts_view`
GROUP BY county;

--create another view with the relevant food insecurity metrics in one table for queries and data visualization
--join tracts_view with the tables with food insecurity metrics 
CREATE VIEW `food_insecurity.metrics_view` AS
SELECT 
    t.geo_id, 
    t.county, 
    snap_pct, 
    under_200_pct_fpl, 
    obesity_pct, 
    no_vehicle_pct
FROM `food_insecurity.tracts_view` t
LEFT JOIN `food_insecurity.snap` s
  ON t.geo_id = s.geo_id
LEFT JOIN `food_insecurity.under_200_pct_fpl` f
  ON t.geo_id = f.geo_id
LEFT JOIN `food_insecurity.obesity` o
  ON t.geo_id = o.geo_id
LEFT JOIN `food_insecurity.no_vehicles` v
  ON t.geo_id = v.geo_id;

--view results
SELECT *
FROM `food_insecurity.metrics_view`;

--checking tracts where there are nulls and if there are any households where there are nulls
SELECT 
    m.geo_id, 
    m.county, 
    m.snap_pct,
    under_200_pct_fpl, 
    obesity_pct, 
    no_vehicle_pct, 
    total_households
FROM `food_insecurity.metrics_view` m
LEFT JOIN `food_insecurity.snap` s
  ON m.geo_id = s.geo_id
WHERE m.snap_pct IS NULL
   OR under_200_pct_fpl IS NULL
   OR obesity_pct IS NULL
   OR no_vehicle_pct IS NULL;

--observe the highest values along with the associated tracts and counties
SELECT geo_id, county, snap_pct
FROM `food_insecurity.snap`
ORDER BY snap_pct DESC;

SELECT geo_id, county, under_200_pct_fpl
FROM `food_insecurity.under_200_pct_fpl`
ORDER BY under_200_pct_fpl DESC;

SELECT geo_id, county, obesity_pct
FROM `food_insecurity.obesity`
ORDER BY obesity_pct DESC;

SELECT geo_id, county, no_vehicle_pct
FROM `food_insecurity.no_vehicles`
ORDER BY no_vehicle_pct DESC;

--calculate descriptive stats of cols
SELECT
    'snap_pct' AS column_name,
    ROUND(AVG(snap_pct),1) AS average,
    APPROX_QUANTILES(snap_pct, 2)[OFFSET(1)] AS median,  
    MAX(snap_pct) AS max, 
    MIN(snap_pct) AS min 
FROM `food_insecurity.snap`
UNION ALL
SELECT
    'under_200_pct_fpl',
    ROUND(AVG(under_200_pct_fpl),1) AS average,
    APPROX_QUANTILES(under_200_pct_fpl, 2)[OFFSET(1)] AS median,  
    MAX(under_200_pct_fpl) AS max, 
    MIN(under_200_pct_fpl) AS min 
FROM `food_insecurity.under_200_pct_fpl`
UNION ALL
SELECT
    'obesity_pct',
    ROUND(AVG(obesity_pct),1) AS average,
    APPROX_QUANTILES(obesity_pct, 2)[OFFSET(1)] AS median,  
    MAX(obesity_pct) AS max, 
    MIN(obesity_pct) AS min 
FROM `food_insecurity.obesity`
UNION ALL
SELECT
    'no_vehicle_pct',
    ROUND(AVG(no_vehicle_pct), 1) AS average,
    APPROX_QUANTILES(no_vehicle_pct, 2)[OFFSET(1)] AS median,  
    MAX(no_vehicle_pct) AS max, 
    MIN(no_vehicle_pct) AS min 
FROM `food_insecurity.no_vehicles`;


--observe average and median values of cols by county
SELECT county, 
       ROUND(AVG(snap_pct), 1) AS avg_snap_pct,
       ROUND(AVG(under_200_pct_fpl), 1) AS avg_under_200_pct_fpl,
       ROUND(AVG(obesity_pct), 1) AS avg_obesity_pct,
       ROUND(AVG(no_vehicle_pct), 1) AS avg_no_vehicle_pct,
       APPROX_QUANTILES(snap_pct, 2)[OFFSET(1)] AS median_snap_pct,
       APPROX_QUANTILES(under_200_pct_fpl, 2)[OFFSET(1)] AS median_under_200_pct_fpl,
       APPROX_QUANTILES(obesity_pct, 2)[OFFSET(1)] AS median_obesity_pct,
       APPROX_QUANTILES(no_vehicle_pct, 2)[OFFSET(1)] AS median_no_vehicle_pct,
FROM `food_insecurity.metrics_view`
GROUP BY county;



