#!/bin/sh

##create .pgpass file in home dir with 600 permission and field with hostname:port:database:username:password
a=`date +"%y%m%d%H%M%S"`"db_non_pertandingan.sql.gz"
pg_dump -h 10.16.9.86 -U postgres db_non_pertandingan | gzip > ~/$a



