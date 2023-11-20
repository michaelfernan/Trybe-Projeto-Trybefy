SELECT
    u.name AS Nome,
    COUNT(h.id) AS "Quantidade de músicas reproduzidas"
FROM
    users u
JOIN
    history_play_songs h ON u.id = h.user_id
GROUP BY
    u.id, u.name
ORDER BY
    COUNT(h.id) DESC, u.name;
