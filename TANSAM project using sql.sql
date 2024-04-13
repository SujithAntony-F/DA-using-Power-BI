select * from electrical_vehicle;

--Cars produced at King's County--
select concat(make,'-',model) as ev_car from electrical_vehicle
where county='King';

--Counties--
select distinct(county) from electrical_vehicle;

--Counties count--
select count(distinct(county)) from electrical_vehicle;

--Cities--
select distinct(county) from electrical_vehicle;

--Cities count--
select count(distinct(city)) from electrical_vehicle;

--Total Count of models produced--
select model,count(model) from electrical_vehicle
group by model
order by count(model) asc;

--Maximum range provided by a Company's cars--
select make,max(electric_range) from electrical_vehicle
group by make
order by max(electric_range) desc;

--Total count produced by each company--
select make,count(model) as counts from electrical_vehicle
group by make
order by count(model) desc;

--Total count produced by each company and their respective model names--
select make,array_agg(model) as Total_makes,count(model) as counts from electrical_vehicle
group by make
order by count(model) desc; 

--Vehicles produced as per year basis--
select model_year,count(model) as production_count from electrical_vehicle
group by model_year
order by model_year asc;

--Average electric range produced by each EV types--
select electric_vehicle_type,avg(electric_range) as avg_electric_range from electrical_vehicle
group by electric_vehicle_type;

--Maximum electric range produced by these two--
select electric_vehicle_type,max(electric_range) as max_range from electrical_vehicle
group by electric_vehicle_type;

--No. of models produced by each type of Vehicles--
select electric_vehicle_type,count(model) as model_count from electrical_vehicle
group by electric_vehicle_type;



