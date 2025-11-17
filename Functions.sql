-- Functions are also known as Stored Procedures
CREATE OR REPLACE FUNCTION add_numbers(a INTEGER, b INTEGER)
    RETURNS INTEGER
    LANGUAGE plpgsql
    AS $$
        BEGIN
            RETURN a + b;
    END;
    $$;

-- Example usage:
SELECT add_numbers(5, 10);  -- Output: 15