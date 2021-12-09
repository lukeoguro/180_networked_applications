# Select Queries

## Syntax

```sql
SELECT column_name, ...
  FROM table_name
  WHERE condition;
```

## `ORDER BY`

* Displays in a particular sort order
* When ordering by boolean, `false` comes before `true`

## Operators

* Generally used as a part of the `WHERE` clause
* Comparison:
  * `<` is less than, `<=` is less than or equal to, etc.
  * Comparison predicates have special syntax (i.e., `IS NULL`, `IS NOT NULL`). Cannot use `WHERE column_name = NULL` because `NULL` is a special value in SQL
* Logical:
  * `AND`, `OR`, `NOT`
* String Matching:
  * `LIKE` operator
  * `%` is a wildcard operator (`_` is also a wildcard operator, but it stands for a single character)
  * Case-sensitive (`ILIKE` is case-insensitive)

## Identifiers and keywords

* Identifiers — `enabled`, `full_name`
* Keywords — `SELECT`, `FROM`
