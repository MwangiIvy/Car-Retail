select*
from `car retail`.`car retail data`;

alter table `car retail`.`car retail data`
add column car_age int;

update  `car retail`.`car retail data`
set car_age= 2025- `year of manufacture`;

alter table `car retail`.`car retail data`
add column price_per_km decimal(5,2);

update  `car retail`.`car retail data`
set price_per_km= `price`/`Mileage`;

alter table `car retail`.`car retail data`
add column Engine_power_category varchar(100);

update  `car retail`.`car retail data`
set Engine_power_category= case
when `Engine size`< 1.4 then 'Lower Power'
when `Engine size`>=1.4 and `Engine size` <2 then 'Moderate Power'
when`Engine size` >=2 and `Engine size` <2.6 then 'High Power'
when `Engine size`>=2.6 then 'Very High Power'
else 'unknown'
end;

