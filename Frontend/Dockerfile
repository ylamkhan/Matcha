# Use an official Node.js image as the base
FROM node:18-alpine 

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install 

# Copy the rest of the application
COPY . .

# Expose the port (Vite uses 5173, CRA uses 3000)
EXPOSE 3000 

# Start the React app
CMD ["npm", "start"]
