# Use the official Node.js image (as in the activity)
FROM node:16

# Set working directory
WORKDIR /usr/src/app

# Copy package files and install deps
COPY package*.json ./
RUN npm install

# Copy the app
COPY . .

# Expose the port
EXPOSE 3000

# Start the app
CMD ["node", "server.js"]
