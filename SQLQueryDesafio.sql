
/*1 - Buscar o nome e ano dos filmes*/
SELECT nome, ano from Filmes

/*2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano*/
SELECT nome, ano from Filmes ORDER BY ano 

/*3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração*/
SELECT nome, ano, duracao from Filmes WHERE nome = 'de volta para o futuro'

/*4 - Buscar os filmes lançados em 1997*/
SELECT nome, ano, duracao from Filmes WHERE ano = 1997

/*5 - Buscar os filmes lançados APÓS o ano 2000*/
SELECT nome, ano, duracao from Filmes WHERE ano>2000

/*6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente*/
SELECT nome, ano, duracao from Filmes WHERE duracao>100 and duracao<150 ORDER BY duracao

/*7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela quantidade em ordem decrescente*/
SELECT ano, COUNT(ano) as Quantidade FROM Filmes GROUP BY ano ORDER BY Quantidade DESC;

/*8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome*/
SELECT PrimeiroNome, UltimoNome, genero from Atores WHERE genero = 'M'

/*9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome*/
SELECT * from Atores WHERE genero = 'F' ORDER BY PrimeiroNome

/*10 - Buscar o nome do filme e o gênero*/
SELECT d.nome as nome_filme, g.genero as genero_nome 
from FilmesGenero f 
JOIN Generos g ON f.IdGenero = g.id 
JOIN Filmes d ON f.idFilme = d.id;

/*11 - Buscar o nome do filme e o gênero do tipo "Mistério"*/
SELECT d.nome as nome_filme, g.genero as genero_nome 
from FilmesGenero f
JOIN Generos g ON f.IdGenero = g.id
JOIN Filmes d ON f.IdFilme = d.id WHERE g.genero = 'Mistério'

/*12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel*/
SELECT f.nome as nome_filme, a.PrimeiroNome as primeiro_nome, a.UltimoNome as ultimo_nome, papel
from ElencoFilme e
JOIN Atores a ON e.IdAtor = a.Id
JOIN Filmes f ON e.IdFilme = f.Id