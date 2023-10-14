# Use the official Node.js image as the base image
FROM node:18

# Set the working directory to /app
WORKDIR /app

# Copy prisma schema and package.json to the working directory
COPY schema.prisma /app/

# Install Prisma globally
RUN npm install -g prisma

# Expose the default port for Prisma Studio
EXPOSE 5555

# Start Prisma Studio
CMD ["prisma", "studio"]
