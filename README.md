# debug-neo4j-logging

### Expected result
  All log events are written to stdout

### Actual result
  Most log events are written to `/logs/debug.log`

## Setup and execute
Build the docker image:

    docker build -t debug-neo4j:latest  -f Dockerfile .

Start the server

    docker run --rm -it --name debug-neo4j debug-neo4j:latest

Attach a shell to the running container

    docker exec -it debug-neo4j /bin/bash
