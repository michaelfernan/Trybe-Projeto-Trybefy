SELECT
    a.name AS Artista,
    GROUP_CONCAT(al.title ORDER BY al.id ASC SEPARATOR ',') AS Álbuns
FROM
    artists a
JOIN
    albums al ON a.id = al.artist_id
GROUP BY
    a.id, a.name
ORDER BY
    a.name ASC;
