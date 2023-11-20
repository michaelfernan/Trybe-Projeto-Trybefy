SELECT
    u.full_name AS Nome,
    COUNT(h.song_id) AS `Quantidade de músicas reproduzidas`
FROM
    users u
JOIN
    history_play_songs h ON u.id = h.user_id
GROUP BY
    u.id
ORDER BY
    `Quantidade de músicas reproduzidas` DESC,
    Nome;
