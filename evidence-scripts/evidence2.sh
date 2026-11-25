#!/bin/bash
printf '\033[2J\033[H'
printf 'SESSION 02 | POSTGRESQL CONTAINER\n\n$ docker run -d --name quickbite-db -p 5432:5432 -e POSTGRES_PASSWORD=secret postgres:15-alpine\n(command executed during setup; inspect running result below)\n\n$ docker ps\n'
docker ps
printf '\n$ docker exec quickbite-db pg_isready -U postgres\n'
docker exec quickbite-db pg_isready -U postgres
printf '\n$ docker exec quickbite-db psql -U postgres -d postgres -c "SELECT version();"\n'
docker exec quickbite-db psql -U postgres -d postgres -c 'SELECT version();'
sleep infinity
