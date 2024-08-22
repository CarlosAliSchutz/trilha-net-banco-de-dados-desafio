-- 1
SELECT Nome, Ano FROM filmes.filmes;
-- 2
SELECT * FROM filmes.filmes order by Ano;
-- 3
SELECT * FROM filmes.filmes WHERE Nome = "De Volta para o Futuro";
-- 4
SELECT * FROM filmes.filmes WHERE Ano = "1997";
-- 5
SELECT * FROM filmes.filmes WHERE Ano > 2000;
-- 6
SELECT * FROM filmes.filmes WHERE Duracao > 100 AND Duracao < 150;
-- 7
SELECT Ano, COUNT(*) as Quantidade FROM filmes.filmes GROUP BY Ano order by Quantidade desc;
-- 8
SELECT * FROM filmes.atores where Genero = "M";
-- 9
SELECT * FROM filmes.atores where Genero = "F" order by PrimeiroNome;
-- 10
SELECT filmes.Nome, generos.Genero
FROM filmes.filmes 
join filmesgenero 
	on filmes.Id = filmesgenero.IdFilme
join generos 
	on generos.Id = filmesgenero.IdGenero;
-- 11
SELECT filmes.Nome, generos.Genero
FROM filmes.filmes 
join filmesgenero 
	on filmes.Id = filmesgenero.IdFilme
join generos 
	on generos.Id = filmesgenero.IdGenero
where generos.genero = "Mistério"
-- 12
SELECT filmes.Nome, atores.PrimeiroNome, atores.UltimoNome, elencofilme.Papel
FROM filmes.filmes 
join elencofilme
	on elencofilme.IdFilme = filmes.Id
join atores
	on atores.Id = elencofilme.IdAtor
