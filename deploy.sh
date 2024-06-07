# !/bin/bash

QUIT=0

while getopts 'q' flag; do
  case "${flag}" in
    q) QUIT=1 ;;
    *) break ;;
  esac
done

docker context use swarm-manager

if [[ $QUIT -eq 1 ]]
then
    echo "Removing Docker Swarm Stack..."
    docker stack rm swarm-monitor
else
    echo "Deploying Docker Swarm Stack..."
    docker stack deploy --compose-file docker-compose.yaml swarm-monitor
fi

echo "DONE"
