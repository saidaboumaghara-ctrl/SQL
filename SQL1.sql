Select Makes.Make,count(VehicleMasterDetails.MakeID) as Counters
from VehicleMasterDetails inner join Makes on VehicleMasterDetails.MakeID=Makes.MakeID
where(VehicleMasterDetails.Year   between 1990 and 2000) 
group by Makes.Make 
having count(*)>1200
order by Counters  desc;
