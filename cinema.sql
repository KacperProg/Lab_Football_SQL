DROP TABLE movies;

CREATE TABLE movies (
    id SERIAL,
    title VARCHAR(255),
    duration INT,
    rating VARCHAR(255)
);

-- CRUD 
-- Create/Read/Update/Delete

INSERT INTO movies (title, duration, rating) VALUES ('Alien', 117, '18');
INSERT INTO movies (title, duration, rating) VALUES ('The intimidation game', 125, '15');
INSERT INTO movies (title, duration, rating) VALUES ('Iron Man', 114, '12A');
INSERT INTO movies (title, duration, rating) VALUES ('The Martian', 144, '12A');
INSERT INTO movies (title, duration, rating) VALUES ('Braveheart', 155, 'PG');

-- UPDATE movies SET rating = '12A' WHERE id = 5;
UPDATE movies SET (rating, duration) = ('12A', 178) WHERE id = 5;

-- DELETE FROM movies WHER  E id = 5;


-- Atomicity 
-- BEGIN;
-- UPDATE people SET account_balance=0 WHERE id=1;
-- SAVEPOINT money_withdrawn;
-- UPDATE people SET account_balance=100 WHERE id=2;
-- ROLLBACK TO money_withdrawn;
-- UPDATE people SET account_balance=10 WHERE id=2;
-- COMMIT;




-- SELECT id,title FROM movies WHERE rating='12A';
-- SELECT * FROM movies WHERE duration>115;
SELECT * FROM movies;