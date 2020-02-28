## To export a postgresql db

# Export basic

We need to connect to the server an bring it from there. It should have the right permissions to do the taks other wise, it will be imposbile to do it

    1. Database Service: host_name  
    2. Port: 5432
    3. User: user
    4. Password: _**********_
    5. Database: database_name

```shell
pg_dump -U <user> -h <host_name> -p <port> -d <database_name> > <database_name>.pgsql
```

# Import

We use the same logic as the export, 

```shell
psql -U <user> -h <host_name> -p <port> -d <database_name> < <database_name>.pgsql
```
