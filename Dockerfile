FROM golang:1.23.6-alpine3.21

WORKDIR /app

RUN apk add --no-cache bash

COPY . .

RUN go mod tidy

RUN go install github.com/air-verse/air@latest

RUN go install golang.org/x/tools/gopls@latest

RUN go install github.com/go-delve/delve/cmd/dlv@latest

RUN go install github.com/golangci/golangci-lint/cmd/golangci-lint@latest

RUN go install golang.org/x/tools/cmd/goimports@latest

RUN go install github.com/golang/mock/mockgen@latest

RUN go install github.com/cweill/gotests/gotests@latest

CMD [ "/bin/bash" ]