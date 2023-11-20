SELECT
    full_name AS "Nome completo",
    email AS "E-mail",
    plans.name AS "Plano"
FROM
    users
JOIN
    plans ON users.plan_id = plans.id
ORDER BY
    full_name;
