# syntax=docker/dockerfile:1

# Alpine is chosen for its small footprint
# compared to Ubuntu
FROM golang:1.16-alpine

RUN mkdir -p /api
WORKDIR /api

# Download necessary Go modules
COPY go.mod .
COPY go.sum .
RUN go mod download

COPY . .
RUN go build -o ./app ./src/main.go

EXPOSE 8080

ENTRYPOINT ["./app"]