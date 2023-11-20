SELECT
  a.title AS Álbum,
  COUNT(hps.id) AS "Quantidade de músicas reproduzidas"
FROM
  albums a
LEFT JOIN
  songs s ON a.id = s.album_id
LEFT JOIN
  history_play_songs hps ON s.id = hps.song_id
GROUP BY
  a.title
ORDER BY
  COUNT(hps.id) DESC,
  a.title ASC
LIMIT 5;
