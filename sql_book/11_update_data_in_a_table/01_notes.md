# Update data in a table

## Updating data

* An `UPDATE` statement syntax:

```sql
UPDATE table_name
SET column_name = value, ...
WHERE expression;
```

* `WHERE` clause is optional — if omitted, PostgreSQL will update every row in the target table
* Can delete a particular piece of data by setting to `NULL`

## Deleting data

* The `DELETE` statement syntax:

```sql
DELETE FROM table_name WHERE expression;
```

* `WHERE` clause is optional once again, and will delete all rows if omitted
* You can only delete entire rows, not a particular piece of data
