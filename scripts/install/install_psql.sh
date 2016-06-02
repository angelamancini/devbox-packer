#!/bin/bash -eux

echo "update yum"
yum update -y

yum -y install postgresql-server postgresql-contrib postgresql-devel postgresql-libs

echo "setup the DB"
postgresql-setup initdb

echo "enable psql service"
systemctl enable postgresql

echo "start psql service"
systemctl start postgresql


echo "login and make user"
su - postgres <<- 'EOF'
  psql
  CREATE ROLE vagrant LOGIN password '';
  ALTER ROLE vagrant WITH CREATEDB;
  CREATE DATABASE vagrant ENCODING 'UTF8' OWNER vagrant;

  \q

  exit
EOF

echo "change pg_hba.conf to not suck so bad"
sed -i 's/ident/trust/' /var/lib/pgsql/data/pg_hba.conf
sed -i 's/peer/trust/' /var/lib/pgsql/data/pg_hba.conf

echo "Finished installing & configuring psql."
