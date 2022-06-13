select  CodeDepartement as 'Département', round(AVG(Val_Fonc/Surfcarrez),2) as 'Prix au metre carré'
from commune
inner join biensimmobilier on (biensimmobilier.Id_com = commune.Id_com)
inner join transaction on (biensimmobilier.Id_loc = transaction.Id_loc)
group by 1 
order by 2 desc
limit 10
