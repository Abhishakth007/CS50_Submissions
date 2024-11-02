-- *** The Lost Letter ***
SELECT "address" ,"type"
FROM "addresses"
WHERE "id" = (
              SELECT "to_address_id"
              FROM "packages"
              WHERE "from_address_id" = (
                                         SELECT "id"
                                         FROM "addresses"
                                         WHERE "address"
                                         LIKE "900 Somerville Avenue"
                                         AND "contents" = "Congratulatory letter"
                                         )
                );

-- *** The Devious Delivery ***
SELECT "type"
FROM "addresses"
WHERE "id" = (
              SELECT "address_id"
              FROM "scans"
              WHERE "package_id" = (
                                    SELECT "id"
                                    FROM "packages"
                                    WHERE "from_address_id" IS NULL
                                    )
             AND "action" = "Drop"
             );  --Returns Police Station
SELECT "contents"
FROM "packages"
WHERE "from_address_id" IS NULL;   -- Returns Duck Debugger

-- *** The Forgotten Gift ***
SELECT "contents"
FROM "packages"
WHERE "from_address_id" = (
                           SELECT "id"
                           FROM "addresses"
                           WHERE "address"
                           LIKE "109 Tileston Street")
AND "to_address_id" = (
                        SELECT "id"
                        FROM "addresses"
                        WHERE "address"
                        LIKE "728 Maple Place"
                        );  -- Returns Flowers

select * from scans where package_id = (
    select "id" from packages where "from_address_id" = (select "id" from addresses where "address" = "109 Tileston Street")
);

select "address" from addresses where id = 7432;

select * from drivers where id = 17;--Returns Mikel

