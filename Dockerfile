# Use the official lightweight Node.js 18 image on Alpine Linux
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package files first to leverage Docker cache for dependencies
COPY package*.json ./

# Install only production dependencies
RUN npm ci --only=production

# Copy the rest of your application source code into the container
COPY . .

# Expose the port your Node.js app runs on
EXPOSE 3000

# Define the command to run your app
CMD ["node", "app.js"]