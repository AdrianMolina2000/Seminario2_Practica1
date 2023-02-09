insert into pais (pais) select distinct country from temporal ;

insert into fecha (year) select distinct year from temporal ;

insert into tsunami (max_water_height, total_deaths, total_damage, total_houses_destroyed, total_houses_damaged, id_pais, id_fecha)
select   coalesce(cast(max_water_height as decimal(10,2)), 0), 
         coalesce(cast(total_deaths as int), 0), 
         coalesce(cast(total_damage as decimal(10,2)), 0), 
         coalesce(cast(total_houses_destroyed as int), 0), 
         coalesce(cast(total_houses_damaged as int), 0), pais.id, fecha.id
from temporal
inner join pais on pais.pais = temporal.country
inner join fecha on fecha.year = temporal.year ;