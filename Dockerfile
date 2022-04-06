FROM node:14.16-slim

# Create app directory
WORKDIR /app

# Installing dependencies
COPY package.json ./
COPY package-lock.json ./
RUN npm install --silent

# Copying source files
COPY . ./

EXPOSE 3000

# Running the app
CMD ["npm", "run", "dev"]