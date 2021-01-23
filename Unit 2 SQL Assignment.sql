-- 1. Join the film to the film_actor table.
SELECT * FROM FILM
FULL OUTER JOIN FILM_ACTOR ON FILM_ACTOR.FILM_ID = FILM.FILM_ID

-- 2. Join the actor table to the film_actor table.
SELECT * FROM ACTOR
FULL OUTER JOIN FILM_ACTOR ON FILM_ACTOR.ACTOR_ID = ACTOR.ACTOR_ID

-- 3. Try to join the actor, film_actor, and film table together (3 joins!)
SELECT * FROM ACTOR
INNER JOIN FILM_ACTOR ON FILM_ACTOR.ACTOR_ID = ACTOR.ACTOR_ID 
INNER JOIN FILM ON FILM_ACTOR.FILM_ID = FILM.FILM_ID


