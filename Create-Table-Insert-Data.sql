CREATE EXTENSION IF NOT EXISTS "pgcrypto"

CREATE TABLE IF NOT EXISTS people (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    age INT NOT NULL
);

-- Inserted data for example:

INSERT INTO people (first_name, last_name, age) 
VALUES
    ('Alice', 'Johnson', 25),
    ('Bob', 'Smith', 32),
    ('Carol', 'Davis', 45),
    ('David', 'Miller', 28),
    ('Eva', 'Garcia', 37),
    ('Frank', 'Martinez', 50),
    ('Grace', 'Lopez', 22),
    ('Henry', 'Gonzalez', 41),
    ('Ivy', 'Wilson', 29),
    ('Jack', 'Anderson', 34),
    ('Karen', 'Thomas', 31),
    ('Leo', 'Taylor', 27),
    ('Mia', 'Moore', 39),
    ('Nathan', 'Jackson', 46),
    ('Olivia', 'White', 24),
    ('Peter', 'Harris', 33),
    ('Quinn', 'Clark', 26),
    ('Rachel', 'Lewis', 38),
    ('Steve', 'Robinson', 43),
    ('Tina', 'Walker', 30);
