FROM node:16

#Set environment variable
ENV REACT_APP_BACKEND_URL=/api/

#Set working directory
WORKDIR /usr/src/app

#Copy package.json and package-lock.json
COPY package*.json ./

#Install dependencies
RUN npm install

#Copy the rest of the files
COPY . .

#Build the app
RUN npm run build
RUN npm install -g serve

#Expose port 5000
EXPOSE 5000

#Run the app
CMD ["serve", "-s", "-l", "5000", "build"]
