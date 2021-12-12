# Table relationships

## Normalization

* The *mechanism* for carrying out normalization is arranging data in multiple tables (splitting up data across multiple different tables) and defining (creating) relationships between them
* The *reason* for normalization is to reduce data redundancy (duplication) and improve data integrity
* At a high level, the process of database design involves defining **entities** to represent different sorts of data and designing **relationships** between those entities
  * **Entity** represents a real world object (can be identified as major nouns)
  * **Relationships** connect entities
    * An Entity Relationship Diagram, or ERD, is a graphical representation of entities and their relationships to each other, and is a commonly used tool within database design

## Keys

* This is how relationships are implemented in terms of the table schema
* Keys are a special type of constraint used to establish relationships and uniqueness
  * They can be used to identify a specific row in a current table, or to refer to a specific row in another table
* A **primary key** is a unique identifier for a row of data
  * `PRIMARY KEY` is essentially equivalent to `NOT NULL` and `UNIQUE`
* A **foreign key** allows us to associate a row in one table to a row in another table
  * Done by setting a column in one table as a Foreign Key and having that column reference another table's Primary Key
  * This ensures the referential integrity of a relationship — assurance that a column value within a record must reference an existing value
  * It won't let you add a value to the Foreign Key column if the Primary Key column doesn't already contain that value
  * FK has a `ON DELETE` clause — `CASCADE` sets it so that if the row being referenced is deleted, the current row is also deleted

## Types of relationships

* One-to-one relationship makes sure that an entity instance in one table can only be associated with one entity instance in another table
  * `id` that is the PK of the `users` table is used as the FK and PK of the `addresses` table
* One-to-many exists if entity in one table can be associated with multiple of another table (the opposite relationship does not exist)
  * PK and FK reference different columns
* Many-to-many relationships exist between two entities if for one entity there may be multiple records in the other table, and vice versa
  * A third, cross-reference is necessary with two FKs — PK of table 1 and PK of table 2
