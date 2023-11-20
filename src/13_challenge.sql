SELECT
    ar.name AS "Artista"
FROM
    artists ar
JOIN
    albums al ON ar.id = al.artist_id
GROUP BY
    ar.id
HAVING
    COUNT(al.id) >= 3
ORDER BY
    ar.name;
