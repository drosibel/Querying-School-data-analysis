# 🎓 School Data Analysis – SQL Queries

This project contains a collection of SQL queries that analyze school and district-level data across various tables including schools, expenditures, graduation rates, and staff evaluations.

## 🗂️ Contents

- Queries filtering schools by type and city
- Pattern matching for district names
- Aggregation of school counts per city
- Average per-pupil expenditure analysis
- Schools with 100% graduation rate
- District and school-level joins for detailed insights
- Analysis of top spending districts
- Filtering based on staff evaluation performance and state

## 📋 Sample Queries Include:

- **Top 10 cities with most public schools**  
  ```sql
  SELECT "city", COUNT("name") AS "num_schools"
  FROM "schools"
  WHERE "type"= 'Public School'
  GROUP BY "city"
  ORDER BY "num_schools" DESC, "city" ASC
  LIMIT 10;

- **High-performing districts in Massachusetts with above-average spending**
 ```sql
 SELECT districts.name, expenditures.per_pupil_expenditure, staff_evaluations.exemplary
 FROM "districts"
 JOIN "expenditures" ON "expenditures"."district_id"="districts"."id"
 JOIN "staff_evaluations" ON "staff_evaluations"."district_id"="districts"."id"
 WHERE districts.type= 'Public School District' AND districts.state= 'MA'
 AND "per_pupil_expenditure"> (SELECT AVG("per_pupil_expenditure") FROM "expenditures")
 AND "exemplary"> (SELECT AVG("exemplary") FROM "staff_evaluations")
 ORDER BY "exemplary" DESC, "per_pupil_expenditure" DESC;
```

## 🛠️ Technologies
 
- SQL
- Compatible with SQLite, PostgreSQL, or similar RDBMS

## 🚀 How to Use

These queries can be executed on a relational database that includes the following tables:
- schools
- districts
- expenditures
- graduation_rates
- staff_evaluations
