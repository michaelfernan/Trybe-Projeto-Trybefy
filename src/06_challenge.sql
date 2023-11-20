UPDATE users
SET active = true
WHERE full_name = 'Andressa';


UPDATE users
SET active = false
WHERE full_name = 'Rogério';


UPDATE users
SET plan_id = (SELECT id FROM plans WHERE name = 'Mensal')
WHERE full_name = 'Camila';
