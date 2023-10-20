FROM golang:1.21
WORKDIR /
COPY go.mod go.sum ./
RUN go mod download
COPY . ./
RUN CGO_ENABLED=0 GOOS=linux go build ./cmd/web  -o ./snippetbox
EXPOSE 4000
CMD ["/snippetbox"]