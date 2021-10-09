CREATE DATABASE IF NOT EXISTS TheBelgianBreweryDB;

USE TheBelgianBreweryDB;

SELECT
       Id,Name,BrewerId,CategoryId,Price,Stock,Alcohol,Version,Image
FROM Beers;