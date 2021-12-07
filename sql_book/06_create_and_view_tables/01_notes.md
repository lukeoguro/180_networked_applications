# Create and view tables

## Tables

* Use the `CREATE TABLE table_name()` SQL statement
* Place column definitions between the parentheses
* Basic format is the following:

```sql
CREATE TABLE table_name (
    column_1_name column_1_data_type [constraints, ...],
    column_2_name column_2_data_type [constraints, ...],
    .
    .
    .
    constraints
);
```

* For instance:

```sql
CREATE TABLE users (
       id serial UNIQUE NOT NULL,
       username char(25),
       enabled boolean DEFAULT TRUE
);
```

* `id`, `username`, `enabled` are the three columns
* `serial`, `char(25)`, `boolean` are the three data types
* `UNIQUE`, `NOT NULL` ar constraints
* `DEFAULT TRUE` specifies a default value for the column
* Each column definition is comma separated

### Data types

* A data type classifies particular values that are allowed for that column

### Keys and constraints

* Rules that define what data values are allowed in certain columns

## Tips

* `\dt` shows list of all tables
* `\d table_name` shows more detailed information about the table
* Think about indexes as a way of storing a quick-reference to values in a particular column
