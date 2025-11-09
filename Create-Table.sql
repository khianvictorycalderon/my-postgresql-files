CREATE EXTENSION IF NOT EXISTS "pgcrypto";

CREATE TABLE IF NOT EXISTS users (
    user_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_email VARCHAR(150) UNIQUE,
    user_name VARCHAR(200) DEFAULT 'Unknown',
    user_address VARCHAR(200) DEFAULT 'Earth',
    user_age INT DEFAULT 0
);