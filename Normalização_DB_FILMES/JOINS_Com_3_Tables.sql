/* JOINS COM AS 3 TABLES */


/* JOIN APENAS DO TITULO "SENHOR" */
SELECT 
	F.Filme_Titulo,
	F.Filme_DataLancamento,
	F.Filme_Duracao,
	F.id_Genero,
	F.id_Diretor,
	V.Visualizacao_Brasil,
	V.Visualizacao_Argentina,
	V.Visualizacao_EUA,
	V.Visualizacao_Canada,
	V.Visualizacao_UK,
	V.Visualizacao_Franca,
	V.Visualizacao_Espanha
FROM Filme AS F
INNER JOIN Visualização AS V
ON F.id_Filme = V.id_Filme
WHERE 
	F.Filme_Titulo LIKE '%senhor%' 


/* JOIN DE FILME, VISUALIZAÇÃO E FATURAMENTO */
SELECT 
	F.Filme_Titulo,
	F.Filme_DataLancamento,
	F.id_Genero,
	V.Visualizacao_Brasil,
	FAT.Faturamento_Brasil,
	V.Visualizacao_Argentina,
	FAT.Faturamento_Argentina,
	V.Visualizacao_EUA,
	FAT.Faturamento_EUA,
	V.Visualizacao_Canada,
	FAT.Faturamento_Canada,
	V.Visualizacao_UK,
	FAT.Faturamento_UK,
	V.Visualizacao_Franca,
	FAT.Faturamento_Franca,
	V.Visualizacao_Espanha,
	FAT.Faturamentoo_Espanha
FROM Filme AS F
LEFT JOIN Visualização AS V ON F.id_Filme = V.id_Filme
LEFT JOIN Faturamento AS FAT ON F.id_Filme = FAT.id_Filme


/* JOIN JUNTANDO AS 5 TABELAS */
SELECT
	F.Filme_Titulo,
	G.Genero_nome,
	D.Diretor_Nome,
	V.Visualizacao_Brasil,
	FAT.Faturamento_Brasil,
	V.Visualizacao_EUA,
	FAT.Faturamento_EUA
FROM Filme AS F 
RIGHT JOIN Visualização AS V ON F.id_Filme = V.id_Filme
RIGHT JOIN Faturamento AS FAT ON F.id_Filme = FAT.id_Filme
RIGHT JOIN Genero AS G ON F.id_Genero = G.id_Genero
RIGHT JOIN Diretor AS D ON D.id_Diretor = F.id_Diretor