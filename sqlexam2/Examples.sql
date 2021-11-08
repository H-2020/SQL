USE TheBelgianBreweryDB;
#1.way
SELECT b.name, b.name
FROM beers b
INNER JOIN brewers r
on b.BrewerId = r.Id;


#2.way
SELECT b.name, r.name
FROM beers b,brewers r
WHERE b.BrewerId=r.Id;

SELECT b.name, r.name, c.category
FROM beers b
         INNER JOIN brewers r on b.BrewerId = r.Id
         INNER JOIN categories c on b.CategoryId = c.Id;

SELECT b.Name,r.Name,c.category
FROM beers b,brewers r,categories c
WHERE b.name=r.Name and b.CategoryId=c.Id;



#last lesson
select
    Id,
    Name,
    BrewerId,
    CategoryId,
    Price,
    Stock,
    Alcohol,
    Version,
    Image
from beers b
where b.Id = 20;


select
    Id,
    Name,
    Address,
    ZipCode,
    City,
    Turnover
from brewers;

select
    Id,
    Category
from categories c
where c.Id = 19;

select
    b.Id,
    b.Name as BeerName,
    r.Name as BrewerName,
    c.Category as CategoryName,
    b.Price,
    b.Stock,
    b.Alcohol,
    b.Version,
    b.Image
from beers b
         # inner join table_name on conditions
inner join categories c
on b.CategoryId = c.Id
inner join brewers r
on b.BrewerId = r.Id;

# voeg beers en categories samen,
# creëer een select statement die gaat zoeken elk record die eerst character van de BeerName 'B' is
# 2de conditie is met elk record in de category 'amber'
select
    b.Id,
    b.Name,
    b.BrewerId,
    b.CategoryId,
    b.Price,
    b.Stock,
    b.Alcohol,
    b.Version,
    b.Image
from beers b
inner join categories c
on b.CategoryId = c.Id;
# b.CategoryId moet geen NULL zijn
# c.Id moet ook geen NULL zijn
select
    b.Id,
    b.Name,
    b.BrewerId,
    b.CategoryId,
    b.Price,
    b.Stock,
    b.Alcohol,
    b.Version,
    b.Image
from beers b
inner join categories c
on b.CategoryId = c.Id
where b.Name LIKE 'B%' AND c.Category LIKE 'Amber';

#pagina 30
#a
SELECT b.name,c.category,b.Alcohol
FROM beers b,categories c
WHERE b.Alcohol = 0;

SELECT b.name,c.category
FROM categories c
left JOIN beers b
ON c.id=b.CategoryId;

SELECT r.name
FROM brewers r
LEFT JOIN beers b
ON r.Id=b.BrewerId;




