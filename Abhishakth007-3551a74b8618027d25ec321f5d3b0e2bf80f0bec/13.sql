SELECT "name" FROM "schools" JOIN "expenditures" ON "schools"."district_id" = "expenditures"."district_id" ORDER BY "expenditures"."per_pupil_expenditure" DESC LIMIT 3;
