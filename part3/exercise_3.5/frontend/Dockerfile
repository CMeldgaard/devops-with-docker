FROM node:16

#Set working directory
WORKDIR /usr/src/app

#Copy files
COPY package*.json ./

#Install dependencies
RUN npm install

#Copy files
COPY . .

#Build
RUN npm run build

#Install serve
RUN npm install -g serve
#Create user
RUN useradd -m appuser
#Change ownership
USER appuser
#Expose port
EXPOSE 5000
#Run
CMD ["serve", "-s", "-l", "5000", "build"]
