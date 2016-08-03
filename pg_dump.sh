#!/bin/sh

PG_DUMP=/usr/pgsql-9.3/
export PG_DUMP
PATH=$PG_DUMP/bin:$PATH
export PATH
a=`date +"%y%m%d%H%M%S"`"db_non_pertandingan.sql"
pg_dump -C -h 10.200.0.203 -W -U postgres db_non_pertandingan > $a
scp $a postgres@10.16.9.86:~


