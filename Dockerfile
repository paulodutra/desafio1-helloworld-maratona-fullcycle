FROM golang:1.13

WORKDIR /go/src/

ADD hello.go .

ENV GOPATH="/go"\
    GOOS="linux"\
    GOROOT="/usr/local/go"

RUN go build hello.go
    
CMD ["./hello"]