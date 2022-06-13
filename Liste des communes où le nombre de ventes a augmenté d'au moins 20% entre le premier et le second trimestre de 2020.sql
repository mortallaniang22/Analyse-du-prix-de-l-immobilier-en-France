with
Table1 as (select Nom_Com, count(id_transac) as Trimestre1
from transaction
inner join biensimmobilier on (transaction.Id_Loc = biensimmobilier.Id_Loc)
inner join commune on ( biensimmobilier.Id_com = commune.Id_com)
where Date_Mutation between '2020-01-01' and '2020-03-31'
group by Nom_Com),

Table2 as (select Nom_Com, count(id_transac) as Trimestre2
from transaction
inner join biensimmobilier on (transaction.Id_Loc = biensimmobilier.Id_Loc)
inner join commune on ( biensimmobilier.Id_com = commune.Id_com)
where Date_Mutation between '2020-03-31' and '2020-06-30'
group by Nom_Com)

select Nom_Com, Trimestre1 as 'Nombre de vents au premier trimestre', 
Trimestre2 as 'Nombre de vents au second trimestre', 
round(((Trimestre2-Trimestre1)/Trimestre1)*100,2) as "taux d'evolution"
from table1 
inner join table2 using (Nom_Com)
where round(((Trimestre2-Trimestre1)/Trimestre1)*100,2) > 20




