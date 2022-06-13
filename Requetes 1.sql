SELECT count(Id_Transac) as "Nombre total d'appartement vendu au premier semestre 2020"
FROM transaction 
JOIN biensimmobilier on (biensimmobilier.Id_Loc = transaction.Id_Loc)
WHERE TypLoc = 'Appartement'
AND Date_Mutation between '2020-01-01' and '2020-06-30';