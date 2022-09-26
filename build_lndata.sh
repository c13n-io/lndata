#!/usr/bin/env bash

mkdir -p artifacts/go

( cd /build && protoc --proto_path=. --go_out=artifacts/go --go_opt=paths=source_relative *.proto )
( cd /build/artifacts/go && go mod init github.com/c13n-io/lndata-go && go mod tidy )