/* UTILIZANDO SUM JUNTO AO TITULO DO FILME */
SELECT Filme_Titulo, SUM 
(
	+ Faturamento_Brasil
	+ Faturamento_Argentina
	+ Faturamento_EUA
	+ Faturamento_Canada
	+ Faturamento_UK
	+ Faturamento_Franca
	+ Faturamentoo_Espanha
) AS Total_Faturamento
FROM 
	Filme, Faturamento
WHERE Filme.id_Filme = Faturamento.id_filme
GROUP BY Filme_Titulo


/* UTILIZANDO SUM COM TODOS OS VALORES */
SELECT SUM 
(
	+ Faturamento_Brasil
	+ Faturamento_Argentina
	+ Faturamento_EUA
	+ Faturamento_Canada
	+ Faturamento_UK
	+ Faturamento_Franca
	+ Faturamentoo_Espanha
) AS Total_Faturamento
FROM 
	Faturamento