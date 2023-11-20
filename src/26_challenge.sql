SELECT
  a.name AS Artista,
  COUNT(hps.id) AS "Quantidade de músicas reproduzidas"
FROM
  artists a
LEFT JOIN
  albums al ON a.id = al.artist_id
LEFT JOIN
  songs s ON al.id = s.album_id
LEFT JOIN
  history_play_songs hps ON s.id = hps.song_id
GROUP BY
  a.name
HAVING
  COUNT(hps.id) > 10
ORDER BY
  a.name ASC;
