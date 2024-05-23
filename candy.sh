#!/bin/bash
# Membuat database candy dan mengimpor file SQL
mysql -u root -p"admin" <<MYSQL_SCRIPT
CREATE DATABASE IF NOT EXISTS candy;
USE candy;
SOURCE /home/otomasi/candy.sql;
MYSQL_SCRIPT

echo "Database candy telah dibuat dan file candy.sql telah diimpor."
