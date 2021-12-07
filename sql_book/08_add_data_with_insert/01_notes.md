# Inserting Data into a Table

## DML statements

* `INSERT` — Add new data
* `SELECT` — Retrieve existing data (also referred to as queries)
* `UPDATE` — Update existing data
* `DELETE` — Delete existing data

## CRUD

* `CRUD` is a common acronym that stands for Create, Read, Update, Delete
* Analogous to `INSERT`, `SELECT`, `UPDATE`, `DELETE`

## Adding rows

For a single row:

```sql
INSERT INTO table_name
            (column1_name, column2_name,...)
     VALUES (data_for_column1, data_for_column2, ...);
```

For multiple rows:

```sql
INSERT INTO table_name
            (column1_name, ...)
     VALUES (data_for_column1, ...), (data_for_column1, ...);
```

* If a value is not specified, SQL will try to insert `null`

## `UNIQUE` constraint

* `UNIQUE` creates an index (e.g., `users_id_key`)

## `CHECK` constraints

* Check constraints limit the type of data that can be included in a column

```sql
ALTER TABLE users ADD CHECK ();
```

## Tips

* `<>` is a SQL operator for not equal
* A single quote is used as escape (e.g., `'O''Leary'`)
