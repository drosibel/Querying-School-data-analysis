SELECT "city", COUNT("name") AS "num_schools" FROM "schools"
   ...> WHERE "type"= 'Public School'
   ...> GROUP BY "city"
   ...> ORDER BY "num_schools" DESC, "city" ASC
   ...> LIMIT 10;
