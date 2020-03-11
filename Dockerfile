#FROM golang:1.12.1-alpine3.9
FROM 192.168.56.10:5000/golang:1.12-alpine3.11
ENV GOPATH="/go"
RUN ["mkdir", "-p", "/go/src/github.com/rancher/demo"]
COPY * /go/src/github.com/rancher/demo/
WORKDIR /go/src/github.com/rancher/demo
RUN ["go", "build", "-o", "demo"]
CMD ["./demo"]
