FROM golang:1.17-alpine as builder

# Install dependencies and install/build lnd.
RUN go install google.golang.org/protobuf/cmd/protoc-gen-go@v1.26.0
RUN	go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@v1.1.0

# Install dependencies and install/build lnd.
RUN apk add --no-cache --update alpine-sdk~=1.0 \
    bash~=5.1.16  \
    protobuf-dev~=3.18.1 \
    protoc~=3.18.1

RUN mkdir /build

WORKDIR /build
