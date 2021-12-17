#!/bin/bash

# Ressource to mongoimport
FILE=restaurants.json

if [[ -f "$FILE" ]]; then
    echo "${FILE} exists."
else
    echo "${FILE} dosen't exist, unzipping it..."
    unzip ${FILE}_.zip
fi

docker-compose exec mongodb mongoimport --db new_york --collection restaurants \
          --authenticationDatabase admin --username root --password password \
          --drop --file /home/restaurants.json