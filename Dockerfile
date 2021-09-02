FROM node:alpine as builder
WORKDIR '/app'
COPY package.json .
RUN npm install
COPY . .
RUN npm run build

# all the build files are in /app/build

FROM nginx

# put the expose 80 here means nothing for us as developers,  for AWS elastic bean, it is going to look at 
# this port, compose it and utilize it
EXPOSE 80

# In second stage, we will copy the files from builder stage , and the folder we want to copu is /app/build
COPY --from=builder /app/build /usr/share/nginx/html