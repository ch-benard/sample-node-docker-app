#!/bin/bash

echo "Updating the variables on .env file"
envsubst < node_app/.env > node_app/.env

cd node_app
echo "Starting node application"
node index
