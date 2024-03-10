# Use a Node.js base image
FROM node:14

# Set the working directory
WORKDIR /usr/src/app

# Install http-server globally
RUN npm install -g http-server

# Copy the index.html and css folder
COPY index.html .
COPY css css/

# Expose port 8080
EXPOSE 8080

# Start http-server
CMD ["http-server", "-p", "8080"]