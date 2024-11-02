SELECT "players"."first_name",
       "players"."last_name"
FROM "players"
JOIN "salaries" ON "salaries"."player_id" = "players"."id"
JOIN "performances" ON "performances"."player_id" = "players"."id"
AND "salaries"."year" = "performances"."year"
WHERE "performances"."year" = 2001
AND "performances"."RBI" != 0
ORDER BY "salaries"."salary" / "performances"."RBI" ASC,
         "players"."id"
LIMIT 10;
