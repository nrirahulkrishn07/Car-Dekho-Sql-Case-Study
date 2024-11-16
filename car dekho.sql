SELECT * FROM cars.`car dekho`;
USE CARS;
-- TOTAL Cars: To Get a count of total records--
select count(*)from `car dekho`;
-- The Manager asked the employee how many cars will be available in 2023?--
select count(*)from `car dekho`where year= 2023;
-- The manager asked the employee how many cars in available in 2020,2021,2022--
select count(*)from `car dekho` where year= 2020;
-- GROUP BY--
select count(*) from  `car dekho` where year in (2020,2021,2022) group by year;
-- Clint asked me to print the total of all cars by year.i din't see all the details.--
select year, count(*) from `car dekho` group by year;
-- clint asked to car dealer agent how many diesel cars will there be in 2020?--
select count(*) from `car dekho` where year = 2020 and fuel = "diesel";
-- clint requested a car dealer agent how many petrol cars will there be in 2020?--
select count(*) from `car dekho` where year = 2020 and fuel = "petrol";
-- the manager told the employee to give a print all the fuel cars (petrol,diesel and cng) come by all year--
select year, count(*) from `car dekho` where fuel= "petrol" group by year;
select year, count(*) from `car dekho` where fuel= "diesel" group by year;
select year, count(*) from `car dekho` where fuel= "CNG" group by year;

-- Manager said there where more than 100 cars in a give year , which year had more than 100 cars?--
select year, count(*) from `car dekho` group by year having count(*)> 100;
select year, count(*) from `car dekho` group by year having count(*)< 50;

-- The manager said to the employee all cars details between 2015 to 2023 we need complete list--

select count(*) from `car dekho` where year between 2015 and 2023;

-- The manager to the employee all cars details between 2015 to 2023 we need complete list--
select* from `car dekho` where year between 2015 and 2023;