# Base image
FROM node:14

# Set working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package.json ./
RUN npm install

# Copy the rest of the application code
COPY . .

# Install Prisma CLI
RUN npm install prisma --save-dev

# Generate Prisma client
RUN npx prisma generate

# Default command to start the application
CMD ["npm", "start"]
