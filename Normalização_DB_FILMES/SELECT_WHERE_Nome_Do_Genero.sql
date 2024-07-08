/* SELECT DA TABLE FILMES_NORMALIZADO TRAZENDO NOME DO GENERO E DO DIRETOR AO INVÉS DA ID */

SELECT DISTINCT 
	Filme_Titulo, Filme_DataLancamento, Filme_Duracao, Genero_nome, Diretor_Nome, Filme_Elenco, Filme_Produtoras, Filme_Produtores, Filme_Roteiristas, Filme_Orcamento
FROM 
	Filme, Genero, Diretor
WHERE 
	Genero.id_Genero = Filme.id_Genero AND Diretor.id_Diretor = Filme.id_Diretor