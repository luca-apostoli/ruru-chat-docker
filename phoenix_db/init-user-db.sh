#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
    CREATE USER phoenix;
    CREATE DATABASE phoenix;
    ALTER USER "phoenix" WITH PASSWORD 'phoenix';
    GRANT ALL PRIVILEGES ON DATABASE phoenix TO phoenix;
EOSQL
