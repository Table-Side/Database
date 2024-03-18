# Tableside: Postgres Backend

The custom postgres `Docker` image that sets up the users and databases necessary for the project.

## Setup

1. Add your `.env` file:
```env
# -- Root DB -- #
POSTGRES_ROOT_USER=""
POSTGRES_ROOT_PASSWORD=""

# -- Frontdoor DB -- #
POSTGRES_FRONTDOOR_USER=""
POSTGRES_FRONTDOOR_PASSWORD=""
POSTGRES_FRONTDOOR_DB="tableside_frontdoor"

# -- Kitchen DB -- #
POSTGRES_KITCHEN_USER=""
POSTGRES_KITCHEN_PASSWORD=""
POSTGRES_KITCHEN_DB="tableside_kitchen"

# -- Order DB -- #
POSTGRES_ORDER_USER=""
POSTGRES_ORDER_PASSWORD=""
POSTGRES_ORDER_DB="tableside_order"

# -- Restaurant DB -- #
POSTGRES_RESTAURANT_USER=""
POSTGRES_RESTAURANT_PASSWORD=""
POSTGRES_RESTAURANT_DB="tableside_restaurant"
```
2. Build the image: `docker build . -t tableside/database:latest`
3. Source your `.env` vars: `source .env`
4. Run the container and mount the `.env` file:
- _(Interactively)_: `docker run -e POSTGRES_USER="$POSTGRES_ROOT_USER" -e POSTGRES_PASSWORD="$POSTGRES_ROOT_PASSWORD" -v ./.env:/database/.env -it tableside/database:latest`
- _(Non-Interactively)_: `docker run -e POSTGRES_USER="$POSTGRES_ROOT_USER" -e POSTGRES_PASSWORD="$POSTGRES_ROOT_PASSWORD" -v ./.env:/database/.env tableside/database:latest`
