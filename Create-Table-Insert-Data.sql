CREATE EXTENSIONS IF NOT EXISTS "pgcrypto"

CREATE TABLE IF NOT EXISTS people (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    age INT NOT NULL
);