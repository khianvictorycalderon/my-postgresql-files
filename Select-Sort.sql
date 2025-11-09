-- Orders the results first by age in ascending order; if multiple people have the same age, 
-- it then orders those people by last_name in ascending alphabetical order
SELECT * FROM people
ORDER BY age ASC, last_name ASC;