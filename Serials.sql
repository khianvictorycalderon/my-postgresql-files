-- 3 types of SERIAL

-- NOTE: Serials are not True types of data but rather a shortcut
-- Serials are most commonly used as id for auto increment

-- Small Serial
CREATE TABLE users (
    id SMALLSERIAL PRIMIARY KEY, -- Range: 1 - 32,767
    user_name VARCHAR(50) NOT NULL
);

-- Regular Serial
CREATE TABLE users (
    id SERIAL PRIMIARY KEY, -- Range: 1 - 2,147,483,647
    user_name VARCHAR(50) NOT NULL
);

-- Big Serial
CREATE TABLE users (
    id BIGSERIAL PRIMIARY KEY, -- Range: 1 - 9,223,372,036,854,775,807
    user_name VARCHAR(50) NOT NULL
);