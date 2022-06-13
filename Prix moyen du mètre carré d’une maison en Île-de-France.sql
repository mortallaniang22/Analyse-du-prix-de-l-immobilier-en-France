select round(avg(Val_Fonc/Surfcarrez),2) as "Prix moyen du mètre carré d’une maison en Île-de-France"
from transaction
inner join biensimmobilier on (transaction.Id_Loc = biensimmobilier.Id_Loc)
inner join commune on ( biensimmobilier.Id_com = commune.Id_com)
where TypLoc = 'maison'
and CodeDepartement in (75, 77, 78, 91, 92, 93, 94, 95)

 

