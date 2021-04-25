FROM golang:alpine AS goBuilder
WORKDIR /go/src
COPY ./src/main.go .
RUN go build main.go

FROM scratch
COPY --from=goBuilder /go/src .
CMD ["./main"]
