FROM node:16-alpine
#Set working directory
WORKDIR /usr/src/app
#Copy files
COPY . .
#Install serve
RUN npm install && npm install -g serve && npm run build && adduser -D appuser
#Change ownership
USER appuser
#Expose port
EXPOSE 5000
#Run
CMD ["serve", "-s", "-l", "5000", "serve"]
