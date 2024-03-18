#!/usr/bin/env bash

# Exit on error.
set -e

# Load environment variables.
source /.env

echo "Creating databases..."

export PGPASSWORD=$POSTGRES_PASSWORD
POSTGRES="psql -U $POSTGRES_USER"

$POSTGRES <<-EOSQL
    CREATE DATABASE $POSTGRES_FRONTDOOR_DB OWNER "$POSTGRES_FRONTDOOR_USER";
    CREATE DATABASE $POSTGRES_KITCHEN_DB OWNER "$POSTGRES_KITCHEN_USER";
    CREATE DATABASE $POSTGRES_ORDER_DB OWNER "$POSTGRES_ORDER_USER";
    CREATE DATABASE $POSTGRES_RESTAURANT_DB OWNER "$POSTGRES_RESTAURANT_USER";
EOSQL

echo "Databases created."