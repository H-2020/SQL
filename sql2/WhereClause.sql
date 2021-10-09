USE TheBelgianBreweryDB;
#select all
SELECT
    Id,
    Name,
    BrewerId,
    CategoryId,
    Price,
    Stock,
    Alcohol,
    Version,
    Image
FROM Beers
WHERE Alcohol>6;

#select all records limit 10
SELECT
    Id,
    Name,
    BrewerId,
    CategoryId,
    Price,
    Stock,
    Alcohol,
    Version,
    Image
FROM Beers LIMIT 10;

#A
SELECT
    Category
FROM categories
lIMIT 38;

#C
SELECT name
FROM  brewers
WHERE  Turnover>5000 lIMIT 54;

#D
SELECT
       Name,
       City
FROM brewers
WHERE Turnover BETWEEN 0 AND 5000;

#E
SELECT  DISTINCT
    Id,
    Name,
    BrewerId,
    CategoryId,
    Price,
    Stock,
    Alcohol,
    Version,
    Image
FROM Beers LIMIT 14;

#F
SELECT DISTINCT
    Name
FROM beers
WHERE Name LIKE '%WIT%'
LIMIT 30;

#G
SELECT
       Name
FROM  beers
WHERE Alcohol BETWEEN 3 AND 7 LIMIT 568;

