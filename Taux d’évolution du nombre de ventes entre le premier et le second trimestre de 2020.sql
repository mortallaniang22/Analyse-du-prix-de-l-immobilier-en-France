with

table1 as (select count(id_transac) as Trimestre1
from transaction
where Date_Mutation between '2020-01-01' and '2020-03-31'),

table2 as (select count(id_transac) as Trimestre2
from transaction
where Date_Mutation between '2020-04-01' and '2020-06-30')

select Trimestre1 as 'Nombre de vents au premier trimestre', 
Trimestre2 as 'Nombre de vents au second trimestre',
round(((Trimestre2-Trimestre1)/Trimestre1)*100,2) as "taux d'evolution"
from table1, table2

