# postgremigrate
PostgreSQL Database Migration Tools

# Pre Migration
Doing before migration
## Set Root Password master server

```sh
# ssh postgres@server.master
$ psql -U postgres -d postgres -c "alter user postgres with password 'newpassword';"
```
## Create table space and database in master server

```sh
# mkdir -p postgres.postgres /tblspace_postgres/tblsp-db_non_pertandingan
# chown -R postgres.postgres /tblspace_postgres
# chmod -R 777 /tblspace_postgres
# su postgres
$ psql -h 127.0.0.1 -p 5432 -U postgres
postgres=# CREATE TABLESPACE tblspace_db_non_pertandingan OWNER postgres LOCATION '/tblspace_postgres/tblsp-db_non_pertandingan';
postgres=# CREATE DATABASE db_non_pertandingan OWNER postgres TABLESPACE tblspace_db_non_pertandingan;
```


copy file backup ke folder owner by postgres (/tblspace_postgres/)
login sebagai postgres
[root@app1-svr ~]# scp /root/db_non_pertandingan.backup postgres@10.200.0.221:/tblspace_postgres

buat schema role eoffice
postgres=# CREATE ROLE eoffice SUPERUSER;
CREATE ROLE

Import database
Login as postgres :  
$ psql -d db_non_pertandingan -f  /tblspace_postgres/db_non_pertandingan.backup

cek data nyo : 
$ psql -h 127.0.0.1 -p 5432 -U postgres
postgres=# \list
postgres=# \connect db_non_pertandingan

list table ama rows pake query : 
SELECT nspname AS schemaname,relname,reltuples
FROM pg_class C LEFT JOIN pg_namespace N ON (N.oid = C.relnamespace)
WHERE nspname NOT IN ('pg_catalog', 'information_schema') AND relkind='r'
ORDER BY reltuples DESC

