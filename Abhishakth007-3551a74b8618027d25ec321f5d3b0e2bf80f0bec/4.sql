SELECT "city" , COUNT("type") as "type" FROM "schools" WHERE "type" = "Public School" GROUP BY "city" ORDER BY "type" DESC,"city" LIMIT 10;
