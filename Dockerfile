FROM golang:1.21

# Set destination for COPY
WORKDIR /

# Download Go modules
COPY go.mod go.sum ./
RUN go mod download

COPY . .

# Build
RUN CGO_ENABLED=0 GOOS=linux go build ./cmd/web  -o snippetbox

EXPOSE 4000

# Run
CMD ["/snippetbox"]