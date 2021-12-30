FROM golang AS builder

COPY hello.go /go/src/

WORKDIR /go/src/

RUN go build hello.go

FROM scratch

COPY --from=builder /go/src/hello /

CMD ["/hello"]