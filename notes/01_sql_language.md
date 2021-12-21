# The SQL Language

## SQL

* SQL is a language used to manipulate the structure and values of datasets stored in a relational database
* It is a **special purpose language** because it is typically used only for a very specific purpose: interacting with relational databases
* SQL is predominantly a **declarative language**, because it describes what needs to be done, but not how to accomplish this task
* Consists of 3 sub-languages:
  * DDL (data definition language)
  * DML (data manipulation language)
  * DCL (data control language)
* Made of **statements** that are terminated by a semicolon
  * **Expressions** make use of operators and functions

## Database dumps

* Import file with `<` in the console or `\i` meta-command in psql.

## Keys

* **Natural key** is an existing value in the dataset that can uniquely identify each row of data in that dataset
  * In reality, most values that *seem* like they are good candidates turn out not to be
* **Surrogate key** is a value that is created solely for the purpose of identifying a row on the database
  * Auto-incrementing integer
  * **Serial** creates a sequence (a special kind of relation that generates a series of numbers), and sets `NOT NULL` and `DEFAULT nextval()` constraints.
    * Does not default `UNIQUE`
  * **PRIMARY KEY** 'constraint' adds `NOT NULL` and `UNIQUE`

## Relational data

* Relational databases are called **relational** because they persist data in a set of **relations**
* A **relation** is a table
* **Relationship** is an association between data stored in the relations

## Database diagrams

* There are three different levels of schema:
  * Conceptual: Higher level concepts. Thinking about data in a very abstract way
    * High-level design focused on identifying entities and their relationships
    * i.e. Entity-relationship model
    * Write connections with 'one' or 'many', to write one-to-one, one-to-many, and many-to-many
  * Logical: Between conceptual and physical
  * Physical: Concerned with the database-specific implementations. Includes the attribute names, data types, rules, etc.
    * Low-level database-specific design focused on implementation

## Cardinality

* **Cardinality** is the number of objects on each side of the relationship (1:1, 1:M, M:M)
* **Modality** determines if the relationship is required (1) or optional (0)
  * For the ticket <-> seat relationship, the modality for seat is 1 (the ticket needs a seat), but the modality for ticket is 0 (the seat doesn't need a ticket)

## JOINs

* `JOIN` -> `INNER JOIN`
* `LEFT JOIN` -> `LEFT OUTER JOIN`
* `RIGHT JOIN` -> `RIGHT OUTER JOIN`

## Normalization

* **Normalization** is the process of designing schema to minimize/eliminate the possible occurrence of anomalies
  * **Update anomaly** — Data inconsistency that results from data redundancy and a partial update
  * **Insertion anomaly** — Inability to add data without other data
  * **Deletion anomaly** — Unintended loss of data due to deletion of other data

## Indexing

* Mechanism that SQL engines use to speed up queries
* Can lead to slowness if applied to every column in a table
  * Best used in cases where sequential reading is inadequate (e.g., FK columns, columns used in `ORDER BY` clause)

```sql
CREATE INDEX index_name ON table_name (field_name);
```

## `EXPLAIN`

* `EXPLAIN` gives a step by step analysis of how the query will be run internally by PostgreSQL
* The structure of the plan is a node-tree — the longer the tree, the more elements there are to the query
* `EXPLAIN ANALYZE` actually runs the query and records the time each node took

## Subqueries

* Subquery expressions are a special set of operators for use specifically with subqueries
  * Useful because often times the nested query returns more than one value
  * `EXISTS` — checks if *any* row returns are returned
  * `IN` — close to `include?` in Ruby
  * `NOT IN` — opposite of `IN`
  * `ANY/SOME` — used in conjecture with `=`, `<`, `>`. Checks if the left operand satisfies *any* of the results returned by the nested query
  * `ALL` — once again, used in conjecture with `=`, `<`, `>`. Similar to above, but checks for *all*
