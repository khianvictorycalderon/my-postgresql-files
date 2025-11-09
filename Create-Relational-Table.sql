CREATE EXTENSION IF NOT EXISTS "pgcrypto";

CREATE TABLE IF NOT EXISTS customer (
    customer_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    customer_first_name TEXT NOT NULL,
    customer_last_name TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS customer_order (
    customer_order_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    customer_id UUID NOT NULL REFERENCES customer(customer_id) ON DELETE CASCADE,
    customer_order_name TEXT NOT NULL
);