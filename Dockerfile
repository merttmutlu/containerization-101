# Use the official Golang image based on Alpine Linux
FROM golang:alpine

# Set the working directory inside the container
WORKDIR /app

# Create go module into container
RUN go mod init web-app

# Copy the Go source code into the container
COPY main.go .

# Copy the HTML file into the container
COPY index.html .

# Build the Go application inside the container
RUN go build -o web-app .

# Specify the command to run the application
CMD ["./web-app"]
