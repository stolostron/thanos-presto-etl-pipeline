## Presto Environment

### About

This environment will allow you to run Presto (Using docker-compose).
 
It Includes the following:

   * MariaDB
   * Hive 3.x 
   * Presto

### Prerequisite
 
Update the following configuration files with your AWS credentials:

* `etc/s3.properties`
* `hive/conf/hdfs-site.xml`
* `hive/conf/hive-site.xml`

### Running

```sh
$ docker-compose up -d
```

### Running Hive Server (optional)

```sh
$ docker-compose exec -d hive hiveserver2 
```

This will start Hive server in the background.

You could use `beeline` to connect to the server after it's up and running

```sh
$ docker-compose exec hive beeline -u jdbc:hive2://localhost:10000
```
### To create schemas and tables in Hive read the hivequery.md located in the hive directory.

### using Presto CLI

```sh
$ docker-compose exec presto presto-cli --catalog s3 --schema default
```
Use the schema created throguh the Hive Server. (In this example the schema name is metrics)

```sh
docker-compose exec presto presto-cli --catalog s3 --schema schema_name 
```

<img width="415" alt="Screen Shot 2022-08-04 at 7 37 13 AM" src="https://user-images.githubusercontent.com/89415386/182874581-184fb8a1-7370-43fa-a4de-fe96dffaaf6b.png">

Then query the table name we created in the schema.

```sh
SELECT * FROM table_name LIMIT 2;
```
And you have a table full of data! 

<img width="712" alt="Screen Shot 2022-08-04 at 7 44 24 AM" src="https://user-images.githubusercontent.com/89415386/182876227-bcd3b766-87aa-4dcc-a144-d30f11c055f3.png">
