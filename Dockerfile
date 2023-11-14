FROM golang:1.21.4-alpine
WORKDIR /
COPY go.mod go.sum ./
RUN go mod download
COPY . ./
RUN CGO_ENABLED=0 GOOS=linux go build ./cmd/web
EXPOSE 4000
CMD ["./web"]