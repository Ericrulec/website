FROM golang:latest
WORKDIR /
COPY go.mod go.sum ./
COPY ./public ./views ./
RUN go mod download
COPY *.go ./
RUN CGO_ENABLED=0 GOOS=linux go build -o /main
EXPOSE 3000

CMD ["/main"]
