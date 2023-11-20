CREATE TABLE IF NOT EXISTS plans (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    price FLOAT(5,2) NOT NULL
);
INSERT INTO plans (id, name, price)
VALUES
    (1, 'Anual', 39.9),
    (2, 'Mensal', 5.9),
    (3, 'Trimestral', 19.9);

CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(50) NOT NULL,
    email VARCHAR(50)  NOT NULL,
    birthday DATE NOT NULL,
    active BOOLEAN DEFAULT 1 NOT NULL,
    plan_id INT NOT NULL,
    FOREIGN KEY (plan_id) REFERENCES plans(id)
);


INSERT INTO users (id, full_name, email, birthday, active, plan_id)
VALUES
    (1, 'Pedro', 'pedro@trybefy.com', '1990-01-01', true, 1),
    (2, 'Camila', 'camila@trybefy.com', '1988-12-01', true, 1),
    (3, 'Guilherme', 'guilherme@trybefy.com', '1988-12-01', true, 2),
    (4, 'Andressa', 'andressa@trybefy.com', '1984-07-20', false, 3),
    (5, 'Luís', 'luis@trybefy.com', '2000-01-01', true, 2),
    (6, 'Cássia', 'cassia@trybefy.com', '1995-12-01', true, 1),
    (7, 'Simone', 'simone@trybefy.com', '1988-12-01', true, 1),
    (8, 'Rogério', 'rogerio@trybefy.com', '1979-12-01', true, 3),
    (9, 'Júlio', 'julio@trybefy.com', '1994-06-20', false, 2),
    (10, 'Melissa', 'melissa@trybefy.com', '1997-04-11', true, 2);
