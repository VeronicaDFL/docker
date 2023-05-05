# Docker Practice

## Create .dockerignore

## in package.json add...
    "start": "node index.js"

## Recipe
```
# Starting with base image of node 18
FROM node:18-alpine3.16

# Setup working dir within the container
WORKDIR /src/

# Copy code from the host machine to the container
COPY . .
/Users/veronicadefelice/Desktop/readme.md
# Install dependencies
RUN npm install

# Port
EXPOSE 3000

# Run App
CMD ["npm", "start"]
```

<br>

## Cerate and Run Image

• test api => name
• 0.1 => version
• " ." => this directory

```
docker build -t "test-api":0.1 .
```

<br> 

## Run Instance
• 3005 => virtual port to access port 3000 that's in the image
```
docker run -p 3005:3000 "test-api":0.1
```

