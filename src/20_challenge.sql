SELECT
  a.name AS Artista,
  al.title AS Álbum,
  s.title AS Música
FROM
  artists a
JOIN
  albums al ON a.id = al.artist_id
JOIN
  songs s ON al.id = s.album_id
WHERE
  a.name != 'The Beatles'
ORDER BY
  a.name ASC,
  al.title ASC,
  s.title ASC;
