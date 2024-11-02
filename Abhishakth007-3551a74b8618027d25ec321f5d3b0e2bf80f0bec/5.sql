 SELECT "city" , COUNT("type") AS "Count_of_schools" FROM "schools" WHERE "type" ="Public School" GROUP BY "city" HAVING "Count_of_schools" <=3 ORDER BY "Count_of_schools" DESC,"city" ASC ;
