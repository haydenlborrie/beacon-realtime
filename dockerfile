# Use a Node.js base image
FROM node:18

# Set working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package.json package-lock.json ./
RUN npm install --omit=dev

# Copy the rest of the app files
COPY . .

# Expose port (Socket.IO usually runs on 3000)
EXPOSE 3000

# Start the server
CMD ["node", "index.js"]
