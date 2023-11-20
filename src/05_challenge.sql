SELECT
  full_name AS "Nome completo",
  birthday AS "Data de nascimento"
FROM
  users
WHERE
  active = true
  AND EXTRACT(YEAR FROM birthday) >= 1990;
