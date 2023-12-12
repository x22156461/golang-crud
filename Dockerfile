# Use an official Golang runtime as a parent image
FROM golang:1.17

# Set the working directory in the container
WORKDIR /go/src/app

# Copy the local package files to the container's workspace
COPY . .

# Download and install any required third-party dependencies
RUN go get -d -v ./...

# Install your application
RUN go install -v ./...

# Expose port 8080 to the outside world
EXPOSE 80

# Command to run the executable
CMD ["app"]