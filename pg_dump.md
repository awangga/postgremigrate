# Using pg_dump

## Master Server
```sh
# su postgres
bash-4.1$ cd
bash-4.1$ pwd
bash-4.1$ mkdir backup
bash-4.1$ cd backup/
bash-4.1$ PG_DUMP=/usr/pgsql-9.3/
bash-4.1$ export PG_DUMP
bash-4.1$ PATH=$PG_DUMP/bin:$PATH
bash-4.1$ export PATH
bash-4.1$ pg_dump -C -h localhost -W -U postgres db_non_pertandingan > nonpertandingan.sql
Password: 
bash-4.1$ scp nonpertandingan.sql postgres@secondary.server:/tblspace_postgres
```

## Secondary Server
```sh
# su postgres
$ dropdb db_non_pertandingan
$ createdb db_non_pertandingan
$ psql -h remotehost -U remoteuser dbname < nonpertandingan.sql

```