SELECT
    ar.name AS "Artista",
    COUNT(al.id) AS "Quantidade de álbuns"
FROM
    artists ar
LEFT JOIN
    albums al ON ar.id = al.artist_id
GROUP BY
    ar.id
ORDER BY
    COUNT(al.id) DESC, ar.name;
