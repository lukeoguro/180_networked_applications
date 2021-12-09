# More on `SELECT`

## `LIMIT` and `OFFSET`

* `LIMIT` clause changes how many rows the query displays
* `OFFSET` clause skips the first N rows

## `DISTINCT`

* `DISTINCT` makes sure only distinct, or unique values are returned

## Functions

* Functions are ways of working with data in SQL
* Set of commands that are included in the RDBMS
* Most commonly used types are: String, Date/Time, Aggregate
* String functions
  * `length` — returns length of string
  * `trim` — removes portion of string
* Date/Time functions
  * `date_part` — returns part of the timestamp
  * `age` — calculates elapsed time
* Aggregate functions
  * `count` — returns number of values in the column
  * `sum` — *sums* numeric type values
  * `min` — returns lowest value in the column
  * `max` — returns highest value in the column
  * `avg` — returns the arithmetic mean

## `GROUP BY`

* Combines data results together
* If you include columns in the column list alongside the function (e.g., `count(id)`), they must also be included in the `GROUP BY` clause