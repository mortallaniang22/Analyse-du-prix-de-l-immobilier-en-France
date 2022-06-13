select biensimmobilier.Id_Loc, TypLoc, Val_Fonc, CodeDepartement, Surfcarrez
from commune
inner join biensimmobilier using (Id_com)
inner join transaction using (Id_Loc)
where TypLoc = 'Appartement'
order by TypLoc, Val_Fonc desc
limit 10
