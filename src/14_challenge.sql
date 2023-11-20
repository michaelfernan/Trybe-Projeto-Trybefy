SELECT
    name AS Artista,
    GROUP_CONCAT(title ORDER BY title ASC SEPARATOR ',') AS Álbuns
FROM
    artists
JOIN
    albums ON artists.id = albums.artist_id
GROUP BY
    name
ORDER BY
    name ASC, title ASC;
