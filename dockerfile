# Use node image as builder
FROM node:18.14 AS builder
# Set working directory in the container
WORKDIR /app
# Copy package.json and package-lock.json to the container
COPY package.json package-lock.json ./
# Install dependencies
RUN npm cache clean --force
RUN npm install
# Copy the rest of the application code
COPY . .
# Build the application
RUN npm run build --prod
# Use nginx image for serving the application
FROM nginx:latest
COPY ./default.conf /etc/nginx/conf.d/default.conf
RUN rm -rf /usr/share/nginx/html/*
# Copy built application files from builder stage to nginx directory
COPY --from=builder /app/dist/project/browser /usr/share/nginx/html
EXPOSE 80