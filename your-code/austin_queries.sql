# Write your answers below:

/* a) How many days are recorded in the dataset?*/
--  THERE ARE 1319 DAYS RECORDED
	SELECT COUNT(*) AS TotalDays
	FROM austin_weather;

 /* b) What is the day with the Highest Temperature in Fahrenheit (column TempHighF)*/
 --  THE DAY WAS 2017-07-29 00:00:00 AND IT WAS 107 DEGREES
    SELECT Date, TempHighF
    FROM austin_weather
    ORDER BY TempHighF DESC
    LIMIT 1;

 /* c) What is the average Humidity across all days? (column HumidityAvgPercent) */ 
   SELECT AVG(HumidityAvgPercent) AS AverageHumidity
   FROM austin_weather;

 /* d) Top 10 days, where SeaLevelPressureAvgInches is the highest, knowing DewPointAvgF is higher than 28 ? */ 
 -- 
   SELECT Date, SeaLevelPressureAvgInches, DewPointAvgF
   FROM austin_weather
   WHERE DewPointAvgF > 28
   ORDER BY SeaLevelPressureAvgInches DESC
   LIMIT 10;