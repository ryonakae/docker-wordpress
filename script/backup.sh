#!/bin/sh

# backup wp-content/uploads
docker-compose run --rm data tar cvf /backup/wp-content-uploads.tar /var/www/html/wp-content/uploads

# backup db by wp-cli
docker-compose run --rm wpcli db export /backup/db.sql --add-drop-table
