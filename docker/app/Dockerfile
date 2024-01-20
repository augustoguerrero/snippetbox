FROM golang:alpine AS builder
WORKDIR /build
COPY ./scripts/* /scripts
RUN /scripts/current-ip.sh
RUN /scripts/setarch.sh
COPY go.mod go.sum ./
RUN go mod download
COPY . ./
RUN CGO_ENABLED=0 GOOS=linux go build -o snippetbox ./cmd/web

FROM alpine:latest
WORKDIR /app
COPY --from=builder /build/snippetbox /app/
EXPOSE 4000
CMD ["./snippetbox"]
