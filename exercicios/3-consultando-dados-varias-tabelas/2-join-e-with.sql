-- Crie uma consulta para realizar inner join com as tabelas "tracks", "albums" e "artists"
SELECT *
FROM tracks as tra
INNER JOIN albums as alb 
  ON tra.AlbumId = alb.AlbumId
INNER JOIN artists as art
  ON alb.ArtistId = art.ArtistId

-- Refatore a consulta anterior usando a cláusula "with" e verifique o total de músicas existente na base de terminado artista, ex: Caetano Veloso
WITH musica as (SELECT 
                alb.Title as Nome_Album,
                art.Name as Artista,
                tra.Name as Nome
              FROM tracks as tra
              INNER JOIN albums as alb 
                ON tra.AlbumId = alb.AlbumId
              INNER JOIN artists as art
                ON alb.ArtistId = art.ArtistId)

SELECT  
  Artista,
  COUNT (Nome) as qnt_musica
FROM musica
WHERE Artista LIKE '%Caetano%'