-- 1. Selecionar Nome e Ano
USE Filmes;

SELECT Nome, Ano FROM Filmes;

-- 2. Ordenar por Ano Crescente
SELECT * FROM Filmes ORDER BY Ano ASC;

-- 3. Buscar nome específico
SELECT * FROM Filmes WHERE Nome = 'De Volta para o Futuro';

-- 4. Buscar ano específico
SELECT * FROM Filmes WHERE Ano = 1997;

-- 5. Filmes após 2000
SELECT * FROM Filmes WHERE Ano > 2000;

-- 6. Duração entre 100 e 150 
SELECT * FROM Filmes WHERE Duracao BETWEEN 100 AND 150;

-- 7. Contar por ano 
SELECT Ano, COUNT(*) AS Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC;

-- 8. Atores masculinos 
SELECT Id, PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'M';

-- 9. Atores femininos 
SELECT Id, PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome;

SELECT 
    f.Nome, 
    g.Genero
FROM Filmes f
INNER JOIN FilmesGenero fg ON f.Id = fg.IdFilme
INNER JOIN Generos g ON fg.IdGenero = g.Id;

SELECT 
    f.Nome, 
    g.Genero
FROM Filmes f
INNER JOIN FilmesGenero fg ON f.Id = fg.IdFilme
INNER JOIN Generos g ON fg.IdGenero = g.Id
WHERE g.Genero = 'Mistério';

SELECT 
    f.Nome AS Filme, 
    a.PrimeiroNome, 
    a.UltimoNome, 
    ef.Papel
FROM Filmes f
INNER JOIN ElencoFilme ef ON f.Id = ef.IdFilme
INNER JOIN Atores a ON ef.IdAtor = a.Id;