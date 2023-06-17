#Build stage
FROM golang:alpine as buildStage
WORKDIR /usr/src/app
COPY . .
RUN go build && \
    go test ./... . && \
    adduser -D webservice

# Server stage
FROM scratch
COPY --from=buildStage /etc/passwd /etc/passwd
COPY --from=buildStage /etc/group /etc/group
COPY --from=buildStage /usr/src/app/server /usr/src/app/server
ENV PORT=8080
ENV REQUEST_ORIGIN=https://example.com
EXPOSE 8080
USER webservice:webservice
ENTRYPOINT ["/usr/src/app/server"]
