UPDATE "users" SET "password" = "982c0381c279d139fd221fce974916e7" WHERE "username" = "admin";
DELETE FROM "user_logs" WHERE "id" = (SELECT "id"  FROM "user_logs" ORDER BY "id" DESC  LIMIT 1);
 INSERT INTO "user_logs" ("type","old_username","new_username","old_password","new_password") VALUES ("update","admin","admin","e10adc3949ba59abbe56e057f20f883e",(SELECT "password" FROM "users" WHERE "username" = "emily33"));
