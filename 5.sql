 SELECT "city", COUNT("name") AS "num_schools" FROM "schools"
   ...> WHERE "type"= 'Public School'
   ...> GROUP BY "city"
   ...> HAVING "num_schools"<= 3
   ...> ORDER BY "num_schools" DESC, "city" ASC;
