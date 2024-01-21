FROM golang:alpine AS builder
WORKDIR /build
COPY go.mod go.sum ./
RUN go mod download
COPY . ./
RUN CGO_ENABLED=0 GOOS=linux go build -o snippetbox ./cmd/web

FROM alpine:latest as development
WORKDIR /app
COPY --from=builder /build/snippetbox /
EXPOSE 4000
CMD ["/snippetbox"]
