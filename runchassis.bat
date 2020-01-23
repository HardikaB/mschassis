echo off

echo "Starting docker network........."
docker network create ms-chassis-nw

echo "Starting consul.........."
docker-compose -f consul/docker-compose.yaml up -d

echo "Starting vault.........."
docker-compose -f vaultroot/docker-compose.yaml up -d

echo "Starting zipkin.........."
docker-compose -f zipkin/docker-compose.yaml up -d


echo "*** CHASSIS STARTED ***"
