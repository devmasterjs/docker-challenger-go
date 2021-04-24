clear
rm -rf $(pwd)/src/main
docker run --rm -it -v $(pwd)/src:/go/src golang:alpine sh /go/src/build.sh
docker build -t full-cycle-rocks .
docker run --rm full-cycle-rocks