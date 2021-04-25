clear
docker build -t full-cycle-rocks .
docker image rm golang:alpine -f
docker run --rm full-cycle-rocks