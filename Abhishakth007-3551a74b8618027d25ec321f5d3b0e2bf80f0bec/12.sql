SELECT "districts"."name" ,"expenditures"."per_pupil_expenditure" , "staff_evaluations"."exemplary" FROM "districts" JOIN "expenditures" ON "expenditures"."district_id" = "districts"."id" JOIN "staff_evaluations" ON "districts"."id" = "staff_evaluations"."district_id" WHERE "districts"."type" = "Public School District" AND "districts"."state" = "MA" AND "per_pupil_expenditure">(SELECT AVG("per_pupil_expenditure") FROM "expenditures") AND "exemplary"> (SELECT AVG("exemplary") FROM "staff_evaluations") ORDER BY "staff_evaluations"."exemplary" DESC, "expenditures"."per_pupil_expenditure" DESC;