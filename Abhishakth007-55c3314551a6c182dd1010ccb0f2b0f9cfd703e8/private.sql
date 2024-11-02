CREATE TABLE "triplets" ("sentence" INTEGER, "char_start" INTEGER, "phrase_length" INTEGER);
INSERT INTO "triplets" ("sentence","char_start","phrase_length") VALUES
(14, 98, 4),
(114, 3, 5),
(618, 72, 9),
(630, 7, 3),
(932, 12, 5),
(2230, 50, 7),
(2346, 44, 10),
(3041, 14, 5);
CREATE VIEW "message" AS SELECT substr("sentences"."sentence","triplets"."char_start" , "triplets"."phrase_length") AS "phrase" FROM "sentences" JOIN "triplets" ON "triplets"."sentence"="sentences"."id";

