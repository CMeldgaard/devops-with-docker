FROM golang:1.16

#Set environment variables
ENV PORT=8080
ENV REQUEST_ORIGIN=https://example.com

#Expose port 8080
EXPOSE 8080

#Set working directory
WORKDIR /usr/src/app

#Copy files
COPY . .

# Build and test
RUN go build && go test ./... && useradd -m webservice

#Change user
USER webservice

#Run server
CMD ["./server"]
