# Stage 1: Build the backend
# Grab alpine image of node for lightweight image
FROM node:18-alpine AS build

# Set working directory in container
WORKDIR /app

# Copy and install dependencies
COPY package*.json ./
RUN npm install

# Copy all files to the working directory
COPY . .

# Stage 2: Create even smaller image and run the application
FROM node:18-alpine

WORKDIR /app

# Copy the built backend from the previous stage
COPY --from=build /app ./

# Expose port 3001
EXPOSE 3001

# Run the application
CMD ["node", "index.js"]