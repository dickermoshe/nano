# NOde 20
FROM node:20

# Create app directory
WORKDIR /app

# Install app dependencies
COPY package.json /app
RUN npm install

# Bundle app source
COPY . /app

# Expose port
EXPOSE 3000

# Build and start the app
CMD ["npm", "start"]
