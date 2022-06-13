SELECT Nb_Piece,
	(round((count(Id_Transac)/
		(SELECT count(Id_Transac) as "Nombre total d'appartement vendu au premier semestre 2020"
		FROM transaction 
		JOIN biensimmobilier on (biensimmobilier.Id_Loc = transaction.Id_Loc)
		WHERE TypLoc = 'Appartement')
	)*100, 2)) as "Preportion des ventes d'appartements par le nombre de pieces"
FROM transaction 
JOIN biensimmobilier on (biensimmobilier.Id_Loc = transaction.Id_Loc)
WHERE TypLoc = 'Appartement'
GROUP BY Nb_Piece
order by Nb_Piece desc;
