FROM golang:latest

COPY . /go/Codes/

CMD go run Codes/hello.go