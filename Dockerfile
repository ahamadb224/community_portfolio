# Base OS image
FROM node:18-alpine

# Working directory

WORKDIR /app

# copy the code from host to container

COPY . .

# Build the code

RUN npm install && npm run build

# Expose the port

EXPOSE 3000

# Run the server

CMD ["npm","run", "dev"]

