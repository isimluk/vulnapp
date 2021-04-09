FROM golang:alpine as go_builder

RUN apk add --no-cache git

ADD . $GOPATH/src/github.com/isimluk/shell2http
WORKDIR $GOPATH/src/github.com/isimluk/shell2http

ENV CGO_ENABLED=0
RUN go install -a -v -ldflags="-w -s" ./...

# final image
FROM quay.io/crowdstrike/detection-container

COPY entrypoint.sh /
COPY --from=go_builder /go/bin/shell2http /shell2http

EXPOSE 8080

ENTRYPOINT ["/entrypoint.sh"]
