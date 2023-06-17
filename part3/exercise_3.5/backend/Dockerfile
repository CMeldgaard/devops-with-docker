FROM golang:1.16

#Expose port 8080
EXPOSE 8080

#Set working directory
WORKDIR /usr/src/app

#Copy files
COPY . .

# Build and test
RUN go build
RUN go test ./...

#Set environment variables
ENV PORT=8080
ENV REQUEST_ORIGIN=https://example.com

#Create user
RUN useradd -m webservice

#Change user
USER webservice

#Run server
CMD ["./server"]
