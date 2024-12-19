--Створення таблиці
CREATE TABLE users (
id BIGINT NOT NULL PRIMARY KEY,
first_name VARCHAR(20) NOT NULL,
last_name VARCHAR(20) NOT NULL,
email VARCHAR(40) NOT NULL
);

-- Додавання нової колонки

INSERT INTO users (id, first_name, last_name, email) VALUES
(1, 'Serhii', 'Tsukanov', 'serhii.doe@example.com'),
(2, 'Anna', 'Radchenko', 'anna.smith@example.com'),
(3, 'Mark', 'Shamanovskiy', 'mark.johnson@example.com');

-- Запит на вибірку даних

SELECT * FROM users WHERE id <3;

-- Створення процедури

CREATE FUNCTION GetEvenIdUsers()
RETURNS TABLE(user_id BIGINT, first_name VARCHAR, last_name VARCHAR, email VARCHAR) AS $$
BEGIN
    RETURN QUERY
    SELECT u.id, u.first_name, u.last_name, u.email
    FROM users u
    WHERE MOD(u.id, 2) = 0;
END;
$$ LANGUAGE plpgsql;

--Виклик процедури

SELECT * FROM GetEvenIdUsers();