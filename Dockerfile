FROM golang:alpine
WORKDIR /
COPY go.mod go.sum ./
RUN go mod download
COPY . .
RUN CGO_ENABLED=0 GOOS=linux go build -o snippetbox ./cmd/web
EXPOSE 4000
CMD ["./snippetbox"]
