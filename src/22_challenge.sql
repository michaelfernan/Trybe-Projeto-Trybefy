SELECT
  a.name AS Artista,
  COUNT(s.id) AS "Quantidade de músicas"
FROM
  artists a
JOIN
  albums al ON a.id = al.artist_id
JOIN
  songs s ON al.id = s.album_id
GROUP BY
  a.name
ORDER BY
  COUNT(s.id) DESC,
  a.name ASC
LIMIT 3;
