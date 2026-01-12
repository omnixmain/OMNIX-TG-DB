FROM golang:1.21-alpine3.18 as builder
RUN apk update && apk upgrade --available && apk add --no-cache ca-certificates && sync
WORKDIR /app
COPY . .
RUN CGO_ENABLED=0 go build -o /app/fsb -ldflags="-w -s" ./cmd/fsb

FROM scratch
COPY --from=builder /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/
COPY --from=builder /app/fsb /app/fsb
EXPOSE ${PORT}
ENTRYPOINT ["/app/fsb", "run"]
