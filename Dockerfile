FROM node:6.10

# Create app directory
WORKDIR /app

# Install app dependencies
COPY package.json /app
RUN npm install

# Bundle application sources
COPY . /app

CMD [ "node", "server.js" ]

# Expose port on which the application is listening
