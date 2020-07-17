# PostgresQL Basics in the adminitration way in AWS

After installing you must know there is basic concepts to deliver users to programes to keep the database secure even if there is no production environments, maybe you don't want to loose any data or you want to keep running the development with out issues.

## Check instalation (Client on Ubuntu-Linux)

Let´s check if there is any instalation in our system.

```shell
    command -v psql
```

It must shows something like the following path and must have ``` psql ``` at the end.
```shell
    /usr/bin/psql
```

If there is no instalation we need to proceed to install the client.
```shell
    sudo su -
    adduser postgres
    touch /etc/apt/sources.list.d/pgdg.list
    chmod 644 /etc/apt/sources.list.d/pgdg.list
    echo "deb http://apt.postgresql.org/pub/repos/apt/ bionic-pgdg main" >> /etc/apt/sources.list.d/pgdg.list
    cat /etc/apt/sources.list.d/pgdg.list
```

The exit of the last command have to be like:

```shell
    deb http://apt.postgresql.org/pub/repos/apt/ bionic-pgdg main
```

Now get the keys from postgres site:
```shell
    wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
```

OK so far? That´s cool, so let´s install it:

```shell
    sudo apt-get install -y postgresql-client-common
    sudo apt-get install -y postgresql-client-11
```

Now we have a client of ``` psql ``` installed.
```shell
    /usr/bin/psql
```

# Requirement to login 

    1. Database Service: host_name  
    2. Port: 5432
    3. User: user
    4. Password: _**********_
    5. Database: database_name

Database Service: Is where your database server is located. Based on previous creation it has to be in the cloud. 

```shell
    psql -U <user> -h <host_name> -p <port> -d <database_name>
```

For our first connection we must do it with the user postgres. Note that where are using 5432 ass a default port. Let's try.

```shell
    psql -U postgres -h aws.rds.url.endpoint.anyregion.amazon.com -p 5432 -d postgres
```

Get connected? the databases and schemas with ``` \l ``` and ``` \dn ``` command

```sql
    \l
    \dn
```

List users and tables ``` \du ``` , ``` \du+ ``` , ``` \dt ``` .

```sql
    \du 
    \du+
    \dt
```

So good so far.....?

Now, we want to create a database and an user to connect to it and we can start develop with that user, it is very important to asign the user to its data base, there is were teh development its going to happen and has to be under its domain:

```sql
    CREATE DATABASE <new_database_name>;
    CREATE user <new_user> WITH ENCRYPTED PASSWORD '****************';
    ALTER DATABASE <new_database_name> OWNER TO <new_user>;
```

Give him privileges to connect and secure the user:

```sql
    GRANT CONNECT ON DATABASE <new_database_name> TO <new_user>;
    CREATE SCHEMA <new_schema_name>;
    GRANT usage ON SCHEMA <new_schema_name> TO <new_user>;
```

Its time to lean the exit command, so you can disconnect form the database:

```sql
    \q
```

Connect with he new user:

```shell
    psql -U new_user -h aws.rds.url.endpoint.anyregion.amazon.com -p 5432 -d new_user
```

Create some starting tables

```sql
    CREATE TABLE <new_schema_name>.<table1> (...);
    CREATE TABLE <new_schema_name>.<table2> (...);
    CREATE TABLE <new_schema_name>.<table3> (...);
    ---
    ---
```

Nice! Now create developing users for our team: *You must be postgres here*, 

```sql
    CREATE user <dev_user1> WITH ENCRYPTED PASSWORD '****************';
    CREATE user <dev_user2> WITH ENCRYPTED PASSWORD '****************';
    ---
    ---
    GRANT CONNECT ON DATABASE <new_database_name> TO <dev_user1>;
    GRANT CONNECT ON DATABASE <new_database_name> TO <dev_user2>;
    ---
    ---
    GRANT usage ON SCHEMA <new_schema_name> TO <dev_user1>;
    GRANT usage ON SCHEMA <new_schema_name> TO <dev_user2>;
    ---
    ---
```

Cool, now we need to give them permision to our first tables;

```sql
    GRANT SELECT, INSERT, UPDATE, DELETE ON <new_schema_name>.<table1> TO <dev_user1>;
    GRANT SELECT, INSERT, UPDATE, DELETE ON <new_schema_name>.<table1> TO <dev_user2>;
    ---
    ---
    GRANT SELECT, INSERT, UPDATE, DELETE ON <new_schema_name>.<table2> TO <dev_user1>;
    GRANT SELECT, INSERT, UPDATE, DELETE ON <new_schema_name>.<table2> TO <dev_user2>;
    ---
    ---
```

Wow, we are all set, let me share you some commands, it depends also of how you want to manage permission to development team: 

```sql
    --- Grant SELECT, INSERT, UPDATE, DELETE on all tables
    GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA <new_schema_name> TO <dev_user1>;
    ---
    --- Grant all privileges on all tables
    GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA <new_schema_name> TO <dev_user1>;
    --- 
    --- Grant all sequences
    GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA <new_schema_name> TO <dev_user1>;
    ---
    --- Grant all privileges
    GRANT ALL PRIVILEGES ON DATABASE <new_database_name> TO <dev_user1>;
    --- 
    --- Revoke specific privileges on objects
    REVOKE DELETE, UPDATE ON <new_database_name>.<table1> FROM <dev_user1>;
    --- 
    --- Revoke all privileges
    REVOKE ALL ON <new_database_name>.<table1> FROM <dev_user1>;
    --- 
    --- Revoke public privileges
    REVOKE SELECT ON <new_database_name>.<table1> FROM PUBLIC;
    --- 
    --- Revoke create database
    ALTER USER <new_user> WITH NOCREATEDB;
```

