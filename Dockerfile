FROM alpine:latest

RUN apk update
RUN apk add git make musl-dev go

ENV GOROOT /usr/lib/go
ENV GOPATH /go
ENV PATH /go/bin:PATH

RUN /bin/mkdir -p ${GOPATH}/src ${GOPATH}/bin
