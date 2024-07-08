/* Criando Tables */

use Filmes_Normalizado
GO

CREATE TABLE Diretor
(
	id_Diretor INT NOT NULL IDENTITY(1, 1),
	Diretor_Nome VARCHAR(30),

	CONSTRAINT id_Diretor_PK PRIMARY KEY (id_Diretor)
)

use Filmes_Normalizado
GO

CREATE TABLE Genero
(
	id_Genero int NOT NULL IDENTITY(1, 1),
	Genero_nome VARCHAR(20)

	CONSTRAINT id_Genero_PK PRIMARY KEY (id_Genero)
)

use Filmes_Normalizado
GO

CREATE TABLE Filme
(
	id_Filme INT NOT NULL IDENTITY(1, 1),
	Filme_Titulo VARCHAR(60),
	Filme_DataLancamento DATE,
	Filme_Duracao VARCHAR(9),
	id_Genero int NOT NULL,
	id_Diretor INT NOT NULL,
	Filme_Elenco VARCHAR (100),
	Filme_Produtoras VARCHAR(100),
	Filme_Produtores VARCHAR(100),
	Filme_Roteiristas VARCHAR(100),
	Filme_Orcamento FLOAT

	CONSTRAINT id_Filme_PK PRIMARY KEY (id_Filme),
	CONSTRAINT id_Genero_FK FOREIGN KEY (id_Genero) REFERENCES Genero (id_Genero),
	CONSTRAINT id_Diretor_FK FOREIGN KEY (id_Diretor) REFERENCES Diretor (id_Diretor)
)

use Filmes_Normalizado
GO

CREATE TABLE Visualização
(
	id_Visualizacao INT NOT NULL IDENTITY(1, 1),
	Visualizacao_Brasil FLOAT,
	Visualizacao_Argentina FLOAT,
	Visualizacao_EUA FLOAT, 
	Visualizacao_Canada FLOAT,
	Visualizacao_UK FLOAT,
	Visualizacao_Franca FLOAT,
	Visualizacao_Espanha FLOAT,
	id_Filme INT NOT NULL

	CONSTRAINT id_Visualizacao_FK PRIMARY KEY (id_Visualizacao),
	CONSTRAINT id_Filme_FK FOREIGN KEY (id_Filme) REFERENCES Filme (id_Filme)
)

use Filmes_Normalizado
GO

CREATE TABLE Faturamento
(
	id_Faturamento INT NOT NULL IDENTITY(1, 1),
	Faturamento_Brasil FLOAT,
	Faturamento_Argentina FLOAT,
	Faturamento_EUA FLOAT, 
	Faturamento_Canada FLOAT,
	Faturamento_UK FLOAT,
	Faturamento_Franca FLOAT,
	Faturamentoo_Espanha FLOAT,
	id_Filme INT NOT NULL

	CONSTRAINT id_Faturamento_FK PRIMARY KEY (id_Faturamento),
	CONSTRAINT id_Filme_Faturamento_FK FOREIGN KEY (id_Filme) REFERENCES Filme (id_Filme)
)

use Filmes_Normalizado
GO