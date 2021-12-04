# Preparations

## Terminology

* **Relation**: A set of individual but related data entries; analogous to a database table.
* **SQL Statement**: A SQL command used to access/use the database or the data within that database via the SQL language.
* **SQL query**: A subset of an SQL Statement. A query is a way to search, or lookup data within a database, as opposed to updating or changing data.

## Installing PostgreSQL

Run the following commands:

```shell
brew update
brew doctor
brew upgrade
brew install postgres
brew tap homebrew/services
```

To start the [database server](https://www.postgresql.org/docs/9.1/server-start.html):

```shell
brew services start postgresql
```

More [here](https://launchschool.medium.com/how-to-install-postgresql-for-mac-os-x-61623df41f59).

