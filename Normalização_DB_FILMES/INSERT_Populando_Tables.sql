/* POPULANDO TODAS AS TABLES */

INSERT Diretor (Diretor_Nome)
VALUES 
('Peter Jackson'),
('Chris Columbus'),
('Kelsey Mann'),
('Anthony Russo, Joe Russo'),
('Todd Phillips')

INSERT Genero (Genero_nome)
VALUES
('Comedia'),
('Fantasia'),
('Animação'),
('Ação'),
('Drama'),
('Romance'),
('Suspense'),
('Aventura')

INSERT Filme (Filme_Titulo, Filme_DataLancamento, Filme_Duracao, id_Genero, id_Diretor, Filme_Elenco, Filme_Produtoras, Filme_Produtores, Filme_Roteiristas, Filme_Orcamento)
VALUES 
('O Senhor dos Anéis: A Sociedade do Anel', '2001-12-19', '2h 96min', 2, 1, 'Elijah Wood, Ian McKellen, Sean Astin', 'New Line Cinema, WingNut Films', 'Peter Jackson, Fran Walsh', 'Fran Walsh, Philippa Boyens', 93000000.0),
('Harry Potter e a Pedra Filosofal', '2001-09-16', '2h 56min', 2, 2, 'Daniel Radcliffe, Rupert Grint', 'Warner Bros. Pictures', 'David Heyman', 'Steve Kloves', 125000000.0),
('Divertidamente 2', '2024-06-14', '1h 36min', 3, 3, 'Amy Poehler, Phyllis Smith, Mindy Kaling, Bill Hader, Lewis Black', 'Pixar Animation Studios, Walt Disney Pictures', 'Mark Nielsen', 'Meg LeFauve', 175000000.0),
('Vingadores: Ultimato', '2019-04-26', '3h 1min', 4, 4, 'Robert Downey Jr, Chris Evans', 'Marvel Studios', 'Kevin Feige', 'Christopher Markus, Stephen', 356000000.0),
('Coringa', '2019-10-4', '2h 3min', 5, 5, 'Joaquin Phoenix, Robert De Niro', 'Warner Bros. Pictures, DC Films', 'Todd Phillips, Bradley Cooper', 'Todd Phillips, Scott Silver', 55000000.0)

INSERT Visualização (Visualizacao_Brasil, Visualizacao_Argentina, Visualizacao_EUA, Visualizacao_Canada, Visualizacao_UK, Visualizacao_Franca, Visualizacao_Espanha, id_Filme)
VALUES
(5000000.0, 3000000.0, 20000000.0, 4000000.0, 6000000.0, 5000000.0, 4000000.0, 1),
(8000000.0, 4000000.0, 25000000.0, 5000000.0, 7000000.0, 6000000.0, 5000000.0, 2),
(6000000.0, 3000000.0, 45000000.0, 7000000.0, 2000000.0, 9000000.0, 3000000.0, 3),
(6000000.0, 3000000.0, 45000000.0, 7000000.0, 2000000.0, 9000000.0, 3000000.0, 4),
(7000000.0, 4000000.0, 23000000.0, 23000000.0, 8000000.0, 7000000.0, 6000000.0, 5)

INSERT Faturamento (Faturamento_Brasil, Faturamento_Argentina, Faturamento_EUA, Faturamento_Canada, Faturamento_UK, Faturamento_Franca, Faturamentoo_Espanha, id_Filme)
VALUES 
(35000000.0, 20000000.0, 315000000.0, 42000000.0, 45000000.0, 38000000.0, 34000000.0, 1),
(52000000.0, 27000000.0, 330000000.0, 48000000.0, 60000000.0, 49000000.0, 41000000.0, 2),
(23000000.0, 15000000.0, 210000000.0, 29000000.0, 31000000.0, 27000000.0, 25000000.0, 3),
(70000000.0, 40000000.0, 600000000.0, 80000000.0, 100000000.0, 75000000.0, 65000000.0, 4),
(40000000.0, 22000000.0, 335000000.0, 45000000.0, 50000000.0, 43000000.0, 39000000.0, 5)