.mode csv
.import meteorites.csv "meteorites_temp"

UPDATE "meteorites_temp" SET "mass" = NULL WHERE "mass" = '' OR "mass" IS NULL;
UPDATE "meteorites_temp" SET "lat" = NULL WHERE "lat" = '' OR "lat" IS NULL;
UPDATE "meteorites_temp" SET "long" = NULL WHERE "long" = '' OR "long" IS NULL;
UPDATE "meteorites_temp" SET "year" = NULL WHERE "year" = '' OR "year" IS NULL;

UPDATE "meteorites_temp" SET "mass" = ROUND("mass", 2), "lat" = ROUND("lat", 2), "long" = ROUND("long", 2);


CREATE TABLE "meteorites" AS
SELECT
    ROW_NUMBER() OVER (ORDER BY "year", "name") AS id,
    "name",
    "class",
    "mass",
    "discovery",
    "year",
    "lat",
    "long"
FROM "meteorites_temp";

DROP TABLE "meteorites_temp";
