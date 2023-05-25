use sql_project;
###
SELECT * FROM country_wise_latest;
###
SELECT country,confirmed FROM country_wise_latest;
###
SELECT country,deaths FROM country_wise_latest WHERE deaths > 1000;
###
SELECT country, active FROM country_wise_latest WHERE active < 1000;
###
SELECT country, confirmed FROM country_wise_latest ORDER BY confirmed DESC LIMIT 10;
###
SELECT country, confirmed, (recovered/confirmed) AS recovery_rate FROM country_wise_latest WHERE (recovered/confirmed) > 0.5;
###
SELECT country, (confirmed + deaths + recovered) AS total_cases FROM country_wise_latest;
#####

#####
SELECT country, confirmed / 7 AS avg_confirmed_per_day FROM country_wise_latest;
###
SELECT country, (deaths / confirmed) * 100 AS death_percentage FROM country_wise_latest;
###
SELECT country, confirmed - "confirmed last week" AS confirmed_difference FROM country_wise_latest;
###
SELECT country FROM country_wise_latest WHERE "1 week % change" > 0;
###
SELECT country, confirmed - deaths - recovered AS active_cases FROM country_wise_latest;
###
SELECT country,deaths FROM country_wise_latest WHERE (recovered / confirmed) > 0.9;
###
SELECT country, (recovered / confirmed) AS recovery_rate FROM country_wise_latest
WHERE confirmed >= 1000
ORDER BY recovery_rate DESC
LIMIT 3;
###
SELECT country, round((deaths / 7)) AS deaths_per_day
FROM country_wise_latest
ORDER BY deaths_per_day DESC
LIMIT 5;
###
SELECT country, (recovered / confirmed) AS recovery_rate
FROM country_wise_latest
WHERE confirmed >= 10000 AND deaths > 100
ORDER BY recovery_rate DESC
LIMIT 1;
###
SELECT country, confirmed - "confirmed last week" AS confirmed_difference
FROM country_wise_latest
ORDER BY confirmed_difference DESC
LIMIT 5;
###
SELECT country, confirmed - deaths - recovered AS active_cases
FROM country_wise_latest
ORDER BY active_cases DESC
LIMIT 1;
###
SELECT country, (deaths / confirmed) * 100 AS mortality_rate
FROM country_wise_latest
WHERE confirmed > 10000
ORDER BY mortality_rate DESC;
###
SELECT country, AVG(confirmed) / 14 AS avg_cases_per_day
FROM country_wise_latest
WHERE (recovered / confirmed) > 0.9 AND (deaths / confirmed) < 0.02
GROUP BY country;
























