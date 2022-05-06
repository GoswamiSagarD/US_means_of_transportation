SELECT * FROM mot.acs;

SELECT MAX(CarTruckVanDroveAlone) max_value, NAME FROM mot.acs WHERE GEO_ID LIKE '05%';

SELECT * FROM mot.acs where name='Los Angeles County, California';
SELECT * FROM mot.acs where name='Houston County, Alabama';
SELECT MAX(CarTruckVanDroveAlone) max_value, NAME FROM mot.acs WHERE GEO_ID LIKE '05%' and YEAR = 2019 GROUP BY NAME ORDER BY max_value desc limit 10;
SELECT MAX(PublicTransportation) max_value, NAME FROM mot.acs WHERE GEO_ID LIKE '05%' and YEAR = 2019 GROUP BY NAME ORDER BY max_value desc limit 10;

SELECT YEAR, SUM(PublicTransportation) FROM mot.acs WHERE GEO_ID LIKE '05%' GROUP BY YEAR ORDER BY YEAR asc;
SELECT YEAR, SUM(CarTruckVanDroveAlone) FROM mot.acs WHERE GEO_ID LIKE '05%' GROUP BY YEAR ORDER BY YEAR asc;
SELECT YEAR, SUM(Total) FROM mot.acs WHERE GEO_ID LIKE '05%' GROUP BY YEAR ORDER BY YEAR asc;

SELECT NAME, AVG(PublicTransportation) AVG_PUBLIC FROM mot.acs WHERE GEO_ID LIKE '05%' GROUP BY NAME ORDER BY AVG_PUBLIC desc;
SELECT * FROM mot.acs