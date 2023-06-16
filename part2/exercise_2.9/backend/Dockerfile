FROM golang:1.16

#Set environment variable
ENV REQUEST_ORIGIN=/

#Set working directory
WORKDIR /usr/src/app

#Copy rest of the files
COPY . .

#Build the app
RUN go build

#Expose port 8080
EXPOSE 8080

#Run the app
CMD ./server
