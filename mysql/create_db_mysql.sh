#!/usr/bin/env bash
#===============================================================================
#
#    AUTHOR: Eugene <eugene@symulakr.com>
#     USAGE: ./create_db_mysql.sh DB_NAME DB_USER DB_PASS
#
#===============================================================================
mysql -u $USER -p$PASS <<EOF
CREATE DATABASE $1;
GRANT ALL PRIVILEGES ON $1.* TO '$2'@'%' IDENTIFIED BY '$3';
EOF
#===============================================================================
