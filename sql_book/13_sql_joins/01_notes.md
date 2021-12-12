# SQL Joins

## SQL Join

* SQL handles queries across more than one table through the use of JOINs
* JOINs are clauses in SQL statements that link two tables together
* General syntax:

```sql
SELECT table_nameN.column_name, ...
       FROM table_name1
       join_type JOIN table_name2
                 ON join_condition;
```

* Alternate syntax::

```sql
SELECT colors.color, shapes.shape
       FROM shapes_colors_join_table;
```

### Types of JOINs

* `INNER JOIN` returns a result set that contains the common elements of the table
  * This is the default
* `LEFT JOIN` will always include rows of the `LEFT` table, even if there is no matching row from the `RIGHT` table
* `RIGHT JOIN` is the opposite
* `FULL JOIN` is a combination of `LEFT JOIN` and `RIGHT JOIN`. In other words, all rows are included
* `CROSS JOIN` shows every combination of rows that can be joined

## Table aliasing

* Cut back on length of queries using aliasing
* `FROM users AS u`

## Subqueries

* Using the results of a `SELECT` query as a condition in another `SELECT` query
* Example:

```sql
SELECT u.full_name FROM users u
       WHERE u.id NOT IN (
           SELECT c.user_id FROM checkouts c
       );
```
