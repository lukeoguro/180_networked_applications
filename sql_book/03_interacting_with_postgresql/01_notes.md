# Interacting with PostgreSQL

## Client-server database

* Many interfaces that can be used to interact with a RDBMS such as PostgreSQL
  * through a programming language
  * through a GUI application that allows access and administration
  * through the command-line interface
* They all issue a request, or declaration, and receive a response in return

## PostgreSQL Client Applications

* PostgreSQL comes packaged with a number of what are called 'client applications'.
* These client applications are used to interact with PostgreSQL in various ways by issuing a command via the command line.
* Some of these client applications are essentially wrappers around SQL commands.
  * For instance, `createdb` is a wrapper around the SQL command `CREATE DATABASE`.

## `psql`

* `psql` is a PostgreSQL interactive console, or a terminal-based front-end to PostgreSQL
* It allows you to write queries in SQL syntax, issue those queries to a PostgreSQL database, and see the results of those queries in the terminal window
* In that sense the `psql` console is essentially a REPL; you may already be familiar with other REPLs, such as IRB.

The following command tells PostgreSQL to open the `psql` console and connect to the 'postgres' database.

```shell
psql postgres
```

You can issue:

* `psql` console meta-commands
* SQL statements using standard SQL syntax

### Meta-commands

* Meta-commands can be used for a number of different things, such as connecting to a different database, listing tables, setting environment variables, etc.
* Syntax is a backslash `\` followed by the command and any optional arguments. One example would be `\conninfo`

### SQL statements

* SQL statements always terminate in a semi-colon.

## SQL Sub-languages

SQL can be thought of as comprising of three separate sub-languages, each concerned with a specific aspect of manipulating or interacting with a database.

* **DDL — Data Definition Language**: Used to define the structure of a database and the tables and columns within it.
* **DML — Data Manipulation Language**: Used to retrieve or modify data stored in a database. SELECT queries are part of DML.
* **DCL — Data Control Language**: Used to determine what various users are allowed to do when interacting with a database.
