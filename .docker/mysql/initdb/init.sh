#!/usr/bin/env bash
echo "--------------------------------------------------------"
echo "Create hiring database!"
mysql \
--user='root' \
--password=${MYSQL_ROOT_PASSWORD} \
--execute "CREATE DATABASE IF NOT EXISTS hiring CHARACTER SET utf8 COLLATE utf8_bin"

mysql --user='root' --password=${MYSQL_ROOT_PASSWORD} hiring < /docker-entrypoint-initdb.d/dump/hiring.sql
echo "--------------------------------------------------------"

